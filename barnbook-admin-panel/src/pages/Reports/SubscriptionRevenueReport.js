import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import BasicToggle from "../../basic_components/Components/BasicToggle";

const breadcrumbItems = [];

export default function SubscriptionRevenueReport() {
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
    "subscription_id",
    "total_revenue",
    "subscription_interval"
  ];

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    try {
      const responseData = await fetchData("api/masters/getTotalSubscriptionRevenue");
      if (responseData.code === 1) {
        const revenueData = responseData.data;
  
        // Update the data format to match the accessor
        revenueData.forEach((element, index) => {
          element.index = page * pageSize + (index + 1);
          // Rename 'subscriptions.subscription_interval' to 'subscription_interval'
          element.subscription_interval = element["subscription_interval"];
        }); 
  
        setTotalCount(revenueData.length);
        const sortedData = revenueData.sort((a, b) => b.index - a.index);
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

  

  //  const columns = useMemo(() => [
  //   {
  //     Header: "Sr.No.",
  //     accessor:"index",
  //     disableFilters: true,
  //   },
  //   {
  //     Header: "Subscription ID",
  //     accessor: "subscription_id",
  //     disableFilters: true,
  //   },
  //   {
  //     Header: "Total Revenue",
  //     accessor: "total_revenue",
  //     disableFilters: true,
  //   },
  //   {
  //     Header: "Subscription Interval",
  //     accessor: "subscriptions.subscription_interval",
  //     disableFilters: true,
  //     Cell: ({ row }) => (
  //       <span>{row.original.subscription_interval}</span>
  //     ),
  //   },
  // ], []);

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
              title="Subscription Revenue Report"
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
