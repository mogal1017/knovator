import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { fetchData } from "../../services/fetchData";

const breadcrumbItems = [];

export default function TrialConversionReport() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [pageSize, setPageSize] = useState(10);
  const [totalCount, setTotalCount] = useState(0);
  const [searchKeyword, setSearchKeyword] = useState("");

    const customColumnNames = {
    "index": "sr.no",
    "free_trials.start_date":"Free Trial Start Date",
    "free_trials.end_date":"Free Trial End Date",
    "subscription_id": "Subscriptions Id",
    "start_date":"Subscriptions Start Date",
    "end_date": "Subscriptions end Date",
  };

  // Define the required columns here
  const requiredColumns = [
    "index",
    "user_id",
    "users.full_name",
    "users.email",
    "free_trials.start_date",
    "free_trials.end_date",
    "subscription_id",
    "start_date",
    "end_date",
  ];

  useEffect(() => {
    getData();
  }, [searchKeyword, page, pageSize]);

  const getData = async () => {
    try {
      const payload = {
          "modelName": "users",
          "relations": [
              {
                  "module": "free_trials",
                  "moduleAs": "free_trials",
                  "required": true
              },
              {
                  "module": "user_subscriptions",
                  "moduleAs": "user_subscriptions",
                  "required": true
              }
          ],
              "orderByModel": {
                "field": "u.id",
                "order": "desc"
            },
          "pagination": {
              "page": page + 1,
              "pageSize": pageSize
          },
          "search": {
              "field_name": [ 
                  "users.full_name",
                  "users.email",
                  "users.mobile_number",
                  "free_trials.status",
                  "free_trials.end_date",
                  "free_trials.status",
                  "user_subscriptions.start_date",
                  "user_subscriptions.end_date",
                  "user_subscriptions.actual_end_date"
              ],
              "searchKeyword": searchKeyword
          }
      };
      const responseData = await fetchData("api/masters/trialConversionReport", payload);
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
  
    return columnsToShow.map((col) => {
      const colPath = col.split(".");
      const displayName = (customColumnNames[col] || colPath[colPath.length - 1].replace(/_/g, " ")).toUpperCase();
  
      return {
        Header: displayName,
        accessor: createAccessor(colPath),
        id: col,
        disableFilters: true,
        filterable: false,
        disableSortBy: col === "index",  // Disable sorting for the Sr.No. column
        Cell: ({ value }) => {
          if (
            ["free_trials.start_date", "free_trials.end_date", "start_date", "end_date"].includes(col) && value
          ) {
            return new Date(value).toLocaleDateString("en-US", { year: "numeric", month: "2-digit", day: "2-digit" });
          }
          if (col === "is_active") {
            return value === "Active" ? "Active" : "Inactive";
          }
          return value;
        },
      };
    });
  };
  

  const columns = useMemo(() => generateColumns(data, requiredColumns), [data, requiredColumns]);

  return (
    <React.Fragment>
      <div className="page-content">
        <Container fluid>
          <div style={{ display: "flex", alignItems: "center", marginBottom: "10px" }}>
            <Breadcrumbs title="Trial Conversion Report" breadcrumbItems={breadcrumbItems} />
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
                onPageSizeChange={(data) => setPageSize(data)}
                nextToPage={() => setPage(page + 1)}
                previousToPage={() => setPage(page - 1)}
                onSearchInputData={(inputValue) => setSearchKeyword(inputValue)}
              />
            </CardBody>
          </Card>
        </Container>
      </div>
    </React.Fragment>
  );
}
