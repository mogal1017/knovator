import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Card, CardBody, Button, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { fetchData } from "../../services/fetchData";
import BasicToggle from "../../basic_components/Components/BasicToggle";
import { toast } from "react-toastify";

const breadcrumbItems = [];

export default function RegistedUserList() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");
  const [channelTypeId, setChannelTypeId] = useState([]);

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize, channelTypeId]);

  const getData = async () => {
    try {
      const payload = {
        modelName: "admin_user_masters",
        pagination: {
          page: page + 1,
          pageSize: pageSize,
        },
        search: {
          field_name: ["full_name","email"],
          searchKeyword: searchKeyword,
        },    
      };
      // return false;
      const responseData = await fetchData("api/masters/getRecords", payload);
      if (responseData.code == 1) {
        setTotalCount(responseData.count);
        responseData.data.forEach((element, index) => {
          element.index = page * pageSize + (index + 1);
        });
        const sortedData = responseData.data.sort((a, b)=>b.index - a.index);  
        setData(sortedData);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }finally{
      setIsLoading(false);
    }
  };
  

   const handleCreate = () => {
     navigate("/register");
   };

   const handleEdit = (id) => {
     navigate(`/register/${id}`);
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

  const handleToggleStatus = async (id, currentStatus) => {
    try {
      const newStatus = currentStatus === "Active" ? "Inactive" : "Active";
      const payload = {
        modelName: "admin_user_masters",
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
        Header: "Users Name",
        accessor: (row) =>
          row.full_name && row.full_name ? row.full_name : "-",
        disableFilters: true,
        filterable: false,
      },
      {
        Header: "Email",
        accessor: (row) =>
          row.email && row.email ? row.email : "-",
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
            isActive={row.original.is_active === "Active"}
            onToggle={() => handleToggleStatus(row.original.id, row.original.is_active)}
            onLabel="Active"
            offLabel="Inactive"
          />
        ),
      },
      // {
      //   Header: "Actions",
      //   accessor: "actions",
      //   disableFilters: true,
      //   filterable: false,
      //   Cell: ({ row }) => (
      //     <Button
      //       color="primary"
      //       onClick={() => handleEdit(row.original.id)} 
      //     >
      //       <i className="fas fa-edit"></i>
      //     </Button>
      //   ),
      // },
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
            }}>
            <Breadcrumbs
              title="Admin Users List"
              breadcrumbItems={breadcrumbItems}
            />
            <Button
              color="primary"
              className="waves-effect waves-light me-1"
              onClick={handleCreate}
              style={{ marginLeft: "auto" }}>
              Create Users
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
    </React.Fragment>
  );
}
