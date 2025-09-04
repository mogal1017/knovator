import React from "react";
import { Navigate, useParams } from "react-router-dom";

// Authentication related pages
import Login from "../pages/Authentication/Login";
import Logout from "../pages/Authentication/Logout";
import Register from "../pages/Authentication/Register";
import ForgetPwd from "../pages/Authentication/ForgetPassword";
import AuthLockScreen from "../pages/Authentication/AuthLockScreen";

// Dashboard
import Dashboard from "../pages/Dashboard/index";

//Utility
import Maintenance from "../pages/Utility/Maintenance";
import CommingSoon from "../pages/Utility/CommingSoon";
import Error404 from "../pages/Utility/Error404";
import Error500 from "../pages/Utility/Error500";

// Inner Authentication
import Login1 from "../pages/AuthenticationInner/Login";
import Register1 from "../pages/AuthenticationInner/Register";
import ForgetPwd1 from "../pages/AuthenticationInner/ForgetPassword";

// Foundation (Master)
import EnvironmentList from "../pages/Masters/Environment/EnvironmentList";
import EnvironmentCreate from "../pages/Masters/Environment/EnvironmentCreate";

// Action Master
import ActionMasterList from "../pages/ActionMaster/ActionMasterList";
import ActionMasterCreate from "../pages/ActionMaster/ActionMasterCreate";
import ActionMasterView from "../pages/ActionMaster/ActionMasterView";
import RegistedUserList from "../pages/Authentication/RegistedUserList";
import AnimalCategoryMasterList from "../pages/Masters/AnimalCategoryMaster/AnimalCategoryMasterList";
import FreeTrialConfigurationMasterList from "../pages/Masters/FreeTrialConfigurationMaster/FreeTrialConfigurationMasterList";
import UserSubscriptionMasterList from "../pages/Masters/UserSubscriptionMaster/UserSubscriptionMasterList";

import TermsAndConditionMasterList from "../pages/Legals/Terms&ConditionMaster/TermsAndConditionMasterList";
import PrivacyPolicyMaster from "../pages/Legals/PrivacyPolicyMaster/PrivacyPolicyMaster";
import SubscriptionTermAndCondition from "../pages/Legals/SubscriptionTermAndCondition/SubscriptionTermAndCondition";
import AnimalCategoryMasterCreate from "../pages/Masters/AnimalCategoryMaster/AnimalCategoryMasterCreate";
import BreedMasterList from "../pages/Masters/BreedMaster/BreedMasterList";
import BreedMasterCreate from "../pages/Masters/BreedMaster/BreedMasterCreate";
import CountryMasterList from "../pages/Masters/CountryMaster/CountryMasterList";
import CountryMasterCreate from "../pages/Masters/CountryMaster/CountryMasterCreate";
import StateMasterList from "../pages/Masters/StateMaster/StateMasterList";
import StateMasterCreate from "../pages/Masters/StateMaster/StateMasterCreate";
import UserSubscriptionMasterCreate from "../pages/Masters/UserSubscriptionMaster/UserSubscriptionMasterCreate";
import UserSubscriptionDetails from "../pages/UserSubscriptionsDetails/UserSubscriptionDetails";
import ActiveSubscriptionsReport from "../pages/Reports/ActiveSubscriptionsReport";
import ChurnRateReport from "../pages/Reports/ChurnRateReport";
import ExpiredSubscriptionsReport from "../pages/Reports/ExpiredSubscriptionsReport";
import FreeTrialsReport from "../pages/Reports/FreeTrialsReport";
import SubscriptionRevenueReport from "../pages/Reports/SubscriptionRevenueReport";
import TrialConversionReport from "../pages/Reports/TrialConversionReport";
import UserAcquisitionReport from "../pages/Reports/UserAcquisitionReport";

