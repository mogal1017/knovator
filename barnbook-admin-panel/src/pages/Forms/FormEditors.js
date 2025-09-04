import React, { useState } from "react";
import { Form, Card, CardBody, Col, Row, Container, CardHeader, Button } from "reactstrap";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";

//Import Breadcrumb
import Breadcrumbs from '../../components/Common/Breadcrumb';

const FormEditors = () => {
  const [breadcrumbItems] = useState([
    { title: "Forms", link: "#" },
    { title: "Form Editors", link: "#" }
  ]);

  const [editorData, setEditorData] = useState("<p>Hello from CKEditor 5!</p>");

  const handleButtonClick = () => {
    console.log("Entered data:", editorData);
  };

  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid={true}>
          <Breadcrumbs title="Form Editor" breadcrumbItems={breadcrumbItems} />
          <Row>
            <Col>
              <Card>
                <CardHeader className="align-items-center d-flex">
                  <h4 className="card-title mb-0">Ckeditor Classic Editor</h4>
                </CardHeader>
                <CardBody>
                  <Form method="post">
                    <CKEditor
                      editor={ClassicEditor}
                      data={editorData}
                      config={{
                        ckfinder: {
                          // Enables Base64 image upload
                          uploadUrl: '/uploads', // URL for server-side upload handling if needed
                        },
                        toolbar: [
                          'heading', '|', 'bold', 'italic', 'imageUpload','link', 'bulletedList', 'numberedList', 'blockQuote',
                          'insertTable', 'mediaEmbed', 'undo', 'redo'  // Adding image upload to the toolbar
                        ],
                        image: {
                          // Configure image to be responsive in the editor
                          toolbar: ['imageTextAlternative', 'imageStyle:full', 'imageStyle:side'],
                        },
                      }}
                      onChange={(event, editor) => {
                        const data = editor.getData();
                        setEditorData(data);
                      }}
                    />
                    <Button color="primary" onClick={handleButtonClick} className="mt-3">
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
};

export default FormEditors;
