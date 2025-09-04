import React, { useState, useEffect } from "react";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { fetchData } from "../../../services/fetchData";
import { useNavigate, useParams } from "react-router-dom";
import { toast } from "react-toastify";
import CustomForm from "../../../basic_components/Forms/CustomForm";
import BasicInput from "../../../basic_components/Components/BasicInput";
import BasicButton from "../../../basic_components/Components/BasicButton";
import BasicSelect from "../../../basic_components/Components/BasicSelect";
import BasicToggle from "../../../basic_components/Components/BasicToggle";

export default function StateMasterCreate() {
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(!!id);
  const [formData, setFormData] = useState({
    country_id: "",
    state_name: "",
    is_active: "Active", // Add is_active to formData
  });
  const [validationErrors, setValidationErrors] = useState({});

  const [ ddData, setDdData] = useState([]);

  

  useEffect(() => {
    if (id){getData(id);} 
    getddData();
  }, [id]);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "state_masters",
        whereCondition: { id },
        relations: [
          {
            module: "country_masters",
            moduleAs: "country_masters"
          }
      ]
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const data = responseData.data[0];
        setFormData({
          country_id: data.country_masters.id,
          state_name: data.state_name,
          is_active: data.is_active === "Active", // Set initial active status
        });
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };
  
  const getddData = async (id) => {
    try {
      const payload = {
        modelName: "country_masters",
        whereCondition:{
          is_active: "Active"
        }
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const options = responseData.data.map((item) => ({
          value: item.id,
          label: item.country_name
        }));
        setDdData(options);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };

  const handleTextChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSelectChange = (selectedValue) => {
    setFormData((prev) => ({ ...prev, country_id: selectedValue }));
  };

  const handleBackClick = () => navigate("/state-master");

  const handleStatusToggle = () => {
    setFormData((prev) => ({ ...prev, is_active: !prev.is_active }));
  };

  const validateForm = () => {
    const errors = {};
    const specialCharacterRegex = /^[a-zA-Z0-9\s]+$/; // Allows only letters, numbers, and spaces

    if (!formData.state_name) {
      errors.state_name = "State name is required.";
    } else if (!specialCharacterRegex.test(formData.state_name)) {
      errors.state_name = "State name must not contain special characters.";
    }if (!formData.country_id) {
      errors.country_id = "Country name is required.";
    }
    return errors;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const errors = validateForm();
    setValidationErrors(errors);

    if (Object.keys(errors).length > 0) {
      toast.warning("Please correct the errors before submitting.");
      return;
    }
    try {
      setLoadingData(true);
      const payload = {
        modelName: "state_masters",
        inputData: {
          state_name: formData.state_name,
          country_id: formData.country_id,
          is_active: formData.is_active ? "Active" : "Inactive", // Using formData.is_active here
        },
      };
      if (id) {
        payload.id = id;
      }
      console.log("Payload:", payload);
      const responseData = await fetchData("api/masters/saveRecords", payload);
      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/state-master");
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      console.error("Error submitting data:", error);
    } finally {
      setLoadingData(false);
    }
  };
  
  
  return (
    <div className="page-content">
      <Container fluid>
        <Breadcrumbs title="Create State" breadcrumbItems={breadcrumbItems} />
        <CustomForm onSubmit={handleSubmit}>
          <Card>
            <CardBody>
              <Row>
                <Col md={6}>
                  <BasicSelect
                    name="country_id"
                    label="Country Name"
                    value={formData.country_id}
                    error={validationErrors.country_id}
                      className={`form-control ${
                        validationErrors.country_id ? "is-invalid" : ""
                      }`}
                    options={ddData}
                    placeholder="Country Name"
                    onChange={(e) => handleSelectChange(e.target.value)}
                    style={{ padding: "10px" }}
                    divClassName={"col-md-12"}
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <BasicInput 
                      label="State Name"
                      name="state_name"
                      value={formData.state_name}
                      error={validationErrors.state_name}
                      className={`form-control ${
                        validationErrors.state_name ? "is-invalid" : ""
                      }`}
                      onChange={handleTextChange}
                      placeholder="Enter State Name"
                      style={{ padding: "10px" }}
                      divClassName={"col-md-12"}
                  />
                </Col>
              </Row>
              {id && (
                <Row>
                  <Col md={6} className="mt-3">
                  <div>
                  <label>Status:</label>
                    <BasicToggle
                      isActive={formData.is_active} // Updated prop name to match BasicToggle
                      onToggle={handleStatusToggle}
                      onLabel="Active"
                      offLabel="Inactive"
                    />
                  </div>
                  </Col>
                </Row>
              )}
              <Row>
                <Col md={6}>
                  <BasicButton
                    label="Submit"
                    className="btn btn-primary mt-3"
                    onClick={handleSubmit}
                  />
                  <BasicButton
                    label="Back"
                    className="btn btn-secondary mx-2 mt-3"
                    onClick={handleBackClick}
                  />
                </Col>
              </Row>
            </CardBody>
          </Card>
        </CustomForm>
      </Container>
    </div>
  )
}
