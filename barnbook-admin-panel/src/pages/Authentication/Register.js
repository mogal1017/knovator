import React, { useState, useEffect } from "react";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { AvForm, AvField } from "availity-reactstrap-validation";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate, useParams } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import {
  registerUser,
  registerUserFailed,
  apiError,
} from "../../store/actions";

export default function Register() {
  const [breadcrumbItems] = useState([]);
  const navigate = useNavigate();
  let { id } = useParams();

  // State
  const [formData, setFormData] = useState({
    fullname: "",
    email: "",
    usernames: "",
    passwords: "",
    is_active: "Active", 
  });

  useEffect(() => {
    if (id) getData(id);
  }, [id]);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "admin_user_masters",
        whereCondition: { id },
      };

      const responseData = await fetchData("/api/masters/getRecords", payload);
      if (responseData.code === 1 && responseData.data && responseData.data.length > 0) {
        const record = responseData.data[0];

        // Set form data based on fetched record
        setFormData({
          fullname: record.full_name || "",
          email: record.email || "",
          username: record.user_name || null,
          password: "",
          is_active: record.is_active === "Active", // Convert to boolean
        });

      } else {
        toast.error("No record found!");
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } 
  };

  // Redux dispatch and state
  const dispatch = useDispatch();
  const { user, registrationError, loading } = useSelector(
    (state) => state.Account
  );

  const handleBackClick = () => {
    navigate("/registered-user-list");
  };

  const handleTextChange = (e) => {
    const { name, value, type, checked } = e.target;

    if (name === "is_active") {
      setFormData((prevValues) => ({
        ...prevValues,
        is_active: formData.is_active === "Active" ? "Inactive" : "Active", // Toggle between "Active" and "Inactive"
      }));
    } else {
      setFormData((prevValues) => ({
        ...prevValues,
        [name]: value,
      }));
    }
  };

  const handleStatusChange = (e) => {
    const checked = e.target.checked;
    setFormData((prev) => ({ ...prev, is_active: checked }));
  };

  const handleAlphaKeyPress = (event) => {
    const charCode = event.charCode;

    // Allow only alphabets (A-Z, a-z) and space (char code 32)
    if (
      (charCode < 65 || charCode > 90) &&   // Not uppercase
      (charCode < 97 || charCode > 122) &&  // Not lowercase
      charCode !== 32                       // Not a space
    ) {
      event.preventDefault();  // Prevent non-alphabet and non-space characters
    }
  };

  // Handle form submission
  const handleSubmit = async (event, values) => {
    // dispatch(registerUser(values));
    try {
      const payload = {
        "full_name": formData.fullname,
        "user_name": formData.usernames,
        "password": formData.passwords,
        "email": formData.email,
        "is_active": formData.is_active
      };
      if (id) {
        payload.id = id;
      }
      console.log("formData===>", payload);
      // return false;
        const responseData = await fetchData("api/auth/adminSignup",payload);
        if (responseData.code == 1) {
          toast.success(responseData.message);
          navigate("/registered-user-list");
        } else {
          toast.error(responseData.message);
        }
    } catch (error) {
        toast.error(error);
        console.error("Error===>", error);
    }
  };

  useEffect(() => {
    dispatch(registerUserFailed(""));
    dispatch(apiError(""));
    document.body.classList.add("auth-body-bg");

    return () => {
      document.body.classList.remove("auth-body-bg");
    };
  }, [dispatch]);

  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid={true}>
          <Breadcrumbs
            title="Admin User Registration"
            breadcrumbItems={breadcrumbItems}
          />
        <Card>
            <CardBody>
                <Row>
                    <Col lg={12}>
                    <div>
                        <div className="p-2 mt-3">
                        <AvForm
                            onValidSubmit={handleSubmit}
                            className="form-horizontal"
                            autoComplete="off"
                        >
                            <div className="auth-form-group-custom mb-4">
                            <i className="ri-mail-line auti-custom-input-icon"></i>
                            <Label htmlFor="fullname">Full Name</Label>
                            <AvField
                                name="fullname"
                                value={formData.fullname}
                                validate={{ required:{value: true, errorMessage: "Full Name is required"} }}
                                type="text"
                                onKeyPress={handleAlphaKeyPress}
                                onChange={handleTextChange}
                                className="form-control"
                                id="fullname"
                                placeholder="Enter Full Name"
                            />
                            </div>

                            <div className="auth-form-group-custom mb-4">
                            <i className="ri-mail-line auti-custom-input-icon"></i>
                            <Label htmlFor="useremail">Email</Label>
                            <AvField
                                name="email"
                                value={formData.email}
                                validate={{
                                    required: { value: true, errorMessage: "Email is required" },
                                    email: { value: true, errorMessage: "Invalid email format" },
                                }}
                                type="email"
                                onChange={handleTextChange}
                                className="form-control"
                                id="useremail"
                                placeholder="Enter email"
                            />
                            </div>

                            <div className="auth-form-group-custom mb-4">
                              <i className="ri-user-2-line auti-custom-input-icon"></i>
                              <Label htmlFor="usernames">Username</Label>
                              <AvField
                                name="usernames"
                                value={formData.usernames}
                                type="text"
                                autoComplete="off" // Disable autofill
                                onChange={handleTextChange}
                                validate={{
                                  required: { value: true, errorMessage: "Username is required." },
                                  pattern: {
                                    value: /^(?=.*[a-zA-Z])[a-zA-Z!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?`~\s]*$/,
                                    errorMessage:
                                      "Username must include letters and can include special symbols but not only symbols.",
                                  },
                                  minLength: {
                                    value: 3,
                                    errorMessage: "Username must be at least 3 characters.",
                                  },
                                  maxLength: {
                                    value: 30,
                                    errorMessage: "Username must not exceed 30 characters.",
                                  },
                                }}
                                className="form-control"
                                id="usernames"
                                placeholder="Enter username"
                              />
                            </div>

                            <div className="auth-form-group-custom mb-4">
                              <i className="ri-lock-2-line auti-custom-input-icon"></i>
                              <Label htmlFor="userpassword">Password</Label>
                              <AvField
                                name="passwords"
                                value={formData.passwords}
                                type="password"
                                autoComplete="new-password" // Disable autofill
                                validate={
                                  id
                                    ? {}
                                    : {
                                        required: { value: true, errorMessage: "Password is required" },
                                        minLength: {
                                          value: 6,
                                          errorMessage: "Password must be at least 6 characters long",
                                        },
                                      }
                                }
                                onChange={handleTextChange}
                                className="form-control"
                                id="userpassword"
                                placeholder="Enter password"
                              />
                            </div>
                                
                             {/* Add Is Active checkbox */}
                             <div className="auth-form-group-custom mb-4">
                              <Label check>
                              <input
                                  type="checkbox"
                                  checked={formData.is_active}
                                  onChange={handleStatusChange}
                                />
                                <span>{formData.is_active ? "Active" : "Inactive"}</span>
                              </Label>
                            </div>

                            <div className="text-center">
                            <Button
                                color="primary"
                                className="w-md waves-effect waves-light mt-5"
                                type="submit"
                            >
                                {loading ? "Loading ..." : "Register"}
                            </Button>
                            <Button
                                // label="Back"
                                className="w-md waves-effect waves-light mt-5 mx-2"
                                onClick={handleBackClick}
                            >
                                Back
                            </Button>
                            </div>
                        </AvForm>
                        </div>
                    </div>
                    </Col>
                </Row>
            </CardBody>
        </Card>

        </Container>
      </div>
    </React.Fragment>
  );
}