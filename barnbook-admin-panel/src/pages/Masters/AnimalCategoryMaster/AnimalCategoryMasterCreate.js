// 
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

export default function AnimalCategoryMasterCreate({ router }) {
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(!!id);
  const [formData, setFormData] = useState({
    category_name: "",
    category_icon: null,
    is_active: "Active",
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
      const payload = {
        modelName: "animal_categories",
        whereCondition: { id },
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.code === 1 && responseData.data?.length > 0) {
        const record = responseData.data[0];
        setFormData({
          category_name: record.category || "",
          category_icon: record.icon || null,
          is_active: record.is_active === "Active",
        });
        if (record.icon) {
          const fullImageUrl = `${process.env.REACT_APP_BARNBOOK_API}${record.icon}`;
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
    setFormData((prev) => ({ ...prev, [name]: value }));
    setValidationErrors((prev) => ({ ...prev, [name]: "" })); // Clear error message on input change
  };

  const handleBackClick = () => navigate("/animal-category-master");

  const handleIconChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      const img = new Image();
      img.src = URL.createObjectURL(file);
      img.onload = () => {
        const maxWidth = 77;
        const maxHeight = 77;
        if (img.width === maxWidth && img.height === maxHeight) {
          setCategoryIcon(file);
          setIconPreview(img.src);
          const reader = new FileReader();
          reader.onloadend = () => {
            setIconBase64(reader.result);
            setFormData((prev) => ({ ...prev, category_icon: reader.result }));
          };
          reader.readAsDataURL(file);
        } else {
          toast.warning(`Please select an image with dimensions ${maxWidth}x${maxHeight}px.`);
          setIconPreview(null);
          setCategoryIcon(null);
          setIconBase64(null);
          setValidationErrors((prev) => ({
            ...prev,
            category_icon: "Image must be 77x77 pixels.",
          }));
        }
      };
    }
  };

  const validateForm = () => {
    const errors = {};
    const specialCharacterRegex = /^[a-zA-Z0-9\s]+$/; // Allows only letters, numbers, and spaces

    if (!formData.category_name) {
      errors.category_name = "Category name is required.";
    } else if (!specialCharacterRegex.test(formData.category_name)) {
      errors.category_name = "Category name must not contain special characters.";
    }
    if (!iconBase64 && !id) {
      errors.category_icon = "Category icon is required.";
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
        modelName: "animal_categories",
        inputData: {
          category: formData.category_name,
          is_active: formData.is_active ? "Active" : "Inactive",
        },
      };
      if (iconBase64) {
        payload.uploadImage = [
          {
            folderPath: "uploads/animal_categories",
            fieldName: "icon",
            imagePath: iconBase64,
          },
        ];
      }
      if (id) payload.id = id;
      const responseData = await fetchData("api/masters/saveRecords", payload);
      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/animal-category-master");
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
        <Breadcrumbs title="CREATE ANIMAL CATEGORY" breadcrumbItems={breadcrumbItems} />
        <CustomForm onSubmit={handleSubmit}>
          <Card>
            <CardBody>
              <Row>
                <Col md={12}>
                  <BasicInput
                    type="text"
                    name="category_name"
                    label="Category Name"
                    className={`form-control ${
                      validationErrors.category_name ? "is-invalid" : ""
                    }`}
                    value={formData.category_name}
                    placeholder="Enter Category Name"
                    error={validationErrors.category_name}
                    onChange={handleTextChange}
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <Label className="mt-2">Category Icon</Label>
                  <input
                    type="file"
                    name="category_icon"
                    className={`form-control col-md-12 ${
                      validationErrors.category_icon ? "is-invalid" : ""
                    }`}
                    style={{"padding":"10px"}}
                    accept="image/*"
                    onChange={handleIconChange}
                  />
                  {validationErrors.category_icon && (
                    <div className="text-danger">{validationErrors.category_icon}</div>
                  )}
                  {iconPreview && (
                    <img
                      src={iconPreview}
                      alt="Category Icon Preview"
                      style={{ width: "77px", height: "77px", marginTop: "10px", borderRadius: 50 }}
                    />
                  )}
                </Col>
              </Row>
              {id && (
                <div className="mt-3 ml-2">
                  <label>Status:</label>
                  <BasicToggle
                    isActive={formData.is_active}
                    onToggle={handleStatusToggle}
                    onLabel="Active"
                    offLabel="Inactive"
                  />
                </div>
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
