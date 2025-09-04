import React, { useEffect, useState } from "react";
import { Navigate, useNavigate } from "react-router-dom";
import { fetchData } from "../../src/services/fetchData";
import { toast } from "react-toastify";

const AppRoute = ({ children, location }) => {
  const [isChecking, setIsChecking] = useState(true);
  const [isActive, setIsActive] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {
    const checkUserStatus = async () => {
      try {
        const loginDetails = localStorage.getItem("login_details");
        if (loginDetails) {
          const { id } = JSON.parse(loginDetails);

          const payload = {
            modelName: "admin_user_masters",
            whereCondition: {
              id: id,
            },
          };

          const response = await fetchData("api/masters/getRecords", payload);
          const data = response.data;

          console.log("details===>", data);

          if (Array.isArray(data) && data.length > 0 && data[0].is_active === "Active") {
            setIsActive(true);
            // Store updated login details as a JSON string
            localStorage.setItem("login_details", JSON.stringify(data[0]));
          } else {
            localStorage.removeItem("login_details");
            setIsActive(false);
            return toast.warning("You are not Active user");
          }
        } else {
          setIsActive(false);
        }
      } catch (error) {
        console.error("Error checking user status:", error);
        localStorage.removeItem("login_details");
        setIsActive(false);
      } finally {
        setIsChecking(false);
      }
    };

    checkUserStatus();
  }, [navigate]);

  if (isChecking) {
    return <>{children}</>;
  }

  if (!isActive) {
    return <Navigate to={{ pathname: "/", state: { from: location } }} />;
  }

  return <>{children}</>;
};

export default AppRoute;
