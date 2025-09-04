import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import {
  Form,
  Card,
  CardBody,
  Col,
  Row,
  Container,
  CardHeader,
  Button,
} from "reactstrap";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { fetchData } from "../../../services/fetchData";
import { toast } from "react-toastify";

export default function TermsAndConditionMasterList() {
  const navigate = useNavigate();

  const [breadcrumbItems] = useState([{ title: "", link: "#" }]);
  const [editorData, setEditorData] = useState("");

  useEffect(() => {
    getData();
  }, []);

  const getData = async () => {
    try {
      let payload = {
        modelName: "terms_and_condition_masters",
        "id": 1,
      };
      const responseData = await fetchData("/api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const data = responseData.data[0];
        setEditorData(data.terms_and_condition);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  // Function to wrap the editor data with HTML structure
  const formatHtmlResponse = (content) => {
    return `<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Terms & Conditions</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                line-height: 1.6;
                margin: 0;
                padding: 20px;
                background-color: #f9f9f9;
            }
            h1 {
                font-size: 24px;
                margin-bottom: 10px;
            }
            p {
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        ${content}
    </body>
    </html>`;
  };

  const handleButtonClick = async () => {
    const formattedContent = formatHtmlResponse(editorData);
    try {
      const payload = {
        modelName: "terms_and_condition_masters",
        id: 1,
        inputData: {
          terms_and_condition: formattedContent,
        },
      };
      console.log(
        "Formatted payload for the CK editor in Terms and Conditions ===>",
        payload
      );
      const responseData = await fetchData(
        "api/masters/saveRecords",
        payload
      );
      if (responseData.code === 1) {
        navigate("/dashboard");

        toast.success(responseData.message);
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      console.error("Error updating free trial days:", error);
    }
  };

  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid={true}>
          <Breadcrumbs
            title="Terms and Condition"
            breadcrumbItems={breadcrumbItems}
          />
          <Row>
            <Col>
              <Card>
                <CardHeader className="align-items-center d-flex">
                  <h4 className="card-title mb-0">
                    Terms and Condition Editor
                  </h4>
                </CardHeader>
                <CardBody>
                  <Form method="post">
                    <CKEditor
                      editor={ClassicEditor}
                      data={editorData}
                      config={{
                        toolbar: [
                          "heading",
                          "|",
                          "bold",
                          "italic",
                          "link",
                          "bulletedList",
                          "numberedList",
                          "blockQuote",
                          "insertTable",
                          "undo",
                          "redo",
                        ],
                      }}
                      onChange={(event, editor) => {
                        const data = editor.getData();
                        setEditorData(data);
                      }}
                    />
                    <Button
                      color="primary"
                      onClick={handleButtonClick}
                      className="mt-3"
                    >
                      Submit
                    </Button>
                  </Form>
                </CardBody>
              </Card>
            </Col>
          </Row>
        </Container>
      </div>
    </React.Fragment>
  );
}
