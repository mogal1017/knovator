import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import BasicPopupModel from "../../basic_components/Components/BasicPopupModel";
import CustomForm from "../../basic_components/Forms/CustomForm";
import BasicInput from "../../basic_components/Components/BasicInput";
import BasicCheckbox from "../../basic_components/Components/BasicCheckbox";
import BasicButton from "../../basic_components/Components/BasicButton";

const breadcrumbItems = [];
export default function ActionMasterList() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");
  const [channelTypeId, setChannelTypeId] = useState([]);

  

  // state variable for popup model
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [redirectToModel, setRedirectModel] = useState(false);
  
  const handleModalOpen = () => {
      setIsModalOpen(true)
  };
  const handleModalClose = () => {
    setFormData(initialFormData); // Reset form data
    setIsModalOpen(false);
  };

  const initialFormData = {
    service_name: "",
    mobileValue: "",
    email: "",
    is_active: "",
  };

  const [formData, setFormData] = useState(initialFormData);

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize, channelTypeId]);

  const getData = async () => {
    try {
      const payload = {
        modelName: "service_masters",
        pagination: {
          page: page + 1,
          pageSize: pageSize,
        },
        search: {
          field_name: ["service_name"],
          searchKeyword: searchKeyword,
        },
        channel_id: channelTypeId,
        whereCondition: {
          is_active: 1,
        },
      };
      const responseData = await fetchData("getMasterList", payload);
      if (responseData.code == 1) {
        // responseData.data.forEach((element, index) => {
        //   element.index = index + 1;
        // });
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

  //  const handleCreate = () => {

  //   //  navigate("/action-master-create");
  //  };

  const handleEdit = (id) => {
    navigate(`/action-master-create/${id}`);
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

  const getChannelTypeId = (channeId) => {
    setChannelTypeId(channeId);
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
        Header: "Actions Name",
        accessor: (row) => (row.service_name ? row.service_name : "-"),
        disableFilters: true,
        filterable: false,
      },
      {
        Header: "Is Active",
        accessor: "is_active",
        disableFilters: true,
        filterable: false,
        Cell: ({ value }) => (value === 0 ? "Inactive" : "Active"),
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
            <Button
              color="secondary"
              onClick={() => handleView(row.original.id)}
            >
              <i className="fas fa-eye"></i>
            </Button>
          </div>
        ),
      },
    ],
    []
  );
  // model text change method
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

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!formData.service_name) {
      return toast.warning("All fields are required!");
    }
    try {
      // setLoadingData(true);
      var payload = {
        modelName: "service_masters",
        inputData: formData,
      };
      // if (id) {
      //   payload.id = id;
      // }
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
    }
  };

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
              title="Actions List"
              breadcrumbItems={breadcrumbItems}
            />
              <Button
                color="primary"
                className="waves-effect waves-light me-1"
                onClick={handleModalOpen}
                style={{ marginLeft: "auto" }}
              >
                Create Actions
              </Button>
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
                onChannelDropselect={getChannelTypeId}
              />
            </CardBody>
          </Card>
        </Container>
      </div>

      <div>
        <BasicPopupModel
          isVisible={isModalOpen}
          title="Create Service Actions"
          onClose={handleModalClose}
          // redirectModel={true}
          // redirectPath={'/action-master-create'}
          buttons={[
            {
              label: "Cancel",
              className: "cancel-btn",
              onClick: handleModalClose,
            },
            { label: "Submit", className: "btn btn-primary", onClick: handleSubmit },
          ]}
        >
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
                      prefix={["+91", "+1"]} // Pass the prefix for the mobile number
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
                
              </CardBody>
            </Card>
          </CustomForm>
          
        </BasicPopupModel>
      </div>
    </React.Fragment>
  );
}
