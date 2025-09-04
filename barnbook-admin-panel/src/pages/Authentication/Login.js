import React, { useEffect, useState } from 'react';
import { Row, Col, Input, Button, Alert, Container, Label } from "reactstrap";
import { Link } from 'react-router-dom';
import { AvForm, AvField } from 'availity-reactstrap-validation';
import { connect } from 'react-redux';
import { checkLogin, apiError } from '../../store/actions';
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import withRouter from '../../components/Common/withRouter';

const Login = (props) => {
    const navigate = useNavigate();
    const [formData, setFormData] = useState({
        email: "",
        password: "",
    });

    const handleTextChange = (e) => {
        const { name, value, type, checked } = e.target;
        setFormData((prevValues) => ({
            ...prevValues,
            [name]: type === "checkbox" ? (checked ? 1 : 0) : value,
        }));
    };

    const handleSubmit = async (event, values) => {
        event.preventDefault();
        if (!formData.email || !formData.password) {
            return toast.warning("All fields are required!");
        }
    
        try {
            const responseData = await fetchData("api/auth/adminLogin", formData);
            console.log("Login Response Data:", responseData); // Log the response to debug
            if (responseData.code === 1) {
                localStorage.setItem('login_details', JSON.stringify(responseData.data));
                toast.success(responseData.message);
                navigate("/dashboard"); // This should trigger the redirection
            } else {
                toast.error(responseData.message || "Login failed! Please try again.");
            }
        } catch (error) {
            toast.error(error.message || "An unexpected error occurred.");
            console.error("Error===>", error);
        }
    };
    

    useEffect(() => {
        props.apiError("");
        document.body.classList.add("auth-body-bg");

        return () => {
            document.body.classList.remove("auth-body-bg");
        };
    }, []);

    return (
        <React.Fragment>
            <div>
                <Container fluid className="p-0">
                    <Row className="g-0">
                        <Col lg={6}>
                            <div className="authentication-page-content p-4 d-flex align-items-center min-vh-100">
                                <div className="w-100">
                                    <Row className="justify-content-center">
                                        <Col lg={9}>
                                            <div>
                                                <div className="text-center">
                                                    <h1 className="mt-2 mb-0 text-uppercase" style={{ fontFamily: "'Brush Script MT', cursive" }}>Barnbook</h1>
                                                    <h4 className="font-size-18 mt-4">Welcome Back!</h4>
                                                </div>
                                                {props.loginError && <Alert color="danger">{props.loginError}</Alert>}
                                                <div className="p-2 mt-5">
                                                    <AvForm className="form-horizontal" onValidSubmit={handleSubmit}>
                                                        <div className="auth-form-group-custom mb-4">
                                                            <i className="ri-user-2-line auti-custom-input-icon"></i>
                                                            <Label htmlFor="email">Email</Label>
                                                            <AvField
                                                                name="email"
                                                                value={formData.email}
                                                                onChange={handleTextChange}
                                                                type="text"
                                                                className="form-control"
                                                                id="email"
                                                                placeholder="Enter Email"
                                                                validate={{
                                                                    required: { value: true, errorMessage: "Email is required" },
                                                                    email: { value: true, errorMessage: "Invalid email format" },
                                                                }}
                                                            />
                                                        </div>

                                                        <div className="auth-form-group-custom mb-4">
                                                            <i className="ri-lock-2-line auti-custom-input-icon"></i>
                                                            <Label htmlFor="userpassword">Password</Label>
                                                            <AvField
                                                                name="password"
                                                                value={formData.password}
                                                                onChange={handleTextChange}
                                                                type="password"
                                                                className="form-control"
                                                                id="userpassword"
                                                                placeholder="Enter Password"
                                                                validate={{
                                                                    required: { value: true, errorMessage: "Password is required" },
                                                                    minLength: { value: 4, errorMessage: "Password must be at least 4 characters long" },
                                                                }}
                                                            />
                                                        </div>

                                                        <div className="form-check">
                                                            <Input type="checkbox" className="form-check-input" id="customControlInline" />
                                                            <Label className="form-check-label" htmlFor="customControlInline">Remember me</Label>
                                                        </div>

                                                        <div className="mt-4 text-center">
                                                            <Button color="primary" className="w-md waves-effect waves-light" type="submit">Log In</Button>
                                                        </div>

                                                        <div className="mt-4 text-center">
                                                            <Link to="/forgot-password" className="text-muted"><i className="mdi mdi-lock me-1"></i> Forgot your password?</Link>
                                                        </div>
                                                    </AvForm>
                                                </div>
                                            </div>
                                        </Col>
                                    </Row>
                                </div>
                            </div>
                        </Col>
                        <Col lg={6}>
                            <div className="authentication-bg">
                                <div className="bg-overlay"></div>
                            </div>
                        </Col>
                    </Row>
                </Container>
            </div>
        </React.Fragment>
    );
};

const mapStatetoProps = state => {
    const { loginError } = state.Login;
    return { loginError };
};

export default withRouter(connect(mapStatetoProps, { checkLogin, apiError })(Login));