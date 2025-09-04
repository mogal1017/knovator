import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../../components/Common/TableContainer";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container, Table } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../../services/fetchData";
import BasicPopupModel from "../../../basic_components/Components/BasicPopupModel";
import CustomForm from "../../../basic_components/Forms/CustomForm";
import BasicInput from "../../../basic_components/Components/BasicInput";
import BasicToggle from "../../../basic_components/Components/BasicToggle";
import BasicButton from "../../../basic_components/Components/BasicButton";
import BasicSelect from "../../../basic_components/Components/BasicSelect";
const breadcrumbItems = [];

export default function UserSubscriptionMasterList() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");

  const [isModalOpen, setIsModalOpen] = useState(false);

  const initialFormData = {
    free_trial_days: "",
    free_trial_features:[""]
  };

  const [formData, setFormData] = useState(initialFormData);

  const handleModalOpen = () => {
    setIsModalOpen(true);
    getFreeTrialData(); // Fetch the data when the modal opens
  };

  const handleModalClose = () => {
    setFormData(initialFormData); // Reset form data
    setIsModalOpen(false);
  };

  const handleEdit = (id) => {
    navigate(`/user-subscription-master-create/${id}`);
  };

  const handleFeatureChange = (index, e) => {
    const updatedFeatures = [...formData.free_trial_features];
    updatedFeatures[index] = e.target.value;

    setFormData((prevData) => ({
      ...prevData,
      free_trial_features: updatedFeatures,
    }));
  };

  const addFeatures = () => {
    setFormData((prevData) => ({
      ...prevData,
      free_trial_features: [...prevData.free_trial_features, ""],
    }));
  };

  const removeFeatures = (index) => {
    setFormData((prevData) => ({
      ...prevData,
      free_trial_features: prevData.free_trial_features.filter((_, i) => i !== index),
    }));
  };


  const handleView = (id) => {
    navigate(`/action-master-view/${id}`);
  };

  const nextToPages = () => {
    setPage(page + 1);
  };

  const previousToPages = () => {
    setPage(page - 1);
  };

  const handlePageSizeChange = (data) => {
    setPageSize(data);
  };

  const getSearchInputData = (inputValue) => {
    setSearchKeyword(inputValue);
  };

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    try {
      const payload = {
        modelName: "subscriptions",
        pagination: {
          page: page + 1,
          pageSize: pageSize,
        },
        search: {
          field_name: ["subscriptions_title"],
          searchKeyword: searchKeyword,
        },
        // whereCondition: {
        //   is_active: 1,
        // },
      };
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.code === 1) {
        setTotalCount(responseData.count);
        responseData.data.forEach((element, index) => {
          element.index = page * pageSize + (index + 1);
        });
        const sortedData = responseData.data.sort((a, b) => b.index - a.index);
        setData(sortedData);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setIsLoading(false);
    }
  };

  const getFreeTrialData = async () => {
    try {
      const payload = {
        modelName: "configurations",
        id: 3,
      };
      const responseData = await fetchData(
        "api/masters/getFreeTrialDays",
        payload
      );
      if (responseData.code === 1) {
        const freeTrialDays = responseData.data[0];
        setFormData((prevData) => ({
          ...prevData,
          free_trial_days: freeTrialDays.free_trial_days || "",
          free_trial_features: freeTrialDays.free_trial_features || [""]
        }));
        console.log("Data for the popup ===>", responseData.data[0]);
      }
    } catch (error) {
      console.error("Error fetching free trial data:", error);
    } finally {
      setIsLoading(false);
    }
  };

  const handleTextChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevValues) => ({
      ...prevValues,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!formData.free_trial_days) {
      return toast.warning("All fields are required!");
    }
    try {
      const payload = {
        modelName: "configurations",
        id: 3,
        inputData: {
          free_trial_days: formData.free_trial_days,
          free_trial_features: formData.free_trial_features
        },
      };
      console.log("payload===>", payload);
      
      const responseData = await fetchData(
        "api/masters/updateFreeTrial",
        payload
      );
      if (responseData.code === 1) {
        toast.success(responseData.message);
        setIsModalOpen(false);
        // navigate("/action-master-list");
      } else {
        toast.error("Error while updating free trial days!");
      }
    } catch (error) {
      console.error("Error updating free trial days:", error);
    }
  };

  const handleToggleStatus = async (id, currentStatus) => {
    try {
      const newStatus = currentStatus === "Active" ? "Inactive" : "Active";
      const payload = {
        modelName: "subscriptions",
        id: id,
        inputData: { is_active: newStatus },
      };
      console.log("toggle data===>", payload);
      // return false;
      const response = await fetchData("api/masters/saveRecords", payload);
      if (response.code === 1) {
        setData((prevData) =>
          prevData.map((item) =>
            item.id === id ? { ...item, is_active: newStatus } : item
          )
        );
        toast.success(response.message);
      } else {
        toast.error(response.message);
      }
    } catch (error) {
      console.error("Error updating status:", error);
      toast.error("An error occurred while updating status");
    }
  };

  const columns = useMemo(
    () => [
      {
        Header: "Sr.No.",
        accessor: "index",
        disableFilters: true,
        filterable: false,
      },
      {
        Header: "User Subscription",
        accessor: (row) => (row.subscriptions_title ? row.subscriptions_title : "-"),
        disableFilters: true,
        filterable: false,
      },
      {
        Header: "Is Active",
        accessor: "is_active",
        disableFilters: true,
        filterable: false,
        Cell: ({ row }) => (
          <BasicToggle
            isActive={row.original.is_active === "Active"} // Updated prop name to match BasicToggle
            onToggle={() => handleToggleStatus(row.original.id, row.original.is_active)}
            onLabel="Active"
            offLabel="Inactive"
          />
        ),
      },
      {
        Header: "Actions",
        accessor: "actions",
        disableFilters: true,
        filterable: false,
        Cell: ({ row }) => (
          <div className="d-flex">
            <Button
              color="primary"
              className="me-2"
              onClick={() => handleEdit(row.original.id)}
            >
              <i className="fas fa-edit"></i>
            </Button>
            {/* <Button
              color="secondary"
              onClick={() => handleView(row.original.id)}
            >
              <i className="fas fa-eye"></i>
            </Button> */}
          </div>
        ),
      },
    ],
    []
  );

  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid>
          <div
            style={{
              display: "flex",
              alignItems: "center",
              marginBottom: "10px",
            }}
          >
            <Breadcrumbs
              title="Subscription Plans"
              breadcrumbItems={breadcrumbItems}
            />
            <div style={{ display: "flex", marginLeft: "auto" }}>
              <Button
                color="primary"
                className="waves-effect waves-light"
                onClick={handleModalOpen}
                style={{ marginRight: "10px" }} // Adjust spacing between buttons
              >
                Free Trial Days
              </Button>
              {/* <Button
                color="primary"
                className="waves-effect waves-light me-1"
                onClick={() => navigate(`/user-subscription-master-create`)}
              >
                Create Plans
              </Button> */}
            </div>
          </div>


          <Card>
            <CardBody>
              <TableContainer
                columns={columns || []}
                data={data || []}
                isPagination={false}
                isGlobalFilter={false}
                iscustomPageSize={false}
                isBordered={false}
                customPageSize={10}
                isLoading={isLoading}
                pageIndexProp={page}
                totalCount={totalCount}
                onPageSizeChange={handlePageSizeChange}
                nextToPage={nextToPages}
                previousToPage={previousToPages}
                onSearchInputData={getSearchInputData}
              />
            </CardBody>
          </Card>

          <BasicPopupModel
            isVisible={isModalOpen}
            title="Free Trial Days"
            onClose={handleModalClose}
            buttons={[
              {
                label: "Cancel",
                className: "cancel-btn",
                onClick: handleModalClose,
              },
              {
                label: "Submit",
                className: "btn btn-primary",
                onClick: handleSubmit,
              },
            ]}
          >
            <CustomForm onSubmit={handleSubmit}>
              <Card>
                <CardBody>
                  <Row md={12}>
                    <Col md={12}>
                      <BasicInput
                        type="text"
                        name="free_trial_days"
                        label="Free Trial Days"
                        value={formData.free_trial_days}
                        placeholder="Enter Free Trial Days"
                        onChange={handleTextChange}
                      />
                    </Col>
                    
                        <Row className="align-items-center mt-3">
                          <Col md={9}>
                            <h5>Features</h5>
                          </Col>
                          <Col md={3} className="text-right">
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
                            {formData.free_trial_features.map((offer, index) => (
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
                  </Row>
                </CardBody>
              </Card>
            </CustomForm>
          </BasicPopupModel>
        </Container>  
      </div>
    </React.Fragment>
  );
}
