import React, { useState, useEffect } from "react";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { fetchData } from "../../../services/fetchData";
import { useNavigate, useParams } from "react-router-dom";
import { toast } from "react-toastify";
import CustomForm from "../../../basic_components/Forms/CustomForm";
import BasicInput from "../../../basic_components/Components/BasicInput";
import BasicButton from "../../../basic_components/Components/BasicButton";
import BasicToggle from "../../../basic_components/Components/BasicToggle";

export default function CountryMasterCreate() {
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(!!id);
  const [formData, setFormData] = useState({
    country_name: "",
    country_code: "",
    country_icon: null,
    is_active: "Active", // default status set as inactive
  });
  const [categoryIcon, setCategoryIcon] = useState(null);
  const [iconPreview, setIconPreview] = useState(null);
  const [iconBase64, setIconBase64] = useState(null);
  const [validationErrors, setValidationErrors] = useState({});

  useEffect(() => {
    if (id) getData(id);
  }, [id]);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "country_masters",
        whereCondition: { id },
      };

      const responseData = await fetchData("api/masters/getCountryListing", payload);
      if (responseData.code === 1 && responseData.data && responseData.data.length > 0) {
        const record = responseData.data[0];

        // Set form data based on fetched record
        setFormData({
          country_name: record.country_name || "",
          country_code: record.country_calling_code || "",
          country_icon: record.flag_icon || null,
          is_active: record.is_active === "Active", // Convert to boolean
        });

        if (record.flag_icon) {
          const fullImageUrl = `${process.env.REACT_APP_BARNBOOK_API}${record.flag_icon}`;
          setIconPreview(fullImageUrl);
        }
      } else {
        toast.error("No record found!");
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setLoadingData(false);
    }
  };

  const handleTextChange = (e) => {
    const { name, value } = e.target;
    if (name === "country_code") {
      const sanitizedValue = value.replace(/[^0-9+]/g, "");
      setFormData((prev) => ({ ...prev, [name]: sanitizedValue }));
    } else {
      setFormData((prev) => ({ ...prev, [name]: value }));
    }
  };

  const handleBackClick = () => navigate("/country-master");

  const handleIconChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      // Validate MIME type for SVG
      if (file.type !== "image/svg+xml") {
        toast.warning("Please select a valid SVG file.");
        setIconPreview(null);
        setCategoryIcon(null);
        setIconBase64(null);
        return;
      }
  
      const img = new Image();
      img.src = URL.createObjectURL(file);
  
      img.onload = () => {
        const maxWidth = 77;
        const maxHeight = 77;
  
        if (img.width <= maxWidth && img.height <= maxHeight) {
          setCategoryIcon(file);
          setIconPreview(img.src);
  
          const reader = new FileReader();
          reader.onloadend = () => {
            setIconBase64(reader.result);
            setFormData((prev) => ({ ...prev, category_icon: reader.result }));
          };
          reader.readAsDataURL(file);
        } else {
          toast.warning(
            `Please select an SVG image with dimensions ${maxWidth}x${maxHeight}px or smaller.`
          );
          setIconPreview(null);
          setCategoryIcon(null);
          setIconBase64(null);
        }
      };
    }
  };
  

  const validateForm = () => {
    const errors = {};
    const specialCharacterRegex = /^[a-zA-Z0-9\s]+$/; // Allows only letters, numbers, and spaces

    if (!formData.country_name) {
      errors.country_name = "Country name is required.";
    } else if (!specialCharacterRegex.test(formData.country_name)) {
      errors.category_name = "Country name must not contain special characters.";
    }
    if (!formData.country_code) {
      errors.country_code = "Country Code is required.";
    }
    if (!iconBase64 && !id) {
      errors.country_icon = "Country icon is required.";
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
        modelName: "country_masters",
        inputData: {
          country_name: formData.country_name,
          country_calling_code: formData.country_code,
          is_active: formData.is_active ? "Active" : "Inactive",
        },
        uploadImage: [
          {
            folderPath: "uploads/country_flag_icons",
            fieldName: "flag_icon",
            imagePath: iconBase64,
          }
        ]
      };
      // console.log("payload: ", payload );  
      
      // return false;
      const responseData = await fetchData("api/masters/createCountry", payload);

      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/country-master");
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      console.error("Error submitting data:", error);
      toast.error("An error occurred while submitting data.");
    } finally {
      setLoadingData(false);
    }
  };

  const handleUpdateSubmit = async (e) => {
    e.preventDefault();

    if (!formData.country_name) {
      return toast.warning("All fields are required!");
    }

    try {
      setLoadingData(true);

      const payload = {
        modelName: "country_masters",
        id,
        inputData: {
          country_name: formData.country_name,
          country_calling_code: formData.country_code,
          is_active: formData.is_active ? "Active" : "Inactive",
        }
      };

      if (iconBase64) {
        payload.uploadImage = [
          {
            folderPath: "uploads/country_flag_icons",
            fieldName: "flag_icon",
            imagePath: iconBase64,
          }
        ];
      }

      // console.log("payload: ", payload );  
      
      // return false;

      const responseData = await fetchData("api/masters/updateCountry", payload);

      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/country-master");
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      console.error("Error submitting data:", error);
      toast.error("An error occurred while submitting data.");
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
        <Breadcrumbs title="Create Country" breadcrumbItems={breadcrumbItems} />
        <CustomForm onSubmit={id ? handleUpdateSubmit : handleSubmit}>
          <Card>
            <CardBody>
              <Row>
                <Col md={6}>
                  <BasicInput
                    type="text"
                    name="country_name"
                    label="Country Name"
                    error={validationErrors.country_name}
                      className={`form-control ${
                        validationErrors.country_name ? "is-invalid" : ""
                      }`}
                    value={formData.country_name}
                    placeholder="Enter Country Name"
                    onChange={handleTextChange}
                    style={{ padding: "10px" }}
                    divClassName={"col-md-12"}
                  />
                </Col>
                <Col md={6}>
                  <BasicInput
                    type="text"
                    name="country_code"
                    label="Country Code"
                    error={validationErrors.country_code}
                    className={`form-control ${
                      validationErrors.country_code ? "is-invalid" : ""
                    }`}
                    value={formData.country_code}
                    placeholder="Enter Country Code"
                    onChange={handleTextChange}
                    length={4}
                    style={{ padding: "10px" }}
                    divClassName={"col-md-12"}
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <Label className="mt-2">Country Icon</Label>
                  <input
                    type="file"
                    name="country_icon"
                    className={`form-control col-md-12 ${
                      validationErrors.country_icon ? "is-invalid" : ""
                    }`}
                    accept=".svg" // Accept only SVG files
                    onChange={handleIconChange}
                    style={{ display: "block" }}
                  />
                  {validationErrors.country_icon && (
                    <div className="text-danger">{validationErrors.country_icon}</div>
                  )}
                  {iconPreview && (
                    <img
                      src={iconPreview}
                      alt="Country Icon Preview"
                      style={{ width: "77px", height: "77px", marginTop: "10px" }}
                    />
                  )}
                </Col>
              </Row>
              {id && (
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
              )}
              <Row>
                <Col md={6}>
                  <BasicButton
                    label={id ? "Update" : "Submit"}
                    className="btn btn-primary mt-3"
                    onClick={id ? handleUpdateSubmit : handleSubmit}
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
