import React, { useState, useEffect } from "react";
import { Row, Col, Card, CardBody, Button, Label, Container, Table } from "reactstrap";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { fetchData } from "../../../services/fetchData";
import { useNavigate, useParams } from "react-router-dom";
import { toast } from "react-toastify";
import CustomForm from "../../../basic_components/Forms/CustomForm";
import BasicInput from "../../../basic_components/Components/BasicInput";
import BasicButton from "../../../basic_components/Components/BasicButton";
import BasicSelect from "../../../basic_components/Components/BasicSelect";
import BasicToggle from "../../../basic_components/Components/BasicToggle";

export default function UserSubscriptionMasterCreate() {
  
  const navigate = useNavigate();
  let { id } = useParams();
  const [breadcrumbItems] = useState([]);
  const [loadingData, setLoadingData] = useState(!!id);
  const [isDisabled, setIsDisabled] = useState(true);
  const [formData, setFormData] = useState({
    subscription_title: "",
    subscription_tag: "",
    subscription_amount: 0,  // Numeric initialization
    discount_in_percentage: 0,  // Numeric initialization
    discounted_amount: 0,
    plan_offer: [""],
    features: [""],
    interval: "",
    additional_days_offered: 0,  // Numeric initialization
    is_active: "Active",
  });
  
  

  useEffect(() => {
    if (id) getData(id);
  }, [id]);

  const getData = async (id) => {
    try {
      let payload = {
        modelName: "subscriptions",
        whereCondition: { id },
      };
  
      const responseData = await fetchData("/api/masters/getRecords", payload);
      if (responseData.code === 1 && responseData.data && responseData.data.length > 0) {
        const record = responseData.data[0];
        console.log("response===>", record);
        setFormData({
          subscription_title: record.subscriptions_title,
          subscription_tag: record.subscriptions_tag,
          subscription_amount: parseFloat(record.subscriptions_amount),
          discount_in_percentage: parseFloat(record.discount_in_percentage),
          discounted_amount: parseFloat(record.discounted_amount),
          plan_offer: record.plan_offers || [""],
          features: record.features || [""],
          interval: record.interval,
          additional_days_offered: parseFloat(record.additional_days_offered),
          is_active: record.is_active,
        });
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
    
    if (name === "discount_in_percentage") {
      const sanitizedValue = parseInt(String(value).replace(/[^0-9]/g, ""), 10) || 0; // Convert to sanitized integer
      setFormData((prev) => ({ ...prev, [name]: sanitizedValue }));
      calculateDiscountedAmount(formData.subscription_amount, sanitizedValue);
    } else if (name === "subscription_amount") {
      const sanitizedValue = parseInt(String(value).replace(/[^0-9]/g, ""), 10) || 0; // Convert to sanitized integer
      setFormData((prev) => ({ ...prev, [name]: sanitizedValue }));
      calculateDiscountedAmount(sanitizedValue, formData.discount_in_percentage);
    } else {
      setFormData((prev) => ({ ...prev, [name]: value }));
    }
  };
  
  
  const calculateDiscountedAmount = (amount, discount) => {
    const numericAmount = parseFloat(amount) || 0;
    const numericDiscount = parseFloat(discount) || 0;
    const discountedAmount = numericAmount - (numericAmount * numericDiscount) / 100;
    
    setFormData((prevData) => ({
      ...prevData,
      discounted_amount: discountedAmount.toFixed(2),
    }));
  };
  

  const handlePlanOfferChange = (index, e) => {
    const updatedPlanOffers = [...formData.plan_offer];
    updatedPlanOffers[index] = e.target.value;

    setFormData((prevData) => ({
      ...prevData,
      plan_offer: updatedPlanOffers,
    }));
  };

  const addPlanOffer = () => {
    setFormData((prevData) => ({
      ...prevData,
      plan_offer: [...prevData.plan_offer, ""],
    }));
  };

  const removePlanOffer = (index) => {
    setFormData((prevData) => ({
      ...prevData,
      plan_offer: prevData.plan_offer.filter((_, i) => i !== index),
    }));
  };

  const handleFeatureChange = (index, e) => {
    const updatedFeatures = [...formData.features];
    updatedFeatures[index] = e.target.value;

    setFormData((prevData) => ({
      ...prevData,
      features: updatedFeatures,
    }));
  };

  const addFeatures = () => {
    setFormData((prevData) => ({
      ...prevData,
      features: [...prevData.features, ""],
    }));
  };

  const removeFeatures = (index) => {
    setFormData((prevData) => ({
      ...prevData,
      features: prevData.features.filter((_, i) => i !== index),
    }));
  };

  const handleSelectChange = (value) => {
    setFormData((prevData) => ({
      ...prevData,
      interval: value,
    }));
  };

  const handleToggleChange = () => {
    setFormData((prevData) => ({
      ...prevData,
      is_active: prevData.is_active === "Active" ? "Inactive" : "Active",
    }));
  };


  const handleSubmit = async (e) => {
    e.preventDefault();
  
    // Form validation checks
    if (!formData.subscription_title) {
      return toast.warning("Subscription title is required!");
    }
    if (!formData.subscription_amount || isNaN(formData.subscription_amount) || formData.subscription_amount <= 0) {
      return toast.warning("Valid subscription amount is required!");
    }
    if (formData.discount_in_percentage < 0 || formData.discount_in_percentage > 100) {
      return toast.warning("Discount percentage must be between 0 and 100!");
    }
    if (!formData.plan_offer || formData.plan_offer.length === 0) {
      return toast.warning("At least one plan offer is required!");
    }
    if (!formData.features || formData.features.length === 0) {
      return toast.warning("At least one Feature is required!");
    }
    if (!formData.interval) {
      return toast.warning("Interval is required!");
    }
    if (formData.additional_days_offered < 0) {
      return toast.warning("Additional days offered cannot be negative!");
    }
  
    // Preparing form data
    try {
      setLoadingData(true);
  
      // Explicit handling of `is_active`
      const isActive = formData.is_active === true || formData.is_active === "Active" ? "Active" : "Inactive";
  
      const payload = {
        modelName: "subscriptions",
        inputData: {
          subscriptions_title: formData.subscription_title,
          subscriptions_tag: formData.subscription_tag,
          subscriptions_amount: formData.subscription_amount,
          discount_in_percentage: formData.discount_in_percentage,
          discounted_amount: formData.discounted_amount,
          plan_offers: formData.plan_offer,
          features: formData.features,
          interval: formData.interval,
          additional_days_offered: formData.additional_days_offered,
          is_active: isActive,
        },
      };
      if (id) {
        payload.id = id;
      }
      console.log("form data for plans===>", payload);
      // return false;      
      const responseData = await fetchData("api/masters/saveRecords", payload);

      if (responseData.code === 1) {
        toast.success(responseData.message);
        navigate("/user-subscription-master");
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

  return (
    <div className="page-content">
      <Container fluid>
        <Breadcrumbs title="Create Subscription Plan" breadcrumbItems={breadcrumbItems} />
        <CustomForm onSubmit={handleSubmit}>
          <Card>
            <CardBody>
              <Row>
                <Col md={6}>
                  <BasicInput
                    type="text"
                    name="subscription_title"
                    label="Subscription Title"
                    value={formData.subscription_title}
                    placeholder="Enter Subscription Title"
                    onChange={handleTextChange}
                    divClassName="col-md-12"
                  />
                </Col>
                <Col md={6}>
                  <BasicInput
                    type="text"
                    name="subscription_tag"
                    label="Subscription Tag"
                    value={formData.subscription_tag}
                    placeholder="Enter Subscription Tag"
                    onChange={handleTextChange}
                    divClassName="col-md-12"
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <BasicInput
                    type="number"
                    name="subscription_amount"
                    label="Subscription Amount"
                    value={formData.subscription_amount}
                    placeholder="Enter Amount"
                    onChange={handleTextChange}
                    divClassName="col-md-12"
                  />
                </Col>
                <Col md={6}>
                  <BasicInput
                    type="number"
                    name="discount_in_percentage"
                    label="Discount Percentage"
                    value={formData.discount_in_percentage}
                    placeholder="Enter Discount Percentage"
                    onChange={handleTextChange}
                    divClassName="col-md-12"
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <BasicInput
                    type="number"
                    name="discounted_amount"
                    label="Discounted Amount"
                    value={formData.discounted_amount}
                    placeholder="Enter Discounted Amount"
                    onChange={handleTextChange}
                    disabled={true}
                    divClassName="col-md-12"
                  />
                </Col>
                <Col md={6}>
                  <BasicSelect
                    name="interval"
                    label="Interval"
                    value={formData.interval}
                    options={[
                      { label: "Yearly", value: "Yearly" },
                      { label: "Quarterly", value: "Quarterly" },
                      { label: "Monthly", value: "Monthly" }
                    ]}
                    placeholder="Select Interval"
                    onChange={(e) => handleSelectChange(e.target.value)}
                    divClassName="col-md-12"
                  />
                </Col>
              </Row>
              <Row>
                <Col md={6}>
                  <BasicInput
                    type="number"
                    name="additional_days_offered"
                    label="Additional Days Offered"
                    value={formData.additional_days_offered}
                    placeholder="Enter Additional Days"
                    onChange={handleTextChange}
                    divClassName="col-md-12"
                  />
                </Col>
                <Col md={6}>
                  <Label className="mt-2">Status</Label>
                  <BasicToggle
                    onToggle={handleToggleChange}
                    onLabel="Active"
                    offLabel="Inactive"
                    isActive={formData.is_active === "Active"}
                  />
                </Col>
              </Row>

                <Card className="mt-4">
                <CardBody>
                  <Row className="align-items-center">
                    <Col md={10}>
                      <h5>Features</h5>
                    </Col>
                    <Col md={2} className="text-right">
                      <BasicButton
                        label="Add Fetures"
                        className="btn btn-primary"
                        onClick={addFeatures}
                      />
                    </Col>
                  </Row>

                  <Table striped bordered hover className="mt-3">
                    <thead>
                      <tr>
                        <th>Features</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      {formData.features.map((offer, index) => (
                        <tr key={index}>
                          <td>
                            <BasicInput
                              type="text"
                              name="offer_text"
                              value={offer}
                              placeholder="Enter Features"
                              onChange={(e) => handleFeatureChange(index, e)}
                              divClassName="w-100"
                            />
                          </td>
                          <td className="text-center">
                            <BasicButton
                              label="Remove"
                              className="btn btn-danger mt-3"
                              onClick={() => removeFeatures(index)}
                            />
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </Table>
                </CardBody>
              </Card>

              {/* Plan Offers Section */}
              <Card className="mt-4">
                <CardBody>
                  <Row className="align-items-center">
                    <Col md={10}>
                      <h5>Plan Offers</h5>
                    </Col>
                    <Col md={2} className="text-right">
                      <BasicButton
                        label="Add Offer"
                        className="btn btn-primary"
                        onClick={addPlanOffer}
                      />
                    </Col>
                  </Row>

                  <Table striped bordered hover className="mt-3">
                    <thead>
                      <tr>
                        <th>Offer Text</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      {formData.plan_offer.map((offer, index) => (
                        <tr key={index}>
                          <td>
                            <BasicInput
                              type="text"
                              name="offer_text"
                              value={offer}
                              placeholder="Enter Offer Text"
                              onChange={(e) => handlePlanOfferChange(index, e)}
                              divClassName="w-100"
                            />
                          </td>
                          <td className="text-center">
                            <BasicButton
                              label="Remove"
                              className="btn btn-danger mt-3"
                              onClick={() => removePlanOffer(index)}
                            />
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </Table>
                </CardBody>
              </Card>

              <Row>
               <Col md={6}>
                 <BasicButton label="Submit" className="btn btn-primary mt-3" onClick={handleSubmit} />
                 <BasicButton label="Back" className="btn btn-secondary mx-2 mt-3" onClick={() =>navigate(`/user-subscription-master`) } />
               </Col>
             </Row>
            </CardBody>
          </Card>
        </CustomForm>
      </Container>
    </div>
  );
}
