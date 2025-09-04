import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container, Input } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import BasicToggle from "../../basic_components/Components/BasicToggle";

const breadcrumbItems = [];

export default function UserAcquisitionReport() {
  // const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");
  // const [channelTypeId, setChannelTypeId] = useState([]);

   // State to hold selected start and end dates from input fields
   const [selectedStartDate, setSelectedStartDate] = useState("");
   const [selectedEndDate, setSelectedEndDate] = useState("");
 
   // Helper function to format date as "YYYY-MM-DD"
   const formatDate = (date) => {
     const year = date.getFullYear();
     const month = String(date.getMonth() + 1).padStart(2, '0');
     const day = String(date.getDate()).padStart(2, '0');
     return `${year}-${month}-${day}`;
   };
 
   const customColumnNames = {
    "index": "sr.no",
  };

  // Define the required columns here
  const requiredColumns = [
    "index",
    "first_name",
    "last_name",
    "signup_type",
  ];


  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    setIsLoading(true);

    // Set default dates for six months ago and today if no date selected
    const today = new Date();
    const sixMonthsAgo = new Date(today);
    sixMonthsAgo.setMonth(today.getMonth() - 6);

    const startDate = selectedStartDate || formatDate(sixMonthsAgo);
    const endDate = selectedEndDate || formatDate(today);

    try {
      const payload = {
          "startDate": startDate,
          "endDate": endDate,
         "orderByModel": {
            "field": "u.id",
            "order": "desc"
          },
          "pagination": {
              "page": page,
              "pageSize": pageSize
          },
          "search": {
              "field_name": [
                  "u.first_name",
                  "u.last_name",
                  "u.email",
              ],
              "searchKeyword": searchKeyword
          }
    }

      const responseData = await fetchData("api/masters/getUserAcquisitionReport", payload);
      if (responseData.code === 1) {
        responseData.data.forEach((element, index) => {
          element.index = page * pageSize + (index + 1);
        });
        setTotalCount(responseData.count);
        const sortedData = responseData.data.sort((a, b) => b.index - a.index);
        setData(sortedData);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    } finally {
      setIsLoading(false);
    }
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

  

  // const columns = useMemo(
  //   () => [
  //     {
  //       Header: "Sr.No.",
  //       accessor: "index",
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "User ID",
  //       accessor: "user_id",
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "User Name",
  //       accessor: (row) => (row.users ? row.users.full_name : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "User Email",
  //       accessor: (row) => (row.users ? row.users.email : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Subscription ID",
  //       accessor: "subscription_id",
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Plan Name",
  //       accessor: (row) => (row.subscriptions ? row.subscriptions.interval : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Plan Price",
  //       accessor: (row) => (row.subscriptions ? row.subscriptions.subscriptions_amount : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Plan Duration",
  //       accessor: (row) => (row.subscriptions ? row.subscriptions.interval : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Subscription Status",
  //       accessor: (row) => (row.subscriptions ? row.subscriptions.is_active : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     {
  //       Header: "Start Date",
  //       accessor: "start_date",
  //       disableFilters: true,
  //       filterable: false,
  //       Cell: ({ value }) => {
  //           if (!value) return '';  // Handle null or undefined values
    
  //           const date = new Date(value);
  //           const formattedDate = date.toLocaleDateString("en-US", {
  //               year: "numeric",
  //               month: "2-digit",
  //               day: "2-digit",
  //           });
    
  //           return formattedDate;
  //       },
  //   },
    
  //     {
  //       Header: "End Date",
  //       accessor: "end_date",
  //       disableFilters: true,
  //       filterable: false,
  //       Cell: ({ value }) => {
  //           if (!value) return '';  // Handle null or undefined values
    
  //           const date = new Date(value);
  //           const formattedDate = date.toLocaleDateString("en-US", {
  //               year: "numeric",
  //               month: "2-digit",
  //               day: "2-digit",
  //           });
    
  //           return formattedDate;
  //       },
  //     },
  //     {
  //       Header: "Last Payment Date",
  //       accessor: (row) => (row.subscriptions ? row.subscriptions.createdAt : "-"),
  //       disableFilters: true,
  //       filterable: false,
  //       Cell: ({ value }) => {
  //           if (!value) return '';  // Handle null or undefined values
    
  //           const date = new Date(value);
  //           const formattedDate = date.toLocaleDateString("en-US", {
  //               year: "numeric",
  //               month: "2-digit",
  //               day: "2-digit",
  //           });
    
  //           return formattedDate;
  //       },
  //     },
  //     {
  //       Header: "Amount Paid",
  //       accessor: (row) => row.subscriptions 
  //       ? `$${row.subscriptions.discounted_amount}` 
  //       : "-",       
  //       disableFilters: true,
  //       filterable: false,
  //     },
  //     // {
  //     //   Header: "Free Trial Start Date",
  //     //   accessor: "free_trial_start_date",
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Free Trial End Date",
  //     //   accessor: "free_trial_end_date",
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Trial Status",
  //     //   accessor: "trial_status",
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     {
  //       Header: "Is Active",
  //       accessor: "is_active",
  //       disableFilters: true,
  //       filterable: false,
  //       Cell: ({ row }) => (
  //         <span>{row.original.is_active === "Active" ? "Active" : "Inactive"}</span>
  //       ),
  //     },
  //   ],
  //   []
  // );

  const generateColumns = (data, columnsToShow) => {
    if (!data || !data.length) return [];

     // Custom accessor function to handle nested objects and arrays
     const createAccessor = (path) => (row) => {
      return path.reduce((acc, key) => {
        // Check if key is an array index like 'free_trials[0]'
        const arrayMatch = key.match(/(\w+)\[(\d+)\]/);
        if (arrayMatch) {
          const [ , arrayKey, index ] = arrayMatch;
          return acc && Array.isArray(acc[arrayKey]) ? acc[arrayKey][Number(index)] : "-";
        }
        return acc && acc[key] ? acc[key] : "-";
      }, row);
    };

    const columns = columnsToShow.map((col) => {
      const colPath = col.split("."); // Split nested keys
      const displayName = (customColumnNames[col] || colPath[colPath.length - 1].replace(/_/g, " ")).toUpperCase();


      return {
        Header: displayName,
        accessor: colPath.length > 1 ? createAccessor(colPath) : col, // Handle nested paths if present
        disableFilters: true,
        filterable: false,
        disableSortBy: col === "index",  // Disable sorting for the Sr.No. column
        Cell: ({ value }) => {
          // Format date values
          if (["start_date", "end_date", "actual_end_date", "subscriptions.createdAt"].includes(col) && value) {
            const date = new Date(value);
            return date.toLocaleDateString("en-US", {
              year: "numeric",
              month: "2-digit",
              day: "2-digit",
            });
          }
          // Handle is_active display based on user or subscriptions object
          if (col === "is_active") {
            return value === "Active" ? "Inactive" : "Active";
          }
          return value;
        },
      };
    });

    return columns;
  };
  const columns = useMemo(() => generateColumns(data, requiredColumns), [
    data,
    requiredColumns,
  ]);
  
  



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
              title="User Acquisition Report"
              breadcrumbItems={breadcrumbItems}
            />
          </div>
          <Card>
              <CardBody>
                <div style={{ display: "flex", alignItems: "center" }}>
                  <Label for="startDate" style={{ marginRight: "10px" }}>Start Date:</Label>
                  <Input
                    type="date"
                    id="startDate"
                    value={selectedStartDate}
                    onChange={(e) => setSelectedStartDate(e.target.value)}
                    style={{ marginRight: "10px" }}
                  />
                  <Label for="endDate" style={{ marginRight: "10px" }}>End Date:</Label>
                  <Input
                    type="date"
                    id="endDate"
                    value={selectedEndDate}
                    onChange={(e) => setSelectedEndDate(e.target.value)}
                    style={{ marginRight: "10px" }}
                  />
                  <Button color="primary" onClick={getData}>Filter</Button>
                </div>
              </CardBody>
            </Card>

          <Card>
            <CardBody>
              <TableContainer
                columns={columns || []}
                data={data || []}
                isPagination={false}
                isGlobalFilter={false}
                iscustomPageSize={false}
                isBordered={false}
                customPageSize={pageSize}
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
