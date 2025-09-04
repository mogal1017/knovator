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

export default function BreedMasterCreate() {
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(!!id);
  const [formData, setFormData] = useState({
    animal_category_id: "",
    breed_name: "",
    is_active: "Active", // default status set as inactive
  });
  // const [isActive, setIsActive] = useState(true); // State for active/inactive status
  const [validationErrors, setValidationErrors] = useState({});

  const [ ddData, setDdData] = useState([]);

  useEffect(() => {
    if (id) {
      getData(id);
    }
    getddData();
  }, [id]);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "breed_masters",
        whereCondition: { id },
        relations: [
          {
            module: "animal_categories",
            moduleAs: "animal_categories",
          },
        ],
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const data = responseData.data[0];
  
        setFormData({
          animal_category_id: data.animal_categories.id, // Ensure this is the correct key
          breed_name: data.breed_name,
          is_active: data.is_active === "Active",
        });
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };
  
  const getddData = async () => {
    try {
      const payload = {
        modelName: "animal_categories",
        // whereCondition: {
        //   is_active: "Active",
        // },
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.data && responseData.data.length > 0) {
        const options = responseData.data.map((item) => ({
          value: item.id,
          label: item.category || "Unnamed Category",
        }));
        setDdData(options);
      }
    } catch (error) {
      console.error("Error fetching dropdown data:", error);
    }
  };
  const handleTextChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSelectChange = (selectedValue) => {
    setFormData((prev) => ({ ...prev, animal_category_id: selectedValue }));
  };

  const handleBackClick = () => navigate("/breed-master");

  const validateForm = () => {
    const errors = {};
    const specialCharacterRegex = /^[a-zA-Z0-9\s]+$/; // Allows only letters, numbers, and spaces

    if (!formData.breed_name) {
      errors.breed_name = "Breed name is required.";
    } else if (!specialCharacterRegex.test(formData.breed_name)) {
      errors.breed_name = "Breed name must not contain special characters.";
    }
    if (!formData.animal_category_id) {
      errors.animal_category_id = "Animal Category is required.";
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
  
      // Structure payload with animal_category_id and breed_name
      const payload = {
        modelName: "breed_masters",
        inputData: {
          breed_name: formData.breed_name,
          animal_category_id: formData.animal_category_id,
          is_active: formData.is_active ? "Active" : "Inactive",
        },
      };
  
      // Include `id` if updating an existing record
      if (id) {
        payload.id = id;
      }
  
      // console.log("Payload:", payload);
      // return false;
      // Uncomment below to send data
      const responseData = await fetchData("api/masters/saveRecords", payload);
      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/breed-master");
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      console.error("Error submitting data:", error);
    } finally {
      setLoadingData(false);
    }
  };
  const handleStatusToggle = () => {
    setFormData((prev) => ({ ...prev, is_active: !prev.is_active }));
  };
  

  return (
    <div className="page-content">
      <Container fluid>
        <Breadcrumbs title="Create Animal Breed" breadcrumbItems={breadcrumbItems} />
        <CustomForm onSubmit={handleSubmit}>
          <Card>
            <CardBody>
              <Row>
                <Col md={6}>
                <BasicSelect
                    name="animal_category"
                    label="Animal Category"
                    value={formData.animal_category_id} // Ensure this matches the fetched data
                    options={ddData}
                    error={validationErrors.animal_category_id}
                    className={`form-control ${
                      validationErrors.animal_category_id ? "is-invalid" : ""
                    }`}
                    placeholder="Category Name"
                    onChange={(e) => handleSelectChange(e.target.value)}
                    style={{ padding: "10px" }}
                    divClassName={"col-md-12"}
                  />

                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <BasicInput 
                      label="Breed Name"
                      name="breed_name"
                      value={formData.breed_name}
                      error={validationErrors.breed_name}
                      className={`form-control ${
                        validationErrors.breed_name ? "is-invalid" : ""
                      }`}
                      onChange={handleTextChange}
                      placeholder="Enter Breed Name"
                      style={{ padding: "10px" }}
                      divClassName={"col-md-12"}
                  />
                </Col>
              </Row>
              {id && (
                <Row>
                  <Col md={6} className="mt-3">
                  <div className="mt-3 ml-2">
                    {/* <div className="mt-3 ml-2"> */}
                    <label>Status:</label>
                    <BasicToggle
                      isActive={formData.is_active} // Updated prop name to match BasicToggle
                      onToggle={handleStatusToggle}
                      onLabel="Active"
                      offLabel="Inactive"
                    />
                    {/* </div> */}
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
  );
}
