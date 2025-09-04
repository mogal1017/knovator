import React, { useState, useEffect } from "react";
// import { AvForm, AvField } from "availity-reactstrap-validation";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { fetchData } from "../../services/fetchData";
import { useNavigate, useParams } from "react-router-dom";
import { toast } from "react-toastify";
// import { LoaderCreatePage } from "../Loader/Loader";
// import { formContentContainer, loaderOverlay } from "../../Style/loaderOverly";
import CustomForm from "../../basic_components/Forms/CustomForm";
import BasicInput from "../../basic_components/Components/BasicInput";
import BasicCheckbox from "../../basic_components/Components/BasicCheckbox";
import BasicButton from "../../basic_components/Components/BasicButton";


export default function ActionMasterCreate({ router }) {
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(id ? true : false);
  

  const [formData, setFormData] = useState({
    service_name: "",
    mobileValue: "",
    email: "",
    is_active: "",
  });
  useEffect(() => {
    getData(id);
  }, []);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "service_masters",
        whereCondition: {
          is_active: 1,
        },
      };

      if (id) {
        payload.whereCondition = { id: id };
      }

      const responseData = await fetchData("getMasterList", payload);
      if (responseData.data && responseData.data.length > 0) {
        if (id) {
          setFormData(responseData.data[0]);
        }
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };

  const handleTextChange = (e) => {
    const { name, value, type, checked } = e.target;

    if (name === "is_active") {
      setFormData((prevValues) => ({
        ...prevValues,
        is_active: checked ? 1 : 0, // Set as 1 or 0 based on the checkbox status
      }));
    } else {
      setFormData((prevValues) => ({
        ...prevValues,
        [name]: value,
      }));
    }
  };

  const handleBackClick = () => {
    navigate("/action-master-list");
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!formData.service_name) {
      return toast.warning("All fields are required!");
    }
    try {
      setLoadingData(true);
      var payload = {
        modelName: "service_masters",
        inputData: formData,
      };
      if (id) {
        payload.id = id;
      }
      console.log("payload of the form====>", payload);
      return false;
      const responseData = await fetchData("createAndUpdateMaster", payload);

      if (responseData.code == 1) {
        toast.success("Action Service saved successfully!");
        navigate("/action-master-list");
      } else {
        toast.error("Error while saving Action Service!");
        navigate("/action-master-list");
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };

  



  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid={true}>
          <Breadcrumbs
            title="CREATE SERVICE"
            breadcrumbItems={breadcrumbItems}
          />
          <CustomForm onSubmit={handleSubmit}>
            <Card>
              <CardBody>
                <Row md={12}>
                  <Col md={6}>
                    <BasicInput
                        type="text"
                        name="service_name"
                        label="Service Name"
                        value={formData.service_name}
                        placeholder="Enter Action Service Name"
                        onChange={handleTextChange}
                        style={{ padding: "10px" }}
                      />
                  </Col>
                  <Col md={6}>
                    <BasicInput
                      type="tel"
                      label="Mobile Number"
                      name="mobileValue"
                      value={formData.mobileValue}
                      onChange={handleTextChange}
                      length={10}
                      className="mobile-input"
                      style={{ padding: "10px" }}
                      // labelStyle={{ padding: '10px' }}
                      placeholder="Enter your mobile number"
                      prefix={["+91","+1"]} // Pass the prefix for the mobile number
                      // error={mobileError}
                      validate={{ required: { value: true } }}
                    />
                  </Col>
                </Row>
                <Row>
                  <Col md={6}>
                    <BasicInput
                      type="email"
                      name="email"
                      label="Email"
                      value={formData.email}
                      placeholder=""
                      onChange={handleTextChange}
                      style={{ padding: "10px" }}
                      postfix={"@gmail.com"}
                      // length={10}
                    />
                  </Col>
                </Row>
                <Row>
                  <Col md={6}>
                    <BasicCheckbox
                      name="is_active"
                      values={formData.is_active}
                      onChange={handleTextChange}
                      checked={true}
                      options={["Is Active"]}
                      className="form-group ml-2"
                    ></BasicCheckbox>
                  </Col>
                </Row>
                <BasicButton
                  label="Submit"
                  className="btn btn-primary"
                  onClick={handleSubmit}
                ></BasicButton>
                <BasicButton
                  label="Back"
                  className="btn btn-primary mx-2"
                  onClick={handleBackClick}
                ></BasicButton>
              </CardBody>
            </Card>
          </CustomForm>
        </Container>

        

      </div>
    </React.Fragment>
  );
}
