import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../../components/Common/TableContainer";
import Breadcrumbs from "../../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../../services/fetchData";
import BasicToggle from "../../../basic_components/Components/BasicToggle";

const breadcrumbItems = [];

export default function AnimalCategoryMasterList() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");
  // const [channelTypeId, setChannelTypeId] = useState([]);

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    try {
      const payload = {
        modelName: "animal_categories",
        pagination: {
          page: page + 1,
          pageSize: pageSize,
        },
        search: {
          field_name: ["category"],
          searchKeyword: searchKeyword,
        },
        // whereCondition: {
        //   is_active: "",
        // },
      };
      // return false;
      const responseData = await fetchData("api/masters/getRecords", payload);
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

  const handleEdit = (id) => {
    navigate(`/animal-category-master-create/${id}`);
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

  const handleToggleStatus = async (id, currentStatus) => {
    try {
      const newStatus = currentStatus === "Active" ? "Inactive" : "Active";
      const payload = {
        modelName: "animal_categories",
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
        toast.success("Status updated successfully");
      } else {
        toast.error("Failed to update status");
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
        Header: "Animal Category",
        accessor: (row) => (row.category ? row.category : "-"),
        disableFilters: true,
        filterable: false,
      },
      // {
      //   Header: "Is Active",
      //   accessor: "is_active",
      //   disableFilters: true,
      //   filterable: false,
      //   Cell: ({ row }) => (
      //     <BasicToggle
      //       isActive={row.original.is_active === "Active"} // Updated prop name to match BasicToggle
      //       onToggle={() => handleToggleStatus(row.original.id, row.original.is_active)}
      //       onLabel="Active"
      //       offLabel="Inactive"
      //     />
      //   ),
      // },
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
              title="Animal Category Master"
              breadcrumbItems={breadcrumbItems}
            />
            <Button
                color="primary"
                className="waves-effect waves-light me-1"
                onClick={()=>navigate("/animal-category-master-create")}
                style={{ marginLeft: "auto" }}
                >
                  Create Category
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
                // onChannelDropselect={getChannelTypeId}
              />
            </CardBody>
          </Card>
        </Container>
      </div>
    </React.Fragment>
  )
}