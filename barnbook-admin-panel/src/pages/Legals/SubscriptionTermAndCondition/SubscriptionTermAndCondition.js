import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";

import Breadcrumbs from "../../../components/Common/Breadcrumb";
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
import BasicTextArea from "../../../basic_components/Components/BasicTextArea";
import { fetchData } from "../../../services/fetchData";
import { toast } from "react-toastify";


export default function SubscriptionTermAndCondition() {
  const [breadcrumbItems] = useState([{ title: "", link: "#" }]);
  const navigate = useNavigate();

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
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const data = responseData.data[0];
        setEditorData(data.subscription_term_and_condition);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  const handleEditorChange = (e) => {
    setEditorData(e.target.value);
  };
  

  const handleButtonClick = async () => {
    
    try {
      const payload = {
        modelName: "terms_and_condition_masters",
        id: 1,
        inputData: {
          subscription_term_and_condition: editorData,
        },
      };
      console.log("payload for the CK editor in Subscription Terms and Condition===>", payload);
      const responseData = await fetchData(
        "api/masters/saveRecords",
        payload
      );
      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/dashboard");
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
            title="Subscription Terms and Condition"
            breadcrumbItems={breadcrumbItems}
          />
          <Row>
            <Col>
              <Card>
                <CardHeader className="align-items-center d-flex">
                  <h4 className="card-title mb-0">Subscription Terms and Condition Editor</h4>
                </CardHeader>
                <CardBody>
                  <Form method="post">
                    <BasicTextArea 
                      label="Enter Terms and Conditions"
                      value={editorData}
                      className={"form-control"}
                      rows={6}
                      onChange={handleEditorChange} // Updates state on change
                      // cols={150}
                      divClassName="col-md-8"
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