const authProtectedRoutes = [
  // >>>>>>>>>>  Dashboard  <<<<<<<<<<
  { path: "/dashboard", component: <Dashboard /> },

  //⭕>>>>>>>>>>  Masters  <<<<<<<<<<⭕

  // Environment
  { path: "/environment-list", component: <EnvironmentList /> },
  { path: "/environment-create", component: <EnvironmentCreate /> },
  { path: "/environment-create/:id", component: <EnvironmentCreate /> },

  // Dummy Master
  { path: "/action-master-list", component: <ActionMasterList /> },
  { path: "/action-master-create", component: <ActionMasterCreate /> },
  { path: "/action-master-create/:id", component: <ActionMasterCreate /> }, 
  { path: "/action-master-view/:id", component: <ActionMasterView /> }, 

  { path: "/registered-user-list", component: <RegistedUserList /> },
  { path: "/register", component: <Register /> },
  { path: "/register/:id", component: <Register /> },


  // animal masters route
  { path: "/animal-category-master", component: <AnimalCategoryMasterList /> },
  { path: "/animal-category-master-create", component: <AnimalCategoryMasterCreate /> },
  { path: "/animal-category-master-create/:id", component: <AnimalCategoryMasterCreate /> },

  // free trial master
  { path: "/free-trial-config-master", component: <FreeTrialConfigurationMasterList /> }, 

  // user subscription plan master
  { path: "/user-subscription-master", component: <UserSubscriptionMasterList /> },
  { path: "/user-subscription-master-create", component: <UserSubscriptionMasterCreate /> },
  { path: "/user-subscription-master-create/:id", component: <UserSubscriptionMasterCreate /> },

  // breed master
  { path: "/breed-master", component: <BreedMasterList /> },
  { path: "/breed-master-create", component: <BreedMasterCreate /> },
  { path: "/breed-master-create/:id", component: <BreedMasterCreate /> },
  
  // country master
  { path: "/country-master", component: <CountryMasterList /> },
  { path: "/country-master-create", component: <CountryMasterCreate /> },
  { path: "/country-master-create/:id", component: <CountryMasterCreate /> },

  // state master
  { path: "/state-master", component: <StateMasterList /> },
  { path: "/state-master-create", component: <StateMasterCreate /> },
  { path: "/state-master-create/:id", component: <StateMasterCreate /> },

  // users subscription listing
  { path: "/user-subscriptions", component: <UserSubscriptionDetails /> },

  // reports 
  { path: "/active-subscription-reports", component: <ActiveSubscriptionsReport /> },
  { path: "/churn-rate-reports", component: <ChurnRateReport /> },
  { path: "/expired-subscription-reports", component: <ExpiredSubscriptionsReport /> },
  { path: "/free-trial-reports", component: <FreeTrialsReport /> },
  { path: "/subscription-revenue-reports", component: <SubscriptionRevenueReport /> },
  { path: "/trial-conversion-reports", component: <TrialConversionReport /> },
  { path: "/user-acquisition-reports", component: <UserAcquisitionReport /> },


  // legal routes
  { path: "/terms-and-condition-master", component: <TermsAndConditionMasterList /> },
  { path: "/privacy-policy-master", component: <PrivacyPolicyMaster /> },
  { path: "/subscription-term-and-condition", component: <SubscriptionTermAndCondition /> },
  

  // this route should be at the end of all other routes
  { path: "/", exact: true, component: <Navigate to="/dashboard" /> },
];

const publicRoutes = [
  { path: "/logout", component: <Logout /> },
  { path: "/", component: <Login /> },
  { path: "/forgot-password", component: <ForgetPwd /> },
  { path: "/lock-screen", component: <AuthLockScreen /> },

  // Authentication Inner
  { path: "/auth-login", component: <Login1 /> },
  { path: "/auth-register", component: <Register1 /> },
  { path: "/auth-recoverpw", component: <ForgetPwd1 /> },

  { path: "/maintenance", component: <Maintenance /> },
  { path: "/comingsoon", component: <CommingSoon /> },
  { path: "/404", component: <Error404 /> },
  { path: "/500", component: <Error500 /> },
];

export { authProtectedRoutes, publicRoutes };
