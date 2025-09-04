import React, { useMemo, useState, useEffect } from "react";
import TableContainer from "../../components/Common/TableContainer";
import Breadcrumbs from "../../components/Common/Breadcrumb";
import { Row, Col, Card, CardBody, Button, Label, Container } from "reactstrap";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchData } from "../../services/fetchData";
import BasicToggle from "../../basic_components/Components/BasicToggle";

const breadcrumbItems = [];

export default function UserSubscriptionDetails() {

    // const navigate = useNavigate();
    const [data, setData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [page, setPage] = useState(0);
    const [pageSize, setPageSize] = useState(10);
    const [totalCount, setTotalCount] = useState(0);
    const [searchKeyword, setSearchKeyword] = useState("");

    useEffect(() => {
        getData();
      }, [searchKeyword, page, pageSize]);
    
      const getData = async () => {
        try {
          const payload = {
            modelName: "user_subscriptions",
            pagination: {
              page: page + 1,
              pageSize: pageSize,
            },
            relations: [
                {
                    module: "users",
                    moduleAs: "users"
                },
                {
                    module: "subscriptions",
                    moduleAs: "subscriptions"
                }
            ],
            search: {
                field_name: [
                    "users.full_name",
                    "users.first_name",
                    "users.last_name",
                    "users.email",
                    "users.mobile_number"
                ],
                searchKeyword: ""
            }
          };
          // return false;
          const responseData = await fetchData("/api/masters/getRecords", payload);
          if (responseData.code == 1) {
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
    
      const columns = useMemo(
        () => [
            {
                Header: "Sr.No.",
                accessor: "index",
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "User's Name",
                accessor: (row) => (row.users ? row.users.full_name : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Email",
                accessor: (row) => (row.users ? row.users.email : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Subscription Title",
                accessor: (row) => (row.subscriptions ? row.subscriptions.subscriptions_title : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Subscription Amount",
                accessor: (row) => (row.subscriptions ? row.subscriptions.subscriptions_amount : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Discount",
                accessor: (row) => (row.subscriptions ? row.subscriptions.discount_in_percentage : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Plan Type",
                accessor: (row) => (row.subscriptions ? row.subscriptions.interval : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Start Date",
                accessor: "start_date",
                disableFilters: true,
                filterable: false,
                Cell: ({ value }) => {
                  return value ? new Date(value).toLocaleDateString() : "-";
                },
              },
              {
                Header: "End Date",
                accessor: "end_date",
                disableFilters: true,
                filterable: false,
                Cell: ({ value }) => {
                  return value ? new Date(value).toLocaleDateString() : "-";
                },
              },
              {
                Header: "Actual End Date",
                accessor: "actual_end_date",
                disableFilters: true,
                filterable: false,
                Cell: ({ value }) => {
                  return value ? new Date(value).toLocaleDateString() : "-";
                },
              },
            {
                Header: "Additional Days",
                accessor: (row) => (row.subscriptions ? row.subscriptions.additional_days_offered : "-"),
                disableFilters: true,
                filterable: false,
            },
            {
                Header: "Status",
                accessor: "is_active",
                disableFilters: true,
                filterable: false,
                Cell: ({ row }) => (
                    <span>{row.original.is_active === "Active" ? "Inactive" : "Active"}</span>
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
              title="User Subscription Details"
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
