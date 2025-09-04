import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import BasicToggle from "../../basic_components/Components/BasicToggle";

const breadcrumbItems = [];


export default function FreeTrialsReport() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");
  // const [channelTypeId, setChannelTypeId] = useState([]);

  const customColumnNames = {
    "index": "sr.no",
  };

  // Define the required columns here
  const requiredColumns = [
    "index",
    "user_id",
    "users.full_name",
    "users.email",
    "start_date",
    "end_date",
    "status",
  ];

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    try {
      const payload = {
          "modelName": "free_trials",
          "search": {
              "field_name": [
                  "users.id",
                  "users.full_name",
                  "users.email",
                  "users.mobile_number",
                  "free_trials.start_date",
                  "free_trials.end_date",
                  "free_trials.status"
              ],
              "searchKeyword": searchKeyword
          },
          "orderByModel": {
              "field": "ft.id",
              "order": "desc"
          },
          "pagination": {
              "page": page + 1,
              "pageSize": pageSize
          },
          "relations": [
              {
                  "module": "users",
                  "moduleAs": "users"
              }
          ]
    }
      // return false;
      const responseData = await fetchData("api/masters/getFreeTrialsWithUsers", payload);
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
  //     // {
  //     //   Header: "Subscription ID",
  //     //   accessor: "subscription_id",
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Plan Name",
  //     //   accessor: (row) => (row.subscriptions ? row.subscriptions.interval : "-"),
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Plan Price",
  //     //   accessor: (row) => (row.subscriptions ? row.subscriptions.subscriptions_amount : "-"),
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Plan Duration",
  //     //   accessor: (row) => (row.subscriptions ? row.subscriptions.interval : "-"),
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     // {
  //     //   Header: "Subscription Status",
  //     //   accessor: (row) => (row.subscriptions ? row.subscriptions.is_active : "-"),
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
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
  //     // {
  //     //   Header: "Amount Paid",
  //     //   accessor: (row) => row.subscriptions 
  //     //   ? `$${row.subscriptions.discounted_amount}` 
  //     //   : "-",       
  //     //   disableFilters: true,
  //     //   filterable: false,
  //     // },
  //     {
  //       Header: "Status",
  //       accessor: "status",
  //       disableFilters: true,
  //       filterable: false,
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
          if (col.accessor === 'sr.no') {
            // Disable sorting for the Sr.No. column
            col.sortable = false;  // Or you can use disableSortBy: true if using react-table
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
              title="Free Trial Report"
              breadcrumbItems={breadcrumbItems}
            />
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
