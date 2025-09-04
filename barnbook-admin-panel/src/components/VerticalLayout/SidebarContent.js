import React, { Component } from "react";

//  MetisMenu
import MetisMenu from "metismenujs";
//  import { withRouter } from "react-router-dom";
import { Link } from "react-router-dom";


import { withTranslation } from "react-i18next";

import { connect } from "react-redux";
import withRouter from "../Common/withRouter"

// import withRouter from "../Common/withRouter";


import {
  changeLayout,
  changeLayoutWidth,
  changeSidebarTheme,
  changeSidebarType,
  changePreloader,
} from "../../store/actions";



class SidebarContent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      pathName: this.props.router.location.pathname,
      menuData: [],
      accesMenuData: [],
      activeMenuId: null,
    };
  }


  componentDidMount() {
    this.initMenu();
  }

  UNSAFE_componentDidUpdate(prevProps, prevState) {
    if (prevProps !== this.props) {
      if (this.props.type !== prevProps.type) {
        this.initMenu();
      }
    }
    if (
      this.props.router.location.pathname !== prevProps.router.location.pathname
    ) {
      this.setState({ pathName: this.props.router.location.pathname }, () => {
        this.initMenu();
      });
      window.scrollTo({ top: 0, behavior: "smooth" });
    }
    // Ensure menu is reinitialized on state change
    if (
      prevState.menuData !== this.state.menuData ||
      prevState.accesMenuData !== this.state.accesMenuData
    ) {
      this.initMenu();
    }
  }

    initMenu() {
      // Remove any existing active classes
      const ul = document.getElementById("side-menu");
      if (ul) {
        const items = ul.getElementsByTagName("a");
        for (let i = 0; i < items.length; ++i) {
          items[i].classList.remove("active");
          const parent = items[i].parentElement;
          if (parent) {
            parent.classList.remove("mm-active");
            const parent2 = parent.parentElement;
            if (parent2) {
              parent2.classList.remove("mm-show");
              const parent3 = parent2.parentElement;
              if (parent3) {
                parent3.classList.remove("mm-active");
                const parent4 = parent3.parentElement;
                if (parent4) {
                  parent4.classList.remove("mm-active");
                }
              }
            }
          }
        }
      }

      // Initialize MetisMenu
      new MetisMenu("#side-menu");
    }

    activateParentDropdown = (item) => {
      item.classList.add("active");
      const parent = item.parentElement;

      if (parent) {
        parent.classList.add("mm-active");
        const parent2 = parent.parentElement;

        if (parent2) {
          parent2.classList.add("mm-show");

          const parent3 = parent2.parentElement;

          if (parent3) {
            parent3.classList.add("mm-active"); // li
            parent3.childNodes[0].classList.add("mm-active"); // a
            const parent4 = parent3.parentElement;
            if (parent4) {
              parent4.classList.add("mm-active");
            }
          }
        }
        return false;
      }
      return false;
    };

  render() {
    
    // const { pathName } = this.state;
    const pathName = this.props.router.location.pathname;

    // Define the inline style for the active sub-menu item
    const activeStyle = {
      color: "white",
    };
    return (
      <React.Fragment>
        <div id="sidebar-menu">
          <ul className="metismenu list-unstyled" id="side-menu">
            <li className="menu-title">{this.props.t("Menu")}</li>

            <li>
              <Link
                to="/dashboard"
                className="waves-effect"
                style={pathName === "/dashboard" ? activeStyle : {}}
              >
                <i className="ri-dashboard-line"></i>
                <span className="ms-1">{this.props.t("Dashboard")}</span>
              </Link>
            </li>
            <li>
              <Link to="/#" className="has-arrow waves-effect">
                <i className="ri-pencil-ruler-2-line"></i>
                <span className="ms-1">{this.props.t("Masters")}</span>
              </Link>
              <ul className="sub-menu">
                <li>
                  <Link to="/animal-category-master" style={pathName === "/animal-category-master" ? activeStyle : {}}>{this.props.t("Animal Category Master")}</Link>
                  <Link to="/breed-master" style={pathName === "/breed-master" ? activeStyle : {}}>{this.props.t("Breed Master")}</Link>
                  <Link to="/user-subscription-master" style={pathName === "/user-subscription-master" ? activeStyle : {}}>{this.props.t("Subscription Plans")}</Link>
                  <Link to="/country-master" style={pathName === "/country-master" ? activeStyle : {}}>{this.props.t("Country Master")}</Link>
                  <Link to="/state-master" style={pathName === "/state-master" ? activeStyle : {}}>{this.props.t("State Master")}</Link>
                </li>
              </ul>
            </li>
            <li>
              <Link to="/registered-user-list" className="waves-effect" style={pathName === "/registered-user-list" ? activeStyle : {}}>
                <i className="ri-account-circle-line"></i>
                <span className="ms-1">{this.props.t("Admin Users")}</span>
              </Link>
            </li>
            <li>
              <Link to="/user-subscriptions" className="waves-effect" style={pathName === "/user-subscriptions" ? activeStyle : {}}>
                <i className="ri-dashboard-line"></i>
                <span className="ms-1">{this.props.t("User Subscriptions")}</span>
              </Link>
            </li>
            <li>
              <Link to="/#" className="has-arrow waves-effect">
                <i className="ri-pencil-ruler-2-line"></i>
                <span className="ms-1">{this.props.t("Reports")}</span>
              </Link>
              <ul className="sub-menu">
                <li>
                  <Link to="/active-subscription-reports" style={pathName === "/active-subscription-reports" ? activeStyle : {}}>{this.props.t("Active Subscriptions Report")}</Link>
                  
                  <Link to="/churn-rate-reports" style={pathName === "/churn-rate-reports" ? activeStyle : {}}>{this.props.t("Churn Rate Report")}</Link>
                  
                  <Link to="/expired-subscription-reports" style={pathName === "/expired-subscription-reports" ? activeStyle : {}}>{this.props.t("Expired Subscriptions Report")}</Link>
                  
                  <Link to="/free-trial-reports" style={pathName === "/free-trial-reports" ? activeStyle : {}}>{this.props.t("Free Trials Report")}</Link>
                  
                  <Link to="/subscription-revenue-reports" style={pathName === "/subscription-revenue-reports" ? activeStyle : {}}>{this.props.t("Subscription Revenue Report")}</Link>
                  
                  <Link to="/trial-conversion-reports" style={pathName === "/trial-conversion-reports" ? activeStyle : {}}>{this.props.t("Trial Conversion Report")}</Link>
                  
                  <Link to="/user-acquisition-reports" style={pathName === "/user-acquisition-reports" ? activeStyle : {}}>{this.props.t("User Acquisition Report")}</Link>
                </li>
              </ul>
            </li>
            <li>
              <Link to="/#" className="has-arrow waves-effect">
                <i className="ri-pencil-ruler-2-line"></i>
                <span className="ms-1">{this.props.t("Legals")}</span>
              </Link>
              <ul className="sub-menu">
                <li>
                  <Link to="/terms-and-condition-master" style={pathName === "/terms-and-condition-master" ? activeStyle : {}}>{this.props.t("Terms and Condition Master")}</Link>
                  
                  <Link to="/privacy-policy-master" style={pathName === "/privacy-policy-master" ? activeStyle : {}}>{this.props.t("Privacy Policy Master")}</Link>
                  
                  <Link to="/subscription-term-and-condition" style={pathName === "/subscription-term-and-condition" ? activeStyle : {}}>{this.props.t("Subscription Term And Condition")}</Link>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </React.Fragment>
    );
  }
}

const mapStatetoProps = (state) => {
  return { ...state.Layout };
};

export default withRouter(
  connect(mapStatetoProps, {
    changeLayout,
    changeSidebarTheme,
    changeSidebarType,
    changeLayoutWidth,
    changePreloader,
  })(withTranslation()(SidebarContent))
);