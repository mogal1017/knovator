import React, { useState } from "react";
import { Row, Col, Alert, Button, Container, Label } from "reactstrap";
import { useSelector } from "react-redux";
import { Link } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import { useNavigate } from "react-router-dom";
import { AvForm, AvField } from "availity-reactstrap-validation";
import logodark from "../../assets/images/logo-dark.png";

const ForgetPasswordPage = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [showOtpField, setShowOtpField] = useState(false);
  const [confirmPasswordError, setConfirmPasswordError] = useState("");
  const { message, forgetError, loading } = useSelector(
    (state) => state.Forget
  );

  const handleValidSubmit = async (event, values) => {
    const emailPayload = { email: values.useremail };
    try {
      const responseData = await fetchData(
        "/api/auth/adminForgotPassword",
        emailPayload
      );
      if (responseData.code === 1) {
        toast.success(responseData.message);
        setEmail(values.useremail);
        setShowOtpField(true);
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      toast.error(error.message);
      console.error("Error===>", error);
    }
  };

  const handleNewPasswordSubmit = async (event, values) => {
    if (values.newpassword !== values.confirmnewpassword) {
      setConfirmPasswordError("Passwords do not match");
      return;
    }
    setConfirmPasswordError("");

    const newPasswordPayload = {
      email,
      otp: values.otp,
      new_password: values.newpassword,
    };

    try {
      // return false;
      const responseData = await fetchData(
        "/api/auth/adminResetPassword",
        newPasswordPayload
      );
      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/");
      } else {
        toast.error(responseData.message);
      }
    } catch (error) {
      toast.error(error.message);
      console.error("Error===>", error);
    }
  };

  const handleNumbKeyPress = (event) => {
    const charCode = event.charCode;
    if (charCode < 48 || charCode > 57) event.preventDefault();
  };

  return (
    <React.Fragment>
      <Container fluid className="p-0">
        <Row className="g-0">
          <Col lg={6}>
            <div className="authentication-page-content p-4 d-flex align-items-center min-vh-100">
              <div className="w-100">
                <Row className="justify-content-center">
                  <Col lg={9}>
                    <div className="text-center">
                      <div>
                        <h1
                          className="mt-2 mb-0 text-uppercase"
                          style={{ fontFamily: "'Brush Script MT', cursive" }}
                        >
                          Barnbook
                        </h1>
                      </div>
                      <h4 className="font-size-18 mt-4">Reset Password</h4>
                      <p className="text-muted">
                        Reset your password Barnbook.
                      </p>
                    </div>

                    <AvForm
                      className="form-horizontal"
                      onValidSubmit={
                        showOtpField
                          ? handleNewPasswordSubmit
                          : handleValidSubmit
                      }
                    >
                      <div className="auth-form-group-custom mb-4">
                        <i className="ri-mail-line auti-custom-input-icon"></i>
                        <Label htmlFor="useremail">Email</Label>
                        <AvField
                          name="useremail"
                          value={email}
                          type="email"
                          validate={{
                              required: { value: true, errorMessage: "Email is required" },
                              email: { value: true, errorMessage: "Invalid email format" },
                          }}
                          className="form-control"
                          id="useremail"
                          placeholder="Enter email"
                          disabled={showOtpField}
                        />
                      </div>

                      {showOtpField && (
                        <div className="auth-form-group-custom mb-4">
                          <i className="ri-lock-2-line auti-custom-input-icon"></i>
                          <Label htmlFor="otp">OTP</Label>
                          <AvField
                            name="otp"
                            type="text"
                            validate={{
                              required: true,
                              maxLength: { value: 4 },
                              minLength: { value: 3 },
                            }}
                            onKeyPress={handleNumbKeyPress}
                            className="form-control"
                            id="otp"
                            placeholder="Enter OTP"
                          />
                        </div>
                      )}

                      {showOtpField && (
                        <>
                          <div className="auth-form-group-custom mb-4">
                            <i className="ri-lock-password-line auti-custom-input-icon"></i>
                            <Label htmlFor="newpassword">New Password</Label>
                            <AvField
                              name="newpassword"
                              type="password"
                              validate={{
                                required: true,
                                minLength: { value: 6 },
                              }}
                              className="form-control"
                              id="newpassword"
                              placeholder="Enter new password"
                            />
                          </div>

                          <div className="auth-form-group-custom mb-4">
                            <i className="ri-lock-password-line auti-custom-input-icon"></i>
                            <Label htmlFor="confirmnewpassword">
                              Confirm New Password
                            </Label>
                            <AvField
                              name="confirmnewpassword"
                              type="password"
                              validate={{ required: true }}
                              className="form-control"
                              id="confirmnewpassword"
                              placeholder="Confirm new password"
                              onChange={(e) =>
                                setConfirmPasswordError(
                                  e.target.value !==
                                    e.target.form.newpassword.value
                                    ? "Passwords do not match"
                                    : ""
                                )
                              }
                            />
                            <div>
                              {confirmPasswordError && (
                                <p className="text-danger">
                                  {confirmPasswordError}
                                </p>
                              )}
                            </div>
                          </div>
                        </>
                      )}

                      <div className="mt-4 text-center">
                        <Button
                          color="primary"
                          className="w-md waves-effect waves-light"
                          type="submit"
                        >
                          {showOtpField
                            ? loading
                              ? "Updating..."
                              : "Update Password"
                            : loading
                            ? "Loading..."
                            : "Reset"}
                        </Button>
                      </div>
                      <div className="mt-5 text-center">
                        <p>
                          Back to Login{" "}
                          <Link to="/" className="fw-medium text-primary">
                            Log in
                          </Link>
                        </p>
                      </div>
                    </AvForm>
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
    </React.Fragment>
  );
};

export default ForgetPasswordPage;