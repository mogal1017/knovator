--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.18 (Ubuntu 14.18-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: enum_admin_user_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_admin_user_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_admin_user_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_animal_categories_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_animal_categories_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_animal_categories_is_active OWNER TO barnbookprd;

--
-- Name: enum_animal_documents_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_animal_documents_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_animal_documents_is_active OWNER TO barnbookprd;

--
-- Name: enum_animal_shows_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_animal_shows_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_animal_shows_is_active OWNER TO barnbookprd;

--
-- Name: enum_animals_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_animals_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_animals_is_active OWNER TO barnbookprd;

--
-- Name: enum_animals_sex; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_animals_sex AS ENUM (
    'Male',
    'Female',
    'Other'
);


ALTER TYPE public.enum_animals_sex OWNER TO barnbookprd;

--
-- Name: enum_brand_values_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_brand_values_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_brand_values_is_active OWNER TO barnbookprd;

--
-- Name: enum_breed_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_breed_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_breed_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_camps_contests_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_camps_contests_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_camps_contests_is_active OWNER TO barnbookprd;

--
-- Name: enum_configurations_authentication_type; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_configurations_authentication_type AS ENUM (
    'SMS',
    'Email'
);


ALTER TYPE public.enum_configurations_authentication_type OWNER TO barnbookprd;

--
-- Name: enum_configurations_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_configurations_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_configurations_is_active OWNER TO barnbookprd;

--
-- Name: enum_country_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_country_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_country_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_eid_values_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_eid_values_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_eid_values_is_active OWNER TO barnbookprd;

--
-- Name: enum_excersize_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_excersize_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_excersize_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_excersize_schedules_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_excersize_schedules_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_excersize_schedules_is_active OWNER TO barnbookprd;

--
-- Name: enum_free_trials_status; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_free_trials_status AS ENUM (
    'Active',
    'Inactive',
    'active',
    'expired'
);


ALTER TYPE public.enum_free_trials_status OWNER TO barnbookprd;

--
-- Name: enum_medicine_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_medicine_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_medicine_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_medicine_masters_type; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_medicine_masters_type AS ENUM (
    'medicine',
    'vaccine'
);


ALTER TYPE public.enum_medicine_masters_type OWNER TO barnbookprd;

--
-- Name: enum_notification_logs_is_read; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_notification_logs_is_read AS ENUM (
    'true',
    'false',
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_notification_logs_is_read OWNER TO barnbookprd;

--
-- Name: enum_payment_methods_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_payment_methods_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_payment_methods_is_active OWNER TO barnbookprd;

--
-- Name: enum_premise_values_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_premise_values_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_premise_values_is_active OWNER TO barnbookprd;

--
-- Name: enum_products_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_products_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_products_is_active OWNER TO barnbookprd;

--
-- Name: enum_ration_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_ration_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_ration_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_ration_schedules_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_ration_schedules_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_ration_schedules_is_active OWNER TO barnbookprd;

--
-- Name: enum_show_events_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_show_events_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_show_events_is_active OWNER TO barnbookprd;

--
-- Name: enum_show_type_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_show_type_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_show_type_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_shows_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_shows_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_shows_is_active OWNER TO barnbookprd;

--
-- Name: enum_state_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_state_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_state_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_subscription_plans_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_subscription_plans_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_subscription_plans_is_active OWNER TO barnbookprd;

--
-- Name: enum_subscriptions_interval; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_subscriptions_interval AS ENUM (
    'Yearly',
    'Quarterly',
    'Monthly',
    'Weekly',
    'Daily'
);


ALTER TYPE public.enum_subscriptions_interval OWNER TO barnbookprd;

--
-- Name: enum_subscriptions_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_subscriptions_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_subscriptions_is_active OWNER TO barnbookprd;

--
-- Name: enum_tatto_values_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_tatto_values_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_tatto_values_is_active OWNER TO barnbookprd;

--
-- Name: enum_terms_and_condition_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_terms_and_condition_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_terms_and_condition_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_transaction_details_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_transaction_details_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_transaction_details_is_active OWNER TO barnbookprd;

--
-- Name: enum_treatment_logs_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_treatment_logs_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_treatment_logs_is_active OWNER TO barnbookprd;

--
-- Name: enum_user_associations_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_associations_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_user_associations_is_active OWNER TO barnbookprd;

--
-- Name: enum_user_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_user_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_user_subscriptions_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_subscriptions_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_user_subscriptions_is_active OWNER TO barnbookprd;

--
-- Name: enum_user_subscriptions_subscription_status; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_subscriptions_subscription_status AS ENUM (
    'Active',
    'Inactive',
    'Cancelled',
    'Suspended',
    'Approval pending',
    'Approval Pending',
    'Free Trial'
);


ALTER TYPE public.enum_user_subscriptions_subscription_status OWNER TO barnbookprd;

--
-- Name: enum_user_tax_documents_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_tax_documents_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_user_tax_documents_is_active OWNER TO barnbookprd;

--
-- Name: enum_user_yqcas_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_user_yqcas_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_user_yqcas_is_active OWNER TO barnbookprd;

--
-- Name: enum_users_access_level; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_users_access_level AS ENUM (
    'beginner',
    'intermediate',
    'exprt',
    'expert'
);


ALTER TYPE public.enum_users_access_level OWNER TO barnbookprd;

--
-- Name: enum_users_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_users_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_users_is_active OWNER TO barnbookprd;

--
-- Name: enum_users_role; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_users_role AS ENUM (
    'user',
    'admin'
);


ALTER TYPE public.enum_users_role OWNER TO barnbookprd;

--
-- Name: enum_vaccine_logs_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_vaccine_logs_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_vaccine_logs_is_active OWNER TO barnbookprd;

--
-- Name: enum_validation_values_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_validation_values_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_validation_values_is_active OWNER TO barnbookprd;

--
-- Name: enum_veterinarian_masters_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_veterinarian_masters_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_veterinarian_masters_is_active OWNER TO barnbookprd;

--
-- Name: enum_water_logs_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_water_logs_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_water_logs_is_active OWNER TO barnbookprd;

--
-- Name: enum_weight_logs_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_weight_logs_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_weight_logs_is_active OWNER TO barnbookprd;

--
-- Name: enum_weight_targets_is_active; Type: TYPE; Schema: public; Owner: barnbookprd
--

CREATE TYPE public.enum_weight_targets_is_active AS ENUM (
    'Active',
    'Inactive'
);


ALTER TYPE public.enum_weight_targets_is_active OWNER TO barnbookprd;

--
-- Name: set_default_photo(); Type: FUNCTION; Schema: public; Owner: barnbookprd
--

CREATE FUNCTION public.set_default_photo() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- If the new value of the 'photo' column is NULL, set it to the default path
    IF NEW.photo IS NULL THEN
        NEW.photo := 'uploads/users/profileImage/1731042483613-777.png';
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.set_default_photo() OWNER TO barnbookprd;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_user_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.admin_user_masters (
    id integer NOT NULL,
    full_name character varying(255) NOT NULL,
    user_name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255),
    country_calling_code_id integer,
    mobile_number character varying(255),
    otp character varying(255),
    otp_expiry timestamp with time zone,
    is_active public.enum_admin_user_masters_is_active DEFAULT 'Active'::public.enum_admin_user_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.admin_user_masters OWNER TO barnbookprd;

--
-- Name: admin_user_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.admin_user_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_user_masters_id_seq OWNER TO barnbookprd;

--
-- Name: admin_user_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.admin_user_masters_id_seq OWNED BY public.admin_user_masters.id;


--
-- Name: animal_categories; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.animal_categories (
    id integer NOT NULL,
    is_active public.enum_animal_categories_is_active DEFAULT 'Active'::public.enum_animal_categories_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    category character varying(255) NOT NULL,
    icon character varying(255)
);


ALTER TABLE public.animal_categories OWNER TO barnbookprd;

--
-- Name: animal_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.animal_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_categories_id_seq OWNER TO barnbookprd;

--
-- Name: animal_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.animal_categories_id_seq OWNED BY public.animal_categories.id;


--
-- Name: animal_documents; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.animal_documents (
    id integer NOT NULL,
    document_name character varying(255),
    file_path character varying(255) NOT NULL,
    valid_date character varying(255),
    document_type character varying(255),
    animal_id integer NOT NULL,
    is_active public.enum_animal_documents_is_active DEFAULT 'Active'::public.enum_animal_documents_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.animal_documents OWNER TO barnbookprd;

--
-- Name: animal_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.animal_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_documents_id_seq OWNER TO barnbookprd;

--
-- Name: animal_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.animal_documents_id_seq OWNED BY public.animal_documents.id;


--
-- Name: animal_shows; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.animal_shows (
    id integer NOT NULL,
    user_id integer NOT NULL,
    show_id integer NOT NULL,
    animal_id integer NOT NULL,
    show_records jsonb DEFAULT '{}'::jsonb,
    is_active public.enum_animal_shows_is_active DEFAULT 'Active'::public.enum_animal_shows_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.animal_shows OWNER TO barnbookprd;

--
-- Name: animal_shows_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.animal_shows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_shows_id_seq OWNER TO barnbookprd;

--
-- Name: animal_shows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.animal_shows_id_seq OWNED BY public.animal_shows.id;


--
-- Name: animals; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.animals (
    id integer NOT NULL,
    user_id integer,
    animal_category_id integer,
    cattle_name character varying(255) NOT NULL,
    tag character varying(255) NOT NULL,
    dob timestamp with time zone NOT NULL,
    age character varying(255),
    sex public.enum_animals_sex NOT NULL,
    breed_id integer,
    show_type_id integer,
    exhibitor_id integer,
    photo character varying(255),
    purchase_date timestamp with time zone,
    breeder character varying(255),
    genetics character varying(255),
    breeding_method character varying(255),
    price character varying(255),
    is_archived boolean DEFAULT false,
    is_active public.enum_animals_is_active DEFAULT 'Active'::public.enum_animals_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    note text,
    trial_allowed_animals boolean DEFAULT false
);


ALTER TABLE public.animals OWNER TO barnbookprd;

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_id_seq OWNER TO barnbookprd;

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.animals_id_seq OWNED BY public.animals.id;


--
-- Name: brand_values; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.brand_values (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    brand_photo character varying(255) NOT NULL,
    state_country character varying(255) NOT NULL,
    brand_date timestamp with time zone NOT NULL,
    brand_location character varying(255) NOT NULL,
    is_active public.enum_brand_values_is_active DEFAULT 'Active'::public.enum_brand_values_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brand_values OWNER TO barnbookprd;

--
-- Name: brand_values_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.brand_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_values_id_seq OWNER TO barnbookprd;

--
-- Name: brand_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.brand_values_id_seq OWNED BY public.brand_values.id;


--
-- Name: breed_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.breed_masters (
    id integer NOT NULL,
    breed_name character varying(255) NOT NULL,
    animal_category_id integer,
    is_active public.enum_breed_masters_is_active DEFAULT 'Active'::public.enum_breed_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.breed_masters OWNER TO barnbookprd;

--
-- Name: breed_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.breed_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.breed_masters_id_seq OWNER TO barnbookprd;

--
-- Name: breed_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.breed_masters_id_seq OWNED BY public.breed_masters.id;


--
-- Name: camps_contests; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.camps_contests (
    id integer NOT NULL,
    user_id integer,
    animal_id integer,
    name character varying(255),
    date timestamp with time zone,
    "time" character varying(255),
    city character varying(255),
    location character varying(255),
    cost character varying(255),
    parent_notes character varying(255),
    counselor_notes character varying(255),
    awards character varying(255),
    showman_notes character varying(255),
    is_active public.enum_camps_contests_is_active DEFAULT 'Active'::public.enum_camps_contests_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    banner character varying(255),
    checklist jsonb
);


ALTER TABLE public.camps_contests OWNER TO barnbookprd;

--
-- Name: camps_contests_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.camps_contests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.camps_contests_id_seq OWNER TO barnbookprd;

--
-- Name: camps_contests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.camps_contests_id_seq OWNED BY public.camps_contests.id;


--
-- Name: configurations; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.configurations (
    id integer NOT NULL,
    android_current_version_number character varying(255),
    ios_current_version_number character varying(255),
    is_update_mandatory_for_android boolean,
    is_update_mandatory_for_ios boolean,
    android_store_url character varying(255),
    ios_store_url character varying(255),
    authentication_type public.enum_configurations_authentication_type,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    free_trial_days integer,
    is_active public.enum_configurations_is_active DEFAULT 'Active'::public.enum_configurations_is_active,
    landing_screen_image character varying(255),
    is_ios_pay_enable boolean DEFAULT false,
    paypal_product_id character varying(255),
    free_trial_features jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.configurations OWNER TO barnbookprd;

--
-- Name: configurations_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.configurations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configurations_id_seq OWNER TO barnbookprd;

--
-- Name: configurations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.configurations_id_seq OWNED BY public.configurations.id;


--
-- Name: country_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.country_masters (
    id integer NOT NULL,
    country_code character varying(255),
    country_name character varying(255) NOT NULL,
    country_calling_code character varying(255),
    flag_icon character varying(255),
    timezone character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    is_active public.enum_country_masters_is_active DEFAULT 'Active'::public.enum_country_masters_is_active
);


ALTER TABLE public.country_masters OWNER TO barnbookprd;

--
-- Name: country_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.country_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_masters_id_seq OWNER TO barnbookprd;

--
-- Name: country_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.country_masters_id_seq OWNED BY public.country_masters.id;


--
-- Name: eid_values; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.eid_values (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    number integer NOT NULL,
    type character varying(255) NOT NULL,
    address character varying(255),
    date timestamp with time zone NOT NULL,
    tag_location character varying(255),
    is_active public.enum_eid_values_is_active DEFAULT 'Active'::public.enum_eid_values_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.eid_values OWNER TO barnbookprd;

--
-- Name: eid_values_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.eid_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eid_values_id_seq OWNER TO barnbookprd;

--
-- Name: eid_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.eid_values_id_seq OWNED BY public.eid_values.id;


--
-- Name: excersize_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.excersize_masters (
    id integer NOT NULL,
    animal_category_id integer NOT NULL,
    animal_breed_id integer NOT NULL,
    excersize_name character varying(255) NOT NULL,
    is_active public.enum_excersize_masters_is_active DEFAULT 'Active'::public.enum_excersize_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.excersize_masters OWNER TO barnbookprd;

--
-- Name: excersize_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.excersize_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.excersize_masters_id_seq OWNER TO barnbookprd;

--
-- Name: excersize_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.excersize_masters_id_seq OWNED BY public.excersize_masters.id;


--
-- Name: excersize_schedules; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.excersize_schedules (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    excersize_id integer NOT NULL,
    days jsonb NOT NULL,
    timings jsonb NOT NULL,
    duration double precision NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    is_active public.enum_excersize_schedules_is_active DEFAULT 'Active'::public.enum_excersize_schedules_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.excersize_schedules OWNER TO barnbookprd;

--
-- Name: excersize_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.excersize_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.excersize_schedules_id_seq OWNER TO barnbookprd;

--
-- Name: excersize_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.excersize_schedules_id_seq OWNED BY public.excersize_schedules.id;


--
-- Name: free_trials; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.free_trials (
    id integer NOT NULL,
    user_id integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone,
    status public.enum_free_trials_status DEFAULT 'active'::public.enum_free_trials_status,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.free_trials OWNER TO barnbookprd;

--
-- Name: free_trials_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.free_trials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.free_trials_id_seq OWNER TO barnbookprd;

--
-- Name: free_trials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.free_trials_id_seq OWNED BY public.free_trials.id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.invoices (
    id integer NOT NULL,
    user_id integer NOT NULL,
    stripe_transaction_id character varying(255),
    subscription_id integer NOT NULL,
    amount character varying(255),
    stripe_data_json json,
    transaction_date_time timestamp with time zone,
    payment_method character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    subscriptions_id integer
);


ALTER TABLE public.invoices OWNER TO barnbookprd;

--
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.invoices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_id_seq OWNER TO barnbookprd;

--
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;


--
-- Name: medicine_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.medicine_masters (
    id integer NOT NULL,
    type public.enum_medicine_masters_type,
    medicine_name character varying(255),
    method character varying(255),
    withdrawl character varying(255),
    withdrawl_unit character varying(255),
    brand character varying(255),
    notes character varying(255),
    is_active public.enum_medicine_masters_is_active DEFAULT 'Active'::public.enum_medicine_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer,
    recommended_dosage character varying(255)
);


ALTER TABLE public.medicine_masters OWNER TO barnbookprd;

--
-- Name: medicine_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.medicine_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicine_masters_id_seq OWNER TO barnbookprd;

--
-- Name: medicine_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.medicine_masters_id_seq OWNED BY public.medicine_masters.id;


--
-- Name: notification_logs; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.notification_logs (
    id integer NOT NULL,
    exhibitor_id integer NOT NULL,
    barn_manager_id integer NOT NULL,
    notification_title character varying(255),
    description character varying(255),
    is_read public.enum_notification_logs_is_read DEFAULT 'Inactive'::public.enum_notification_logs_is_read,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.notification_logs OWNER TO barnbookprd;

--
-- Name: notification_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.notification_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_logs_id_seq OWNER TO barnbookprd;

--
-- Name: notification_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.notification_logs_id_seq OWNED BY public.notification_logs.id;


--
-- Name: premise_values; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.premise_values (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    premise_id character varying(255) NOT NULL,
    premise_number character varying(255),
    breeder character varying(255),
    premise_date timestamp with time zone,
    tag_location character varying(255),
    is_active public.enum_premise_values_is_active DEFAULT 'Active'::public.enum_premise_values_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.premise_values OWNER TO barnbookprd;

--
-- Name: premise_values_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.premise_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.premise_values_id_seq OWNER TO barnbookprd;

--
-- Name: premise_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.premise_values_id_seq OWNED BY public.premise_values.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.products (
    id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    product_description text,
    product_type character varying(255),
    product_category character varying(255),
    image_url character varying(255),
    home_url character varying(255),
    is_active public.enum_products_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    product_id character varying(255) NOT NULL,
    event_id character varying(255)
);


ALTER TABLE public.products OWNER TO barnbookprd;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO barnbookprd;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: ration_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.ration_masters (
    id integer NOT NULL,
    animal_category_id integer NOT NULL,
    ration_name character varying(255),
    ration_details jsonb,
    is_active public.enum_ration_masters_is_active DEFAULT 'Active'::public.enum_ration_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.ration_masters OWNER TO barnbookprd;

--
-- Name: ration_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.ration_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ration_masters_id_seq OWNER TO barnbookprd;

--
-- Name: ration_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.ration_masters_id_seq OWNED BY public.ration_masters.id;


--
-- Name: ration_schedules; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.ration_schedules (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    ration_id integer NOT NULL,
    days jsonb NOT NULL,
    timings jsonb NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    is_active public.enum_ration_schedules_is_active DEFAULT 'Active'::public.enum_ration_schedules_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.ration_schedules OWNER TO barnbookprd;

--
-- Name: ration_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.ration_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ration_schedules_id_seq OWNER TO barnbookprd;

--
-- Name: ration_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.ration_schedules_id_seq OWNED BY public.ration_schedules.id;


--
-- Name: show_events; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.show_events (
    id integer NOT NULL,
    show_id integer NOT NULL,
    event_title character varying(255) NOT NULL,
    is_active public.enum_show_events_is_active DEFAULT 'Active'::public.enum_show_events_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "time" character varying(255) NOT NULL,
    animal_id integer
);


ALTER TABLE public.show_events OWNER TO barnbookprd;

--
-- Name: show_events_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.show_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.show_events_id_seq OWNER TO barnbookprd;

--
-- Name: show_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.show_events_id_seq OWNED BY public.show_events.id;


--
-- Name: show_type_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.show_type_masters (
    id integer NOT NULL,
    show_type character varying(255) NOT NULL,
    is_active public.enum_show_type_masters_is_active DEFAULT 'Active'::public.enum_show_type_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.show_type_masters OWNER TO barnbookprd;

--
-- Name: show_type_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.show_type_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.show_type_masters_id_seq OWNER TO barnbookprd;

--
-- Name: show_type_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.show_type_masters_id_seq OWNED BY public.show_type_masters.id;


--
-- Name: shows; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.shows (
    id integer NOT NULL,
    user_id integer,
    animal_id integer,
    name character varying(255),
    date timestamp with time zone,
    "time" character varying(255),
    city character varying(255),
    location character varying(255),
    fees character varying(255),
    type character varying(255),
    sactioned_by character varying(255),
    show_notes character varying(255),
    is_active public.enum_shows_is_active DEFAULT 'Active'::public.enum_shows_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    banner_image character varying(255),
    judges jsonb,
    checklist jsonb,
    selected_animals jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.shows OWNER TO barnbookprd;

--
-- Name: shows_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.shows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shows_id_seq OWNER TO barnbookprd;

--
-- Name: shows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.shows_id_seq OWNED BY public.shows.id;


--
-- Name: state_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.state_masters (
    id integer NOT NULL,
    state_code character varying(255),
    state_name character varying(255) NOT NULL,
    country_id integer NOT NULL,
    is_active public.enum_state_masters_is_active DEFAULT 'Active'::public.enum_state_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.state_masters OWNER TO barnbookprd;

--
-- Name: state_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.state_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_masters_id_seq OWNER TO barnbookprd;

--
-- Name: state_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.state_masters_id_seq OWNED BY public.state_masters.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    subscriptions_title character varying(255) NOT NULL,
    subscriptions_tag character varying(255),
    subscriptions_amount double precision,
    discount_in_percentage character varying(255),
    discounted_amount double precision,
    plan_offers json,
    "interval" public.enum_subscriptions_interval,
    additional_days_offered character varying(255),
    is_active public.enum_subscriptions_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    plan_id character varying(255),
    features jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.subscriptions OWNER TO barnbookprd;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_id_seq OWNER TO barnbookprd;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: tatto_values; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.tatto_values (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    tatto_id character varying(255) NOT NULL,
    tatto_number character varying(255),
    address character varying(255),
    tatto_date timestamp with time zone,
    tatto_location character varying(255),
    is_active public.enum_tatto_values_is_active DEFAULT 'Active'::public.enum_tatto_values_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tatto_values OWNER TO barnbookprd;

--
-- Name: tatto_values_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.tatto_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tatto_values_id_seq OWNER TO barnbookprd;

--
-- Name: tatto_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.tatto_values_id_seq OWNED BY public.tatto_values.id;


--
-- Name: temp_mobile_number_verifications; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.temp_mobile_number_verifications (
    id integer NOT NULL,
    mobile_number character varying(255),
    otp character varying(255),
    otp_expiry timestamp with time zone,
    country_calling_code_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.temp_mobile_number_verifications OWNER TO barnbookprd;

--
-- Name: temp_mobile_number_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.temp_mobile_number_verifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_mobile_number_verifications_id_seq OWNER TO barnbookprd;

--
-- Name: temp_mobile_number_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.temp_mobile_number_verifications_id_seq OWNED BY public.temp_mobile_number_verifications.id;


--
-- Name: terms_and_condition_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.terms_and_condition_masters (
    id integer NOT NULL,
    terms_and_condition text,
    is_active public.enum_terms_and_condition_masters_is_active DEFAULT 'Active'::public.enum_terms_and_condition_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    privacy_policy text,
    subscription_term_and_condition text
);


ALTER TABLE public.terms_and_condition_masters OWNER TO barnbookprd;

--
-- Name: terms_and_condition_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.terms_and_condition_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terms_and_condition_masters_id_seq OWNER TO barnbookprd;

--
-- Name: terms_and_condition_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.terms_and_condition_masters_id_seq OWNED BY public.terms_and_condition_masters.id;


--
-- Name: treatment_logs; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.treatment_logs (
    id integer NOT NULL,
    animal_id integer,
    treatment_date character varying(255),
    injury_illness_info character varying(255),
    temprature character varying(255),
    action character varying(255),
    notes character varying(255),
    medicine_id integer,
    dose character varying(255),
    method character varying(255),
    reason character varying(255),
    is_active public.enum_treatment_logs_is_active DEFAULT 'Active'::public.enum_treatment_logs_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    temprature_unit character varying(255),
    dose_unit character varying(255)
);


ALTER TABLE public.treatment_logs OWNER TO barnbookprd;

--
-- Name: treatment_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.treatment_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.treatment_logs_id_seq OWNER TO barnbookprd;

--
-- Name: treatment_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.treatment_logs_id_seq OWNED BY public.treatment_logs.id;


--
-- Name: user_associations; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.user_associations (
    id integer NOT NULL,
    user_id integer,
    name character varying(255),
    is_active public.enum_user_associations_is_active DEFAULT 'Active'::public.enum_user_associations_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    photo character varying(255)
);


ALTER TABLE public.user_associations OWNER TO barnbookprd;

--
-- Name: user_associations_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.user_associations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_associations_id_seq OWNER TO barnbookprd;

--
-- Name: user_associations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.user_associations_id_seq OWNED BY public.user_associations.id;


--
-- Name: user_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.user_masters (
    id integer NOT NULL,
    full_name character varying(255),
    mobile_number character varying(255),
    email_id character varying(255),
    otp character varying(255),
    access_level character varying(255),
    photo character varying(255),
    manager_id integer,
    is_active public.enum_user_masters_is_active DEFAULT 'Active'::public.enum_user_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.user_masters OWNER TO barnbookprd;

--
-- Name: user_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.user_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_masters_id_seq OWNER TO barnbookprd;

--
-- Name: user_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.user_masters_id_seq OWNED BY public.user_masters.id;


--
-- Name: user_subscriptions; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.user_subscriptions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    subscription_id integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    actual_end_date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    subscriptions_id integer,
    meta_data jsonb DEFAULT '{}'::jsonb,
    paypal_subscription_id character varying(255) NOT NULL,
    subscription_status public.enum_user_subscriptions_subscription_status DEFAULT 'Inactive'::public.enum_user_subscriptions_subscription_status,
    next_billing_date timestamp with time zone,
    payment_type character varying DEFAULT 'android'::character varying
);


ALTER TABLE public.user_subscriptions OWNER TO barnbookprd;

--
-- Name: COLUMN user_subscriptions.meta_data; Type: COMMENT; Schema: public; Owner: barnbookprd
--

COMMENT ON COLUMN public.user_subscriptions.meta_data IS 'Additional data for the subscription';


--
-- Name: COLUMN user_subscriptions.subscription_status; Type: COMMENT; Schema: public; Owner: barnbookprd
--

COMMENT ON COLUMN public.user_subscriptions.subscription_status IS 'Subscription status reflecting the lifecycle in PayPal';


--
-- Name: COLUMN user_subscriptions.next_billing_date; Type: COMMENT; Schema: public; Owner: barnbookprd
--

COMMENT ON COLUMN public.user_subscriptions.next_billing_date IS 'Date when the subscription will be billed again';


--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.user_subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_subscriptions_id_seq OWNER TO barnbookprd;

--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.user_subscriptions_id_seq OWNED BY public.user_subscriptions.id;


--
-- Name: user_tax_documents; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.user_tax_documents (
    id integer NOT NULL,
    user_id integer,
    document_name character varying(255),
    document_url character varying(255),
    is_active public.enum_user_tax_documents_is_active DEFAULT 'Active'::public.enum_user_tax_documents_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    document_date timestamp with time zone
);


ALTER TABLE public.user_tax_documents OWNER TO barnbookprd;

--
-- Name: user_tax_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.user_tax_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_tax_documents_id_seq OWNER TO barnbookprd;

--
-- Name: user_tax_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.user_tax_documents_id_seq OWNED BY public.user_tax_documents.id;


--
-- Name: user_yqcas; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.user_yqcas (
    id integer NOT NULL,
    user_id integer,
    name character varying(255),
    yqca_date timestamp with time zone,
    is_active public.enum_user_yqcas_is_active DEFAULT 'Active'::public.enum_user_yqcas_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    certificate character varying(255)
);


ALTER TABLE public.user_yqcas OWNER TO barnbookprd;

--
-- Name: user_yqcas_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.user_yqcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_yqcas_id_seq OWNER TO barnbookprd;

--
-- Name: user_yqcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.user_yqcas_id_seq OWNED BY public.user_yqcas.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255),
    country_calling_code_id integer,
    mobile_number character varying(255),
    otp character varying(255),
    otp_expiry timestamp with time zone,
    access_level public.enum_users_access_level DEFAULT 'expert'::public.enum_users_access_level,
    role integer DEFAULT 1,
    photo character varying(255) DEFAULT 'uploads/users/profileImage/1731042483613-777.png'::character varying,
    manager_id integer,
    is_login_required boolean DEFAULT true,
    is_active public.enum_users_is_active DEFAULT 'Active'::public.enum_users_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO barnbookprd;

--
-- Name: COLUMN users.role; Type: COMMENT; Schema: public; Owner: barnbookprd
--

COMMENT ON COLUMN public.users.role IS '1 means user and 2 means exhibitor';


--
-- Name: COLUMN users.is_login_required; Type: COMMENT; Schema: public; Owner: barnbookprd
--

COMMENT ON COLUMN public.users.is_login_required IS 'if true then exhibitor can login, else not able to login';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO barnbookprd;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vaccine_logs; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.vaccine_logs (
    id integer NOT NULL,
    animal_id integer,
    vaccine_name character varying(255),
    vaccine_date character varying(255),
    medicine_id integer,
    dose character varying(255),
    method character varying(255),
    reason character varying(255),
    notes text,
    is_active public.enum_vaccine_logs_is_active DEFAULT 'Active'::public.enum_vaccine_logs_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    veterinarian_id integer,
    unit character varying(255)
);


ALTER TABLE public.vaccine_logs OWNER TO barnbookprd;

--
-- Name: vaccine_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.vaccine_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vaccine_logs_id_seq OWNER TO barnbookprd;

--
-- Name: vaccine_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.vaccine_logs_id_seq OWNED BY public.vaccine_logs.id;


--
-- Name: validation_values; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.validation_values (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    validation_number character varying(255),
    validation_type character varying(255),
    address character varying(255),
    validation_date timestamp with time zone,
    tag_location character varying(255),
    is_active public.enum_validation_values_is_active DEFAULT 'Active'::public.enum_validation_values_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.validation_values OWNER TO barnbookprd;

--
-- Name: validation_values_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.validation_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.validation_values_id_seq OWNER TO barnbookprd;

--
-- Name: validation_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.validation_values_id_seq OWNED BY public.validation_values.id;


--
-- Name: veterinarian_masters; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.veterinarian_masters (
    id integer NOT NULL,
    animal_id integer,
    office_name character varying(255),
    veterinarian_1 character varying(255),
    veterinarian_2 character varying(255),
    office_phone character varying(255),
    address character varying(255),
    country_id integer,
    state_id integer,
    is_active public.enum_veterinarian_masters_is_active DEFAULT 'Active'::public.enum_veterinarian_masters_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.veterinarian_masters OWNER TO barnbookprd;

--
-- Name: veterinarian_masters_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.veterinarian_masters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.veterinarian_masters_id_seq OWNER TO barnbookprd;

--
-- Name: veterinarian_masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.veterinarian_masters_id_seq OWNED BY public.veterinarian_masters.id;


--
-- Name: water_logs; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.water_logs (
    id integer NOT NULL,
    animal_id integer,
    log_date timestamp with time zone NOT NULL,
    amount double precision NOT NULL,
    unit character varying(255) NOT NULL,
    is_active public.enum_water_logs_is_active DEFAULT 'Active'::public.enum_water_logs_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.water_logs OWNER TO barnbookprd;

--
-- Name: water_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.water_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.water_logs_id_seq OWNER TO barnbookprd;

--
-- Name: water_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.water_logs_id_seq OWNED BY public.water_logs.id;


--
-- Name: weight_logs; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.weight_logs (
    id integer NOT NULL,
    animal_id integer NOT NULL,
    log_date timestamp with time zone,
    weight double precision NOT NULL,
    unit character varying(255) NOT NULL,
    is_active public.enum_weight_logs_is_active DEFAULT 'Active'::public.enum_weight_logs_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.weight_logs OWNER TO barnbookprd;

--
-- Name: weight_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.weight_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weight_logs_id_seq OWNER TO barnbookprd;

--
-- Name: weight_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.weight_logs_id_seq OWNED BY public.weight_logs.id;


--
-- Name: weight_targets; Type: TABLE; Schema: public; Owner: barnbookprd
--

CREATE TABLE public.weight_targets (
    id integer NOT NULL,
    animal_id integer,
    target_date timestamp with time zone,
    target_weight double precision,
    is_active public.enum_weight_targets_is_active DEFAULT 'Active'::public.enum_weight_targets_is_active,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    weekly_target_weight double precision,
    target_weight_unit character varying(255),
    weekly_target_weight_unit character varying(255)
);


ALTER TABLE public.weight_targets OWNER TO barnbookprd;

--
-- Name: weight_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: barnbookprd
--

CREATE SEQUENCE public.weight_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weight_targets_id_seq OWNER TO barnbookprd;

--
-- Name: weight_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: barnbookprd
--

ALTER SEQUENCE public.weight_targets_id_seq OWNED BY public.weight_targets.id;


--
-- Name: admin_user_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters ALTER COLUMN id SET DEFAULT nextval('public.admin_user_masters_id_seq'::regclass);


--
-- Name: animal_categories id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_categories ALTER COLUMN id SET DEFAULT nextval('public.animal_categories_id_seq'::regclass);


--
-- Name: animal_documents id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_documents ALTER COLUMN id SET DEFAULT nextval('public.animal_documents_id_seq'::regclass);


--
-- Name: animal_shows id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_shows ALTER COLUMN id SET DEFAULT nextval('public.animal_shows_id_seq'::regclass);


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals ALTER COLUMN id SET DEFAULT nextval('public.animals_id_seq'::regclass);


--
-- Name: brand_values id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.brand_values ALTER COLUMN id SET DEFAULT nextval('public.brand_values_id_seq'::regclass);


--
-- Name: breed_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.breed_masters ALTER COLUMN id SET DEFAULT nextval('public.breed_masters_id_seq'::regclass);


--
-- Name: camps_contests id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.camps_contests ALTER COLUMN id SET DEFAULT nextval('public.camps_contests_id_seq'::regclass);


--
-- Name: configurations id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.configurations ALTER COLUMN id SET DEFAULT nextval('public.configurations_id_seq'::regclass);


--
-- Name: country_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.country_masters ALTER COLUMN id SET DEFAULT nextval('public.country_masters_id_seq'::regclass);


--
-- Name: eid_values id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.eid_values ALTER COLUMN id SET DEFAULT nextval('public.eid_values_id_seq'::regclass);


--
-- Name: excersize_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_masters ALTER COLUMN id SET DEFAULT nextval('public.excersize_masters_id_seq'::regclass);


--
-- Name: excersize_schedules id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_schedules ALTER COLUMN id SET DEFAULT nextval('public.excersize_schedules_id_seq'::regclass);


--
-- Name: free_trials id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.free_trials ALTER COLUMN id SET DEFAULT nextval('public.free_trials_id_seq'::regclass);


--
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- Name: medicine_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.medicine_masters ALTER COLUMN id SET DEFAULT nextval('public.medicine_masters_id_seq'::regclass);


--
-- Name: notification_logs id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.notification_logs ALTER COLUMN id SET DEFAULT nextval('public.notification_logs_id_seq'::regclass);


--
-- Name: premise_values id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.premise_values ALTER COLUMN id SET DEFAULT nextval('public.premise_values_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: ration_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_masters ALTER COLUMN id SET DEFAULT nextval('public.ration_masters_id_seq'::regclass);


--
-- Name: ration_schedules id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_schedules ALTER COLUMN id SET DEFAULT nextval('public.ration_schedules_id_seq'::regclass);


--
-- Name: show_events id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_events ALTER COLUMN id SET DEFAULT nextval('public.show_events_id_seq'::regclass);


--
-- Name: show_type_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_type_masters ALTER COLUMN id SET DEFAULT nextval('public.show_type_masters_id_seq'::regclass);


--
-- Name: shows id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.shows ALTER COLUMN id SET DEFAULT nextval('public.shows_id_seq'::regclass);


--
-- Name: state_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.state_masters ALTER COLUMN id SET DEFAULT nextval('public.state_masters_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: tatto_values id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.tatto_values ALTER COLUMN id SET DEFAULT nextval('public.tatto_values_id_seq'::regclass);


--
-- Name: temp_mobile_number_verifications id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.temp_mobile_number_verifications ALTER COLUMN id SET DEFAULT nextval('public.temp_mobile_number_verifications_id_seq'::regclass);


--
-- Name: terms_and_condition_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.terms_and_condition_masters ALTER COLUMN id SET DEFAULT nextval('public.terms_and_condition_masters_id_seq'::regclass);


--
-- Name: treatment_logs id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.treatment_logs ALTER COLUMN id SET DEFAULT nextval('public.treatment_logs_id_seq'::regclass);


--
-- Name: user_associations id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_associations ALTER COLUMN id SET DEFAULT nextval('public.user_associations_id_seq'::regclass);


--
-- Name: user_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_masters ALTER COLUMN id SET DEFAULT nextval('public.user_masters_id_seq'::regclass);


--
-- Name: user_subscriptions id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.user_subscriptions_id_seq'::regclass);


--
-- Name: user_tax_documents id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_tax_documents ALTER COLUMN id SET DEFAULT nextval('public.user_tax_documents_id_seq'::regclass);


--
-- Name: user_yqcas id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_yqcas ALTER COLUMN id SET DEFAULT nextval('public.user_yqcas_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: vaccine_logs id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.vaccine_logs ALTER COLUMN id SET DEFAULT nextval('public.vaccine_logs_id_seq'::regclass);


--
-- Name: validation_values id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.validation_values ALTER COLUMN id SET DEFAULT nextval('public.validation_values_id_seq'::regclass);


--
-- Name: veterinarian_masters id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters ALTER COLUMN id SET DEFAULT nextval('public.veterinarian_masters_id_seq'::regclass);


--
-- Name: water_logs id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.water_logs ALTER COLUMN id SET DEFAULT nextval('public.water_logs_id_seq'::regclass);


--
-- Name: weight_logs id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_logs ALTER COLUMN id SET DEFAULT nextval('public.weight_logs_id_seq'::regclass);


--
-- Name: weight_targets id; Type: DEFAULT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_targets ALTER COLUMN id SET DEFAULT nextval('public.weight_targets_id_seq'::regclass);


--
-- Data for Name: admin_user_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.admin_user_masters (id, full_name, user_name, password, email, country_calling_code_id, mobile_number, otp, otp_expiry, is_active, "createdAt", "updatedAt") FROM stdin;
4	Laeeque Shaikh	laeeques	$2a$10$xAS1cPZMaDAku7HzwdJbi.ttlIWvjD/wdxaSM0lncgdZeEvNItnmu	shaikhlaeequeshaikh63@gmail.com\N	\N	1234	2024-11-14 13:08:01.098+00	Active	2024-10-22 12:18:07.604+00	2024-11-14 13:06:01.101+00
5	prakash	prakash	$2a$10$GCGvOBbJCTtDYRyWvr3.WelZ2U1lc25PHHvFtL0T3kM8u1o.NDoZq	prakasht@logicloom.in	\N	\N	\N	\N	Active	2024-12-02 05:35:34.932+00	2024-12-02 05:44:58.289+00
3	Rahul Malani	rahulm	$2a$10$wXZyREL1.vsaJ71wOqNHOes7vxTRrpqLMlSHfC6AUTY8AhesehlM6	rahulm@logicloom.in	\N	\N	\N	\N	Inactive	2024-10-22 12:16:32.135+00	2024-12-05 07:05:05.512+00
6	Rohit	rohitk	$2a$10$QxqfAxJh8S8.GGEmjvrg5.hdmi9y7kDbhOHzOKrZI5/l0E3DPqRJ2	rohitk@gmail.com	\N	\N	\N	\N	Active	2024-12-05 07:08:48.711+00	2024-12-05 07:08:48.711+00
2	Shubham Pund	shubham	$2a$10$3DhPSCr06W3OBQ7YStcSieVN/8rOiBhosELQaNCewYsKLIk/AFnnm	shubhamp@logicloom.in	1	9552066772	1234	2024-12-05 10:02:43.356+00	Active	2024-10-22 05:23:16.686+00	2024-12-05 10:00:43.356+00
7	Prashant	prashan	$2a$10$561LDsqDUxB1ZS55Wdr5WufJDGwlN8xZ4op48wsOftasUr8kjsDsO	prashant@logicloom.in	\N	\N	\N	\N	Active	2024-12-31 11:22:34.723+00	2024-12-31 11:22:34.723+00
\.


--
-- Data for Name: animal_categories; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.animal_categories (id, is_active, "createdAt", "updatedAt", category, icon) FROM stdin;
16	Inactive	2024-12-05 05:56:39.191+00	2024-12-05 05:56:44.216+00	Pig	uploads/animal_categories/1733378199138-3503.png
17	Inactive	2024-12-05 08:59:56.803+00	2024-12-05 09:00:47.27+00	Testing	uploads/animal_categories/1733389196801-612.jpeg
5	Inactive	2024-10-28 08:45:37.069+00	2024-10-28 08:45:37.069+00	Yak	\N
4	Active	2024-10-28 08:45:37.069+00	2024-12-31 05:47:37.846+00	Sheep	uploads/animal_categories/1735624057827-8512.png
3	Active	2024-10-28 08:45:37.069+00	2024-12-31 05:53:01.798+00	Goat	uploads/animal_categories/1735624381794-5833.png
6	Inactive	2024-10-29 09:37:20.982+00	2024-11-06 12:52:17.064+00	Dogs	uploads/animal_categories/1730194640979-563.png
1	Active	2024-10-28 08:45:37.069+00	2024-12-02 05:47:55.822+00	Cattle	uploads/animal_categories/1730980686223-7672.png
2	Active	2024-10-28 08:45:37.069+00	2024-12-02 05:47:58.401+00	Swine	uploads/animal_categories/1730980678084-1244.png
18	Inactive	2024-12-31 11:07:14.819+00	2024-12-31 11:10:26.161+00	TEST ONE	uploads/animal_categories/1735643234816-2891.png
\.


--
-- Data for Name: animal_documents; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.animal_documents (id, document_name, file_path, valid_date, document_type, animal_id, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: animal_shows; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.animal_shows (id, user_id, show_id, animal_id, show_records, is_active, "createdAt", "updatedAt") FROM stdin;
396	353	206	287	{}	Active	2025-01-06 12:47:07.35+00	2025-01-06 12:47:07.35+00
397	384	207	298	{}	Active	2025-02-10 02:35:45.788+00	2025-02-10 02:35:45.788+00
398	384	207	299	{}	Active	2025-02-10 02:35:45.788+00	2025-02-10 02:35:45.788+00
399	353	208	287	{}	Active	2025-02-10 05:43:45.544+00	2025-02-10 05:43:45.544+00
400	353	209	287	{}	Active	2025-02-10 09:11:25.301+00	2025-02-10 09:11:25.301+00
\.


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.animals (id, user_id, animal_category_id, cattle_name, tag, dob, age, sex, breed_id, show_type_id, exhibitor_id, photo, purchase_date, breeder, genetics, breeding_method, price, is_archived, is_active, "createdAt", "updatedAt", "deletedAt", note, trial_allowed_animals) FROM stdin;
287	353	4	Ovriss	#OV001	2025-01-06 12:30:56+00	4	Male	18	\N	\N	uploads/animals_profile_images/1736166747080-1139.png	\N	\N	\N	\N	\N	f	Active	2025-01-06 12:32:27.089+00	2025-01-06 12:42:05.5+00	\N	Dfwe	t
288	358	4	Deep	1	2025-01-07 11:27:39.644+00	1	Female	18	\N	\N	uploads/animals_profile_images/1736249325265-2451.png	\N	\N	\N	\N	\N	t	Active	2025-01-07 11:28:45.271+00	2025-01-07 11:31:01.416+00	\N	\N	t
289	358	4	testsheep	001	2025-01-07 11:55:09.558+00	1	Male	18	\N	\N	uploads/animals_profile_images/1736250943828-2898.png	\N	\N	\N	\N	\N	t	Active	2025-01-07 11:55:43.83+00	2025-01-07 11:57:56.88+00	\N	\N	t
290	362	4	test	01	2025-01-08 05:17:34.88+00	12	Female	18	\N	\N	uploads/animals_profile_images/1736313496575-4780.png	\N	\N	\N	\N	\N	f	Active	2025-01-08 05:18:16.581+00	2025-01-08 05:18:19.723+00	\N	\N	t
291	358	4	t	1@2	2025-01-08 05:19:14.703+00	88	Male	10	\N	\N	uploads/animals_profile_images/1736313614389-3274.png	\N	\N	\N	\N	\N	f	Active	2025-01-08 05:20:14.391+00	2025-01-08 05:20:17.982+00	\N	\N	t
292	366	4	sheep A	501	2025-01-13 16:30:31.774+00	2	Male	18	\N	\N	uploads/animals_profile_images/1736786046416-4983.png	\N	\N	\N	\N	\N	f	Active	2025-01-13 16:34:06.418+00	2025-01-13 16:54:03.404+00	\N	Yo	t
293	366	3	goat A	67	2025-01-13 17:00:20.014+00	4	Male	9	\N	367	uploads/animals_profile_images/1736787713229-29.png	\N	\N	\N	\N	\N	f	Active	2025-01-13 17:01:53.231+00	2025-01-13 17:01:53.231+00	\N	\N	f
294	366	2	swinw	66	2025-01-13 17:02:27.756+00	4	Male	5	\N	\N	uploads/animals_profile_images/1736787815719-7263.png	\N	\N	\N	\N	\N	f	Active	2025-01-13 17:03:35.72+00	2025-01-13 17:03:35.72+00	\N	\N	f
295	366	1	u	678	2025-01-13 17:07:34.848+00	1	Female	1	\N	368	uploads/animals_profile_images/1736788105080-6764.png	\N	\N	\N	\N	\N	f	Active	2025-01-13 17:08:25.081+00	2025-01-13 17:08:25.081+00	\N	\N	f
296	370	1	Abhi	01	2023-01-19 10:26:00+00	2	Female	2	\N	371	uploads/animals_profile_images/1737262628007-4446.png	2025-01-19 05:00:26+00	Gir	Gir	Natural	1000	f	Active	2025-01-19 04:57:08.059+00	2025-01-19 05:01:09.613+00	\N	\N	t
297	388	4	captain	#001	2025-02-03 07:21:28.092+00	4	Male	18	\N	\N	uploads/animals_profile_images/1738567341270-789.png	\N	\N	\N	\N	\N	f	Active	2025-02-03 07:22:21.322+00	2025-02-03 07:22:32.816+00	\N	\N	t
299	384	3	Maverick	2401	2024-04-16 20:20:00+00	8	Male	8	\N	\N	uploads/animals_profile_images/1739154143552-9268.png	\N	\N	\N	\N	\N	f	Active	2025-02-10 02:22:23.569+00	2025-02-10 02:22:23.569+00	\N	\N	f
300	384	3	Big Z	2420	2024-06-11 21:11:00+00	7	Male	8	\N	391	uploads/animals_profile_images/1739157150463-6641.png	\N	\N	\N	\N	\N	f	Active	2025-02-10 03:12:30.477+00	2025-02-10 03:12:30.477+00	\N	\N	f
301	394	4	test	1	2025-02-16 00:00:00+00	9987	Male	18	\N	\N	uploads/animals_profile_images/1739894428996-6954.png	\N	\N	\N	\N	\N	f	Active	2025-02-18 16:00:28.999+00	2025-02-18 16:15:06.463+00	\N	\N	t
298	384	3	Hotrod	#001	2024-06-12 05:09:00+00	7	Male	8	\N	\N	uploads/animals_profile_images/1738667446997-4304.png	\N	\N	\N	\N	\N	f	Active	2025-02-04 11:10:47.013+00	2025-02-28 17:08:43.365+00	\N	\N	f
302	384	4	Tony 	2501	2024-09-18 11:34:00+00	0	Male	10	\N	\N	uploads/animals_profile_images/1744239100814-5905.png	2025-04-09 22:55:49+00	ABC Club Lambs	Tango X Black Jack	Natural	2000	f	Active	2025-03-07 17:40:23.144+00	2025-04-24 18:10:06.238+00	\N	\N	t
303	398	1	Big red	9350	2025-07-04 00:39:54.277+00	1	Female	3	\N	\N	uploads/animals_profile_images/1751589696788-9004.png	\N	\N	\N	\N	\N	f	Active	2025-07-04 00:41:36.792+00	2025-07-04 00:45:18.959+00	\N	\N	t
\.


--
-- Data for Name: brand_values; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.brand_values (id, animal_id, brand_photo, state_country, brand_date, brand_location, is_active, "createdAt", "updatedAt") FROM stdin;
10	296	uploads/validations/1737262706670-304.png	Texas	2025-01-19 04:57:20+00	Texas SR	Active	2025-01-19 04:58:26.672+00	2025-01-19 04:58:26.672+00
\.


--
-- Data for Name: breed_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.breed_masters (id, breed_name, animal_category_id, is_active, "createdAt", "updatedAt") FROM stdin;
1	Holstein	1	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
2	Jersey	1	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
3	Angus	1	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
7	Saanen	3	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
8	Boer	3	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
9	Nubian	3	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
10	Merino	4	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
13	Domestic Yak	5	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
4	Yorkshire	2	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
5	Duroc	2	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
6	Berkshire	2	Active	2024-10-28 08:48:10.034+00	2024-10-28 08:48:10.034+00
14	Wild Yak	5	Active	2024-10-28 08:48:10.034+00	2024-11-07 05:14:40.14+00
12	Dorset	4	Inactive	2024-10-28 08:48:10.034+00	2024-12-04 05:57:51.558+00
11	Suffolk	4	Inactive	2024-10-28 08:48:10.034+00	2024-12-05 09:02:29.776+00
18	Dorper	4	Active	2024-12-04 11:02:15.034+00	2024-12-06 07:02:32.24+00
15	 Labrador	6	Active	2024-10-29 12:51:24.999+00	2024-12-06 07:36:03.015+00
19	Test	5	Active	2024-12-06 07:40:23.987+00	2024-12-06 07:41:00.587+00
20	Test One Breed	18	Active	2024-12-31 11:08:56.066+00	2024-12-31 11:10:11.291+00
\.


--
-- Data for Name: camps_contests; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.camps_contests (id, user_id, animal_id, name, date, "time", city, location, cost, parent_notes, counselor_notes, awards, showman_notes, is_active, "createdAt", "updatedAt", banner, checklist) FROM stdin;
61	356	\N	Jump Show	2025-01-06 12:36:31+00	05:54 PM	Pune	Pune	20	\N	\N	\N	\N	Active	2025-01-06 12:37:06.702+00	2025-01-06 12:37:06.722+00	uploads/defaultImages/campsContest.jpg	\N
\.


--
-- Data for Name: configurations; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.configurations (id, android_current_version_number, ios_current_version_number, is_update_mandatory_for_android, is_update_mandatory_for_ios, android_store_url, ios_store_url, authentication_type, "createdAt", "updatedAt", free_trial_days, is_active, landing_screen_image, is_ios_pay_enable, paypal_product_id, free_trial_features) FROM stdin;
3	1.0.0	1	f	f	https://play.google.com	https://apps.apple.com	SMS	2024-11-04 07:53:22.864215+00	2025-02-04 11:25:30.094+00	14	Active	uploads/configurations/1731911032800-5682.jpeg	f	PROD-5V803943E8276540U	["Add Unlimited User", "Get access to all features", "Get all the benefits"]
\.


--
-- Data for Name: country_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.country_masters (id, country_code, country_name, country_calling_code, flag_icon, timezone, "createdAt", "updatedAt", is_active) FROM stdin;
5	\N	UAE	+971	\N	\N	2024-12-02 07:11:48.476+00	2024-12-09 05:14:32.317+00	Inactive
9	\N	Nepal	97	uploads/country_flag_icons/1733391114355-2517.jpeg	\N	2024-12-05 06:47:06.471+00	2024-12-09 05:14:35.011+00	Inactive
15	\N	demo	+91	uploads/country_flag_icons/1733478293668-2452.svg	\N	2024-12-06 09:44:54.45+00	2024-12-09 05:14:35.784+00	Inactive
16	\N	Canadaaaa	+49	uploads/country_flag_icons/1733482484174-9680.svg	\N	2024-12-06 10:42:21.48+00	2024-12-09 05:14:36.552+00	Inactive
17	\N	Egypt	+20	uploads/country_flag_icons/1733490848121-5188.png	\N	2024-12-06 12:24:27.116+00	2024-12-09 05:14:37.923+00	Inactive
18	\N	Indiaa	+91	uploads/country_flag_icons/1733721956320-1691.svg	\N	2024-12-09 05:07:50.41+00	2024-12-09 06:07:10.236+00	Inactive
2	USA	United States	+1	uploads/country_flag_icons/US.svg	EST	2024-10-22 05:22:43.719+00	2024-12-02 07:34:00.573+00	Active
19	\N	Canadaa	+1	uploads/country_flag_icons/1735644041430-3607.svg	\N	2024-12-31 11:20:41.431+00	2025-02-10 09:28:30.853+00	Inactive
7	\N	Italy	+39	uploads/country_flag_icons/1733316945233-5224.png	\N	2024-12-04 11:09:33.443+00	2025-02-10 09:28:33.784+00	Inactive
4	+49	Germany	+49	uploads/country_flag_icons/1732623239473-1217.png	\N	2024-11-05 12:23:47.185+00	2025-02-10 09:28:36.191+00	Inactive
3	CAN	Canada	+1	uploads/country_flag_icons/Canada.svg	EST	2024-10-22 05:22:56.039+00	2025-02-10 09:28:37.318+00	Inactive
1	IND	India	+91	uploads/country_flag_icons/India.svg	IST	2024-10-22 05:22:15.641+00	2025-02-10 09:28:41.129+00	Inactive
\.


--
-- Data for Name: eid_values; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.eid_values (id, animal_id, number, type, address, date, tag_location, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: excersize_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.excersize_masters (id, animal_category_id, animal_breed_id, excersize_name, is_active, "createdAt", "updatedAt", user_id) FROM stdin;
38	4	18	pushups	Active	2025-01-13 16:38:55.961+00	2025-01-13 16:38:55.961+00	366
39	3	8	Backwards Treadmill	Active	2025-02-10 02:26:43.717+00	2025-02-10 02:26:43.717+00	384
40	4	18	Running	Active	2025-02-10 05:13:30.638+00	2025-02-10 05:13:30.638+00	353
41	4	18	test	Active	2025-02-18 16:05:20.409+00	2025-02-18 16:05:20.409+00	394
\.


--
-- Data for Name: excersize_schedules; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.excersize_schedules (id, animal_id, excersize_id, days, timings, duration, start_date, end_date, is_active, "createdAt", "updatedAt") FROM stdin;
29	292	38	["4", "2", "3"]	["37"]	300	2025-01-13 16:38:59.757+00	\N	Active	2025-01-13 16:38:59.756+00	2025-01-13 16:38:59.756+00
30	299	39	["6", "4", "2"]	["38"]	300	2025-02-10 02:26:59.939+00	\N	Active	2025-02-10 02:26:59.938+00	2025-02-10 02:26:59.938+00
31	287	40	["1", "2", "3", "4", "5", "6", "7", "8"]	["38"]	300	2025-02-10 05:13:50.696+00	\N	Active2025-02-10 05:13:50.696+00	2025-02-10 05:13:50.696+00
32	301	41	["1", "2", "3", "4", "5", "6", "7", "8"]	["2"]	120	2025-02-18 16:07:59.148+00	\N	Active2025-02-18 16:07:59.147+00	2025-02-18 16:07:59.147+00
33	300	39	["6", "4", "2"]	["37"]	3	2025-02-28 17:13:26.66+00	\N	Active	2025-02-28 17:13:26.66+00	2025-02-28 17:13:26.66+00
\.


--
-- Data for Name: free_trials; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.free_trials (id, user_id, start_date, end_date, status, "createdAt", "updatedAt") FROM stdin;
50	353	2025-01-06 12:30:52.004+00	2025-01-20 12:30:52.004+00	active	2025-01-06 12:30:52.004+00	2025-01-06 12:30:52.004+00
51	359	2025-01-07 08:10:27.422+00	2025-01-21 08:10:27.422+00	active	2025-01-07 08:10:27.423+00	2025-01-07 08:10:27.423+00
52	362	2025-01-07 13:23:18.517+00	2025-01-21 13:23:18.517+00	active	2025-01-07 13:23:18.518+00	2025-01-07 13:23:18.518+00
53	364	2025-01-10 09:19:38.352+00	2025-01-24 09:19:38.352+00	active	2025-01-10 09:19:38.352+00	2025-01-10 09:19:38.352+00
54	366	2025-01-13 13:49:10.431+00	2025-01-27 13:49:10.431+00	active	2025-01-13 13:49:10.431+00	2025-01-13 13:49:10.431+00
55	369	2025-01-16 10:31:01.399+00	2025-01-30 10:31:01.399+00	active	2025-01-16 10:31:01.399+00	2025-01-16 10:31:01.399+00
56	373	2025-01-30 10:50:42.264+00	2025-02-13 10:50:42.264+00	active	2025-01-30 10:50:42.264+00	2025-01-30 10:50:42.264+00
58	384	2025-01-31 12:59:41.958+00	2025-02-14 12:59:41.958+00	active	2025-01-31 12:59:41.959+00	2025-01-31 12:59:41.959+00
59	390	2025-02-06 16:36:27.758+00	2025-02-20 16:36:27.758+00	active	2025-02-06 16:36:27.758+00	2025-02-06 16:36:27.758+00
60	392	2025-02-11 18:27:35.38+00	2025-02-25 18:27:35.38+00	active	2025-02-11 18:27:35.38+00	2025-02-11 18:27:35.38+00
61	393	2025-02-18 02:06:25.603+00	2025-03-04 02:06:25.603+00	active	2025-02-18 02:06:25.603+00	2025-02-18 02:06:25.603+00
62	394	2025-02-18 15:42:35.936+00	2025-03-04 15:42:35.936+00	active	2025-02-18 15:42:35.937+00	2025-02-18 15:42:35.937+00
63	395	2025-02-18 15:43:52.659+00	2025-03-04 15:43:52.659+00	active	2025-02-18 15:43:52.659+00	2025-02-18 15:43:52.659+00
64	398	2025-07-04 00:39:51.941+00	2025-07-18 00:39:51.941+00	active	2025-07-04 00:39:51.941+00	2025-07-04 00:39:51.941+00
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.invoices (id, user_id, stripe_transaction_id, subscription_id, amount, stripe_data_json, transaction_date_time, payment_method, "createdAt", "updatedAt", subscriptions_id) FROM stdin;
\.


--
-- Data for Name: medicine_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.medicine_masters (id, type, medicine_name, method, withdrawl, withdrawl_unit, brand, notes, is_active, "createdAt", "updatedAt", user_id, recommended_dosage) FROM stdin;
113	vaccine	Vitamin B	SQ	11	Days	self	dew	Active	2025-01-06 12:55:17.201+00	2025-01-06 12:55:17.201+00	353	10
114	medicine	pcm	SQ	2	Months	vgg		Active	2025-01-13 17:10:38.544+00	2025-01-13 17:10:38.544+00	366	50
115	vaccine	vaccineone	IM	10	Days	suji		Active	2025-01-19 05:05:42.822+00	2025-01-19 05:05:42.822+00	370	100
116	medicine	medone	Orally	15		cory		Active	2025-01-19 05:06:19.977+00	2025-01-19 05:06:19.977+00	370	100
117	medicine	Excede	SQ	21				Active	2025-02-10 02:29:40.305+00	2025-02-10 02:29:40.305+00	384	
118	vaccine	CDT	SQ	21				Active	2025-02-10 02:30:37.101+00	2025-02-10 02:30:37.101+00	384	2 ml
119	vaccine	Vitamin C	Orally	1	Days	Vitamins		Active	2025-02-10 05:26:32.161+00	2025-02-10 05:26:32.161+00	353	1
120	medicine	Medicine	Orally	1	Days	Med		Active	2025-02-10 07:51:49.733+00	2025-02-10 07:51:49.733+00	353	1
121	medicine	Med1@	Orally	1	Days	Med		Active	2025-02-10 09:07:53.057+00	2025-02-10 09:07:53.057+00	353	1
\.


--
-- Data for Name: notification_logs; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.notification_logs (id, exhibitor_id, barn_manager_id, notification_title, description, is_read, "createdAt", "updatedAt") FROM stdin;
260	357	353	batch created in Vaccine Log	Jim chad has batch created Vaccine Log on 1/6/2025, 1:03:58 PM. Please review.Active	2025-01-06 13:03:58.543+00	2025-01-06 13:04:36.266+00
\.


--
-- Data for Name: premise_values; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.premise_values (id, animal_id, premise_id, premise_number, breeder, premise_date, tag_location, is_active, "createdAt", "updatedAt") FROM stdin;
17	287	287	1234	sheep	2025-01-06 12:43:45+00	P	Active	2025-01-06 12:44:06.383+00	2025-01-06 12:44:23.535+00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.products (id, product_name, product_description, product_type, product_category, image_url, home_url, is_active, "createdAt", "updatedAt", product_id, event_id) FROM stdin;
\.


--
-- Data for Name: ration_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.ration_masters (id, animal_category_id, ration_name, ration_details, is_active, "createdAt", "updatedAt", user_id) FROM stdin;
80	4	high Protien	[{"ration": [{"feedName": "test", "quantity": "5", "measurement": {"label": "KG", "value": "KG", "_index": 2}}], "supplements": [{"quantity": "5", "suppName": "vitamin E", "measurement": {"label": "GM", "value": "GM", "_index": 1}}]}]	Active	2025-01-06 12:43:12.838+00	2025-01-06 12:43:12.838+00	353
81	4	grass	[{"ration": [{"feedName": "grs", "quantity": "1", "measurement": {"label": "KG", "value": "KG", "_index": 2}}], "supplements": [{"quantity": "1", "suppName": "amd", "measurement": {"label": "GM", "value": "GM", "_index": 1}}, {"quantity": "6", "suppName": "hs", "measurement": {"label": "GM", "value": "GM", "_index": 1}}, {"quantity": "6", "suppName": "he", "measurement": {"label": "GM", "value": "GM", "_index": 1}}, {"quantity": "2", "suppName": "hsh", "measurement": {"label": "GM", "value": "GM", "_index": 1}}]}]	Active	2025-01-13 16:37:45.609+00	2025-01-13 16:37:45.609+00	366
82	3	Starter	[{"ration": [{"feedName": "Jacoby Alpha Goat", "quantity": "1.5", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "50", "suppName": "Texas Tea", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}]}]	Active	2025-02-10 02:24:03.771+00	2025-02-10 02:24:03.771+00	384
83	3	Starter 2	[{"ration": [{"feedName": "Jacoby Alpha Goat", "quantity": "1.5", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "2", "suppName": "Gold Dust", "measurement": {}}]}]	Active	2025-02-10 02:25:38.986+00	2025-02-10 02:25:38.986+00	384
84	4	ration	[{"ration": [{"feedName": "ration", "quantity": "1", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "", "suppName": "", "measurement": {}}]}]	Active	2025-02-10 07:18:39.486+00	2025-02-10 07:18:39.486+00	353
85	4	test	[{"ration": [{"feedName": "test", "quantity": "2", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "1", "suppName": "g", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}]}]	Active	2025-02-18 16:03:11.275+00	2025-02-18 16:03:11.275+00	394
86	3	Mix 1	[{"ration": [{"feedName": "Jacoby ", "quantity": "1", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "50", "suppName": "texas tea", "measurement": {"label": "ML", "value": "ML", "_index": 0}}]}]	Active	2025-02-28 17:08:48.862+00	2025-02-28 17:08:48.862+00	384
87	4	monkey munch	[{"ration": [{"feedName": "high noon ", "quantity": "42", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "30", "suppName": "dyne", "measurement": {"label": "ML", "value": "ML", "_index": 0}}]}]	Active	2025-03-07 18:04:23.598+00	2025-03-07 18:04:23.598+00	384
88	4	coastal	[{"ration": [{"feedName": "hay", "quantity": "3", "measurement": {"label": "GM", "value": "GM", "_index": 1}}], "supplements": [{"quantity": "", "suppName": "", "measurement": {}}]}]	Active	2025-03-07 18:18:30.915+00	2025-03-07 18:18:30.915+00	384
89	1	cattle	[{"ration": [{"feedName": "IFA", "quantity": "50", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}], "supplements": [{"quantity": "3", "suppName": "Depth charge", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}, {"quantity": "3", "suppName": "ultra full", "measurement": {"label": "LBS", "value": "LBS", "_index": 0}}]}]	Active	2025-07-04 00:44:38.92+00	2025-07-04 00:44:38.92+00	398
\.


--
-- Data for Name: ration_schedules; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.ration_schedules (id, animal_id, ration_id, days, timings, start_date, end_date, is_active, "createdAt", "updatedAt") FROM stdin;
101	287	80	["3", "2"]	["1", "2", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]], ["1", ["1"], ["1", ["1"]], ["1", ["1"], ["1", ["1"]]]]]]]]	2025-01-06 12:43:33.594+00	2025-01-06 00:00:00+00	Active	2025-01-06 12:43:33.593+00	2025-01-06 12:43:42.545+00
102	292	81	["1", "2", "3", "4", "5", "6", "7", "8"]	["1"]	2025-01-13 16:37:54.734+00	\N	Active	2025-01-13 16:37:54.734+00	2025-01-13 16:37:54.734+00
103	299	82	["1", "2", "3", "4", "5", "6", "7", "8"]	["15", "39"]	2025-02-10 02:24:08.831+00	2025-02-10 00:00:00+00	Active	2025-02-10 02:24:08.831+00	2025-02-10 02:24:23.594+00
104	299	83	["1", "2", "3", "4", "5", "6", "7", "8"]	["14"]	2025-02-10 02:25:56.848+00	\N	Active	2025-02-10 02:25:56.848+00	2025-02-10 02:25:56.848+00
105	298	82	["1", "2", "3", "4", "5", "6", "7", "8"]	["16", "40"]	2025-02-10 02:41:05.517+00	\N	Active2025-02-10 02:41:05.517+00	2025-02-10 02:41:05.517+00
106	287	80	["1", "2", "3", "4", "5", "6", "7", "8"]	[]	2025-02-10 04:59:04.848+00	\N	Active	2025-02-10 04:59:04.848+00	2025-02-10 04:59:04.848+00
107	287	84	["2"]	["1"]	2025-02-10 07:18:53.308+00	\N	Active	2025-02-10 07:18:53.308+00	2025-02-10 07:18:53.308+00
108	301	85	["1", "2", "3", "4", "5", "6", "7", "8"]	["15", "39"]	2025-02-18 16:05:04.842+00	\N	Active2025-02-18 16:05:04.842+00	2025-02-18 16:05:04.842+00
109	300	86	["1", "2", "3", "4", "5", "6", "7", "8"]	["15", "39"]	2025-02-28 17:10:14.042+00	\N	Active2025-02-28 17:10:14.042+00	2025-02-28 17:10:14.042+00
110	302	87	["1", "2", "3", "4", "5", "6", "7", "8"]	["17", "35"]	2025-03-07 18:12:54.174+00	2025-03-07 00:00:00+00	Active	2025-03-07 18:12:54.174+00	2025-03-07 18:13:10.047+00
112	302	87	["1", "2", "3", "4", "5", "6", "7", "8"]	["15", "29"]	2025-03-07 18:17:48.451+00	\N	Active2025-03-07 18:17:48.45+00	2025-03-07 18:17:48.45+00
111	302	87	["1", "2", "3", "4", "5", "6", "7", "8"]	["15", "39"]	2025-03-07 18:13:59.523+00	2025-03-07 18:17:48.473+00	Active	2025-03-07 18:13:59.523+00	2025-03-07 18:17:48.473+00
113	302	88	["1", "2", "3", "4", "5", "6", "7", "8"]	["3"]	2025-03-07 18:19:18.092+00	\N	Active	2025-03-07 18:19:18.091+00	2025-03-07 18:19:18.091+00
114	303	89	["1", "2", "3", "4", "5", "6", "7", "8"]	["43"]	2025-07-04 00:45:53.088+00	\N	Active	2025-07-04 00:45:53.087+00	2025-07-04 00:45:53.087+00
\.


--
-- Data for Name: show_events; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.show_events (id, show_id, event_title, is_active, "createdAt", "updatedAt", "time", animal_id) FROM stdin;
44	207	gave  cc gold dust	Active	2025-03-07 18:34:38.342+00	2025-03-07 18:34:38.342+00	2025-03-07 12:34:00	299
\.


--
-- Data for Name: show_type_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.show_type_masters (id, show_type, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.shows (id, user_id, animal_id, name, date, "time", city, location, fees, type, sactioned_by, show_notes, is_active, "createdAt", "updatedAt", banner_image, judges, checklist, selected_animals) FROM stdin;
205	353	\N	Dog Funtasy Expo	2025-01-06 12:39:19.389+00	2025-01-06 18:09:04	Vishalnage	Pune	20	Jackpot		\N	Active	2025-01-06 12:40:33.327+00	2025-01-06 12:40:33.327+00	uploads/animals_shows/1736167233320-5111.png	[{"ringA": "", "ringB": ""}]	{}	[]
206	353	\N	DOG SHOW	2025-01-06 12:46:19.752+00	2025-01-06 18:09:04	PUNE	PUNE	10	Jackpot		\N	Active	2025-01-06 12:47:07.328+00	2025-01-06 12:47:07.328+00	uploads/animals_shows/1736167627321-9088.png	[{"ringA": "", "ringB": ""}]	{}	[287]
207	384	\N	Houston	2025-03-10 20:34:00+00	2025-02-09 09:30:00	Houston	Convention Center 	65	Major		\N	Active	2025-02-10 02:35:45.764+00	2025-02-10 02:35:45.782+00	uploads/defaultImages/shows.jpg	[{"ringA": "", "ringB": ""}]	{}	[298, 299]
208	353	\N	Event	2025-02-10 05:41:54.167+00	2025-02-10 12:30:29	Pune	Pune	250	Jackpot		\N	Active	2025-02-10 05:43:45.514+00	2025-02-10 05:43:45.538+00	uploads/defaultImages/shows.jpg	[{"ringA": "", "ringB": ""}]	{}	[287]
209	353	\N	Shows1@	2025-02-10 09:10:52.326+00	2025-02-10 20:16:42	Pune	Pune	200	Expo		\N	Active	2025-02-10 09:11:25.278+00	2025-02-10 09:11:25.295+00	uploads/defaultImages/shows.jpg	[{"ringA": "", "ringB": ""}]	{}	[287]
\.


--
-- Data for Name: state_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.state_masters (id, state_code, state_name, country_id, is_active, "createdAt", "updatedAt") FROM stdin;
2	MH	Maharashtra	1	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
3	KA	Karnataka	1	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
4	DL	Delhi	1	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
5	NY	New York	2	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
6	CA	California	2	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
7	TX	Texas	2	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
8	ON	Ontario	3	Active	2024-11-04 06:40:35.499574+00	2024-11-04 06:40:35.499574+00
10	BC	British Columbia	3	Active	2024-11-04 06:40:35.499574+00	2024-11-05 12:37:03.238+00
9	QC	Quebec	3	Active	2024-11-04 06:40:35.499574+00	2024-12-06 07:35:47.766+00
12	\N	Kerala	1	Active	2024-12-02 07:34:51.511+00	2024-12-06 07:41:54.269+00
13	\N	Ontario	19	Active	2024-12-31 11:22:00.531+00	2024-12-31 11:22:00.531+00
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.subscriptions (id, subscriptions_title, subscriptions_tag, subscriptions_amount, discount_in_percentage, discounted_amount, plan_offers, "interval", additional_days_offered, is_active, "createdAt", "updatedAt", plan_id, features) FROM stdin;
8	3 Months	Most Popular	120	80	24	["Save 50%", "Get 7 Days Free"]	Quarterly	7	Inactive	2024-11-15 07:03:41.81+00	2024-11-15 07:03:41.81+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
9	Yearly	Best Value	120	50	60	["Save 50%", "Get 7 Days Free"]	Yearly	4	Inactive	2024-11-15 07:05:24.181+00	2024-11-15 07:05:24.181+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
5	Premium Subscription	Premium	150	30	105	["Save 50%", "Get 7 Days Free"]	Quarterly	10	Inactive	2024-11-06 10:40:59.88+00	2024-11-15 06:39:27.809+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
3	Yearly	BEST VALUE	120	50%	3	["Save 50%", "Get 7 Days Free"]	Yearly	29	Inactive	2024-10-21 11:02:30.571+00	2024-12-02 10:57:28.122+00	P-1GS97961M5880410HM5GZFFY	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
4	Premium Yearly Plan	BEST VALUE	120	10%	60	["Save 50%", "Get 7 Days Free"]	Yearly	30	Inactive	2024-11-06 06:37:29.106+00	2024-11-15 06:39:28.526+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
6	Premium Individual	Premium	100	40	60	["Save 50%", "Get 7 Days Free"]	Yearly	7	Inactive	2024-11-07 10:07:28.162+00	2024-11-15 07:05:26.976+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
11	Premium Yearly Plan	BEST VALUE	120	10%	1	["Save 50%", "Get 7 Days Free"]	Yearly	30	Inactive	2024-11-28 09:44:33.139+00	2024-11-28 09:44:35.019+00	P-7E602349LD577291VM5EDXAQ	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
12	Premium Yearly Plan	BEST VALUE	120	10	1	["Save 50%", "Get 7 Days Free"]	Yearly	30	Inactive	2024-11-28 09:44:53.387+00	2024-11-29 12:34:47.266+00	P-7KN369805B871231UM5E3JZY	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
13	Demo Testing	Demo Testing	2	50	1	["Save 50%", "Get 7 Days Free"]	Monthly	7	Inactive	2024-11-29 12:39:27.509+00	2024-11-29 12:39:28.915+00	P-0KL89782FB346224MM5E3MAA	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
10	Test	Test	2	10%	1	["Save 50%", "Get 7 Days Free"]	Daily	30	Inactive	2024-11-26 09:52:19.185+00	2024-12-02 06:28:24.554+00	P-41Y0610506395000PM5GVHCA	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
2	3 Months	MOST POPULAR	120	50%	2	["Save 50%", "Get 7 Days Free"]	Quarterly	29	Inactive	2024-10-21 11:02:56.8+00	2024-12-02 10:57:27.278+00	P-8PW2545198063871FM5GZFFY	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
14	9  Month	GODD PLAN FOR 9 MONTH	360	20	288	["Get 7 Days Free"]	Quarterly	28	Inactive	2024-12-02 06:36:20.506+00	2024-12-02 10:57:21.335+00	P-9R402911E7940391TM5GZFEI	["Save 20%"]
15	6 Month	GODD PLAN FOR 6 MONTH	240	20	192	["Get 7 Days Free","Save 20%"]	Quarterly	28	Inactive	2024-12-02 06:36:22.455+00	2024-12-02 13:15:42.761+00	P-9WS54458BH9074402M5G3F7Q	["Save 20%"]
7	1 Month		120	90	12	["Save 50%", "Get 7 Days Free"]	Monthly	7	Inactive	2024-11-15 06:58:50.573+00	2024-12-31 11:13:33.4+00	\N	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
1	1 Month	STANDARD	\N	50	4.99	["Full Access"]	Monthly	29	Active	2024-10-21 11:03:06.597+00	2025-01-10 10:38:47.767+00	P-5A843537XB831304EM6APRNY	["Add unlimited users", "Get access to all the features", "Get all the benefits"]
\.


--
-- Data for Name: tatto_values; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.tatto_values (id, animal_id, tatto_id, tatto_number, address, tatto_date, tatto_location, is_active, "createdAt", "updatedAt") FROM stdin;
10	292		25	texas	2025-01-13 16:34:31+00	face	Active	2025-01-13 16:39:40.259+00	2025-01-13 16:39:40.259+00
\.


--
-- Data for Name: temp_mobile_number_verifications; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.temp_mobile_number_verifications (id, mobile_number, otp, otp_expiry, country_calling_code_id, "createdAt", "updatedAt") FROM stdin;
516	45488886666	1234	2025-01-07 13:23:30.388+00	1	2025-01-07 13:21:30.388+00	2025-01-07 13:21:30.388+00
518	22225222	1234	2025-01-07 13:24:26.549+00	1	2025-01-07 13:22:26.549+00	2025-01-07 13:22:26.549+00
523	6693334444	1234	2025-01-11 11:58:31.166+00	19	2025-01-11 11:56:31.168+00	2025-01-11 11:56:31.168+00
524	8329126745	1234	2025-01-13 12:52:34.27+00	1	2025-01-13 12:50:34.271+00	2025-01-13 12:50:34.271+00
527	5056090380	1234	2025-01-17 01:18:18.193+00	2	2025-01-17 01:16:18.193+00	2025-01-17 01:16:18.193+00
528	5056090380	1234	2025-01-17 01:19:11.999+00	2	2025-01-17 01:17:11.999+00	2025-01-17 01:17:11.999+00
529	5056090380	1234	2025-01-17 01:19:47.538+00	2	2025-01-17 01:17:47.538+00	2025-01-17 01:17:47.538+00
530	5056090380	1234	2025-01-17 13:19:56.679+00	2	2025-01-17 13:17:56.679+00	2025-01-17 13:17:56.679+00
531	5056090380	1234	2025-01-18 01:47:28.902+00	2	2025-01-18 01:45:28.903+00	2025-01-18 01:45:28.903+00
533	5056090380	1234	2025-01-20 03:04:30.722+00	2	2025-01-20 03:02:30.722+00	2025-01-20 03:02:30.722+00
534	5054021114	1234	2025-01-20 16:46:35.418+00	2	2025-01-20 16:44:35.418+00	2025-01-20 16:44:35.418+00
535	5056090380	1234	2025-01-26 23:18:15.568+00	2	2025-01-26 23:16:15.568+00	2025-01-26 23:16:15.568+00
536	8793331999	1234	2025-01-29 07:51:17.854+00	1	2025-01-29 07:49:17.855+00	2025-01-29 07:49:17.855+00
537	5056090380	1234	2025-01-29 13:18:55.659+00	2	2025-01-29 13:16:55.659+00	2025-01-29 13:16:55.659+00
540	9960189992	9077	2025-01-30 11:40:13.787+00	19	2025-01-30 11:38:13.787+00	2025-01-30 11:38:13.787+00
541	8329126745	9591	2025-01-30 11:41:29.166+00	1	2025-01-30 11:39:29.166+00	2025-01-30 11:39:29.166+00
546	9960189992	3416	2025-01-30 13:09:34.135+00	19	2025-01-30 13:07:34.136+00	2025-01-30 13:07:34.136+00
560	8062156759	7674	2025-02-10 02:52:02.996+00	2	2025-02-10 02:50:02.996+00	2025-02-10 02:50:02.996+00
561	8062156759	9096	2025-02-10 02:57:50.169+00	2	2025-02-10 02:55:50.169+00	2025-02-10 02:55:50.169+00
569	12452461615	8090	2025-07-08 23:25:16.423+00	2	2025-07-08 23:23:16.423+00	2025-07-08 23:23:16.423+00
570	12452461615	4420	2025-07-08 23:26:13.91+00	2	2025-07-08 23:24:13.91+00	2025-07-08 23:24:13.91+00
571	12452461615	1455	2025-07-08 23:26:38.372+00	2	2025-07-08 23:24:38.373+00	2025-07-08 23:24:38.373+00
572	12452461615	6267	2025-07-08 23:26:43.512+00	2	2025-07-08 23:24:43.512+00	2025-07-08 23:24:43.512+00
\.


--
-- Data for Name: terms_and_condition_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.terms_and_condition_masters (id, terms_and_condition, is_active, "createdAt", "updatedAt", privacy_policy, subscription_term_and_condition) FROM stdin;
1	<!DOCTYPE html>\n    <html lang="en">\n    <head>\n        <meta charset="UTF-8">\n        <meta name="viewport" content="width=device-width, initial-scale=1.0">\n        <title>Terms & Conditions</title>\n        <style>\n            body {\n                font-family: Arial, sans-serif;\n                line-height: 1.6;\n                margin: 0;\n                padding: 20px;\n                background-color: #f9f9f9;\n            }\n            h1 {\n                font-size: 24px;\n                margin-bottom: 10px;\n            }\n            p {\n                margin-bottom: 10px;\n            }\n        </style>\n    </head>\n    <body>\n        <h2><strong>Terms of Service for BarnBook</strong>&nbsp;</h2><h4><strong>Effective Date:</strong>&nbsp;&nbsp;03/12/2024</h4><h2><strong>1. Acceptance of Terms&nbsp;</strong></h2><p>By downloading, accessing, or using BarnBook, you agree to comply with and be bound by these Terms of Service, including any future updates. If you do not agree with these terms, please do not use the app.</p><h2><strong>2. Eligibility</strong></h2><p>To use BarnBook, you must be at least 13 years old or have the permission of a parent or guardian. By using the app, you represent that you meet these eligibility requirements.&nbsp;</p><h2><strong>3.</strong> <strong>Account Creation and Security</strong></h2><ul><li><strong>Account Registration</strong>: To use certain features of the app, you must create an account. You agree to provide accurate, current, and complete information during the registration process.&nbsp;</li><li><strong>Account Responsibility</strong>: You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You must immediately notify us of any unauthorized use of your account.&nbsp;</li></ul><h2><strong>4.</strong> <strong>User Responsibilities</strong></h2><ul><li><strong>Lawful Use</strong>: You agree to use BarnBook only for lawful purposes and in accordance with all applicable laws and regulations</li><li><strong>Data Accuracy</strong>: You are responsible for ensuring that the records, data, and information you input into the app are accurate and up to date.&nbsp;</li><li><strong>Prohibited Actions</strong>: You may not:</li></ul><ol><li>Use the app to engage in fraudulent, harmful, or illegal activities.&nbsp;</li><li>Attempt to hack, modify, or interfere with the app or its servers.&nbsp;</li><li>Violate the intellectual property rights of BarnBook.&nbsp;</li></ol><p>&nbsp;</p><h2><strong>5.</strong> <strong>Subscription and Payment</strong></h2><ul><li><strong>Subscription Plans</strong>: BarnBook offers both free and paid subscription plans. Some features may only be available to users with a paid plan.&nbsp;</li><li><strong>Billing and Payment</strong>: If you subscribe to a paid plan, you agree to pay the subscription fees. Fees are non-refundable, except as required by law.&nbsp;</li><li><strong>Changes to Fees</strong>: We reserve the right to change subscription fees or introduce new plans. You will be notified of any changes before they take effect.&nbsp;</li></ul><h2><strong>6. Data and Privacy</strong>&nbsp;</h2><ul><li><strong>Data Collection</strong>: We collect and process user data as described in our [Privacy Policy]. By using the app, you consent to the collection and use of your data as outlined in our Privacy Policy.&nbsp;</li><li><strong>Data Ownership</strong>: You retain ownership of your data, but you grant BarnBook a license to store, process, and display your data within the app to provide the services.&nbsp;</li><li><strong>Data Security</strong>: We take reasonable measures to protect your data but cannot guarantee absolute security.&nbsp;</li></ul><h2><strong>7. Termination and Suspension</strong></h2><p><strong>We may suspend or terminate your access to BarnBook at our discretion if you violate these Terms of Service or if we are required to do so by law. You may cancel your subscription at any time through your account settings.&nbsp;</strong></p><h2><strong>8. Limitation of Liability</strong>&nbsp;</h2><p>To the fullest extent permitted by law, BarnBook will not be liable for any indirect, incidental, special, or consequential damages arising from your use of the app. Our total liability shall not exceed the amount you paid for the app within the last 12 months.&nbsp;</p><h2><strong>9. Disclaimer of Warranties</strong>&nbsp;</h2><p>BarnBook is provided "as is" without warranties of any kind. We do not guarantee the accuracy, reliability, or completeness of the app or its content, and we are not responsible for any interruptions, errors, or defects in the app.&nbsp;</p><h2><strong>10. Changes to Terms</strong>&nbsp;</h2><p>We reserve the right to update or modify these Terms of Service at any time. We will notify you of any changes through the app or via email. Your continued use of the app after changes have been made constitutes your acceptance of the updated terms.&nbsp;</p><h2><strong>11. Governing Law</strong>&nbsp;</h2><p>These Terms of Service shall be governed by and construed in accordance with the laws of the State of Texas, without regard to its conflict of law principles. Any disputes arising from these terms shall be resolved in the courts of Lubbock County, Texas.&nbsp;</p><h2><strong>12. Contact Us</strong>&nbsp;</h2><p>If you have any questions about these Terms of Service or need further assistance, please contact us at:&nbsp;<br><strong>Email</strong>: service@barnbook.info&nbsp;<br><strong>Website</strong>: barnbook.info&nbsp;</p><h2><strong>13. Miscellaneous</strong>&nbsp;</h2><ul><li><strong>Severability</strong>: If any provision of these terms is found to be invalid or unenforceable, the remaining provisions will remain in full force and effect.&nbsp;</li><li><strong>Entire Agreement</strong>: These Terms of Service constitute the entire agreement between you and BarnBook regarding your use of the app.&nbsp;</li></ul>\n    </body>\n    </html>	Active	2024-10-21 18:30:00+00	2025-01-10 10:38:09.764+00	<!DOCTYPE html>\n    <html lang="en">\n    <head>\n        <meta charset="UTF-8">\n        <meta name="viewport" content="width=device-width, initial-scale=1.0">\n        <title>Privacy Policy</title>\n        <style>\n            body {\n                font-family: Arial, sans-serif;\n                line-height: 1.6;\n                margin: 0;\n                padding: 20px;\n                background-color: #f9f9f9;\n            }\n            h1 {\n                font-size: 24px;\n                margin-bottom: 10px;\n            }\n            p {\n                margin-bottom: 10px;\n            }\n        </style>\n    </head>\n    <body>\n        <h2><strong>Privacy Policy for BarnBook</strong></h2><h4><strong>Effective Date:</strong> 3/12/2024</h4><p>At BarnBook, your privacy is a priority. This Privacy Policy explains how we collect, use, store, and protect your personal information when you use our mobile application ("App") and our related services. By using BarnBook, you agree to the collection and use of information in accordance with this policy.&nbsp;</p><h2><strong>1.</strong> <strong>Information We Collect</strong>&nbsp;</h2><p>We collect the following types of information:&nbsp;</p><p><strong>Personal Information:&nbsp;</strong></p><ul><li><strong>Account Information:</strong> When you create an account or register to use our App, we may collect your name, email address, and other contact information.&nbsp;</li><li><strong>Health and Livestock Data:</strong> As part of our service, you may input data related to your livestock, including health records, growth metrics, and show results.&nbsp;</li><li><strong>Usage Data:</strong> We collect information on how you interact with the App, such as the features you use, time spent in the app, and crash logs, to help improve performance and enhance your experience.</li></ul><p><strong>Device Information:</strong></p><ul><li><strong>Device Information:</strong> We may collect information about your device, such as its operating system, device type, and unique device identifiers.&nbsp;</li><li><strong>Location Data:</strong> With your permission, we may collect information about your device’s location to enhance certain features of the App (e.g., syncing data across devices or providing local recommendations).</li></ul><p><strong>Third-Party Data:</strong>&nbsp;</p><p>We may integrate with third-party services for functionality such as analytics, advertising, or social sharing. These services may collect data about your usage of the App and other apps you use.&nbsp;</p><h2><strong>2.</strong> <strong>How We Use Your Information</strong></h2><p>We use the information we collect to:&nbsp;</p><ul><li>Provide, maintain, and improve the App and its features.&nbsp;</li><li>Track and analyze your livestock data to provide insights and recommendations.&nbsp;</li><li>Communicate with you regarding updates, promotions, or issues related to the App.&nbsp;</li><li>Respond to customer service inquiries and technical support requests.&nbsp;</li><li>Improve user experience through personalized content and recommendations.&nbsp;</li><li>Analyze usage patterns to help us enhance the functionality and performance of the App.&nbsp;</li></ul><h2><strong>3.</strong> <strong>How We Protect Your Information</strong></h2><p>We are committed to protecting your personal information. We use industry-standard security measures, including encryption, to safeguard your data. However, no method of transmission over the internet or electronic storage is 100% secure, and while we strive to protect your personal data, we cannot guarantee its absolute security.&nbsp;</p><h2><strong>4.</strong> <strong>Data Sharing and Disclosure</strong></h2><p>We do not share your personal information with third parties except in the following circumstances:&nbsp;</p><ul><li><strong>Service Providers:</strong> We may share your data with trusted third-party vendors who assist us in operating the App, such as cloud storage providers, analytics companies, and customer support services. These service providers are obligated to use your data only to perform tasks on our behalf and are not permitted to share or use it for other purposes.&nbsp;</li><li><strong>Legal Requirements:</strong> We may disclose your personal information if required to do so by law or in response to valid legal requests (e.g., court order, subpoena, or government investigation).&nbsp;</li><li><strong>Business Transfers:</strong> If we are involved in a merger, acquisition, or asset sale, your personal data may be transferred as part of the transaction.&nbsp;</li></ul><h2><strong>5.</strong> <strong>Your Rights and Choices</strong></h2><p>Depending on your location, you may have certain rights regarding your personal data, including</p><ul><li><strong>Access and Update:</strong> You can review, update, or correct your account information through the App's settings.&nbsp;</li><li><strong>Data Deletion:</strong> You may request to delete your personal information by contacting us or using the relevant settings in the App.</li><li><strong>Opt-Out of Communications:</strong> You can opt out of promotional emails by following the unsubscribe link included in our emails or adjusting your communication preferences in the App.&nbsp;</li></ul><p>If you are located in a region with specific data protection laws (e.g., GDPR for residents of the European Union), you may have additional rights regarding your data, such as the right to object to processing, request data portability, or lodge a complaint with a supervisory authority.&nbsp;</p><h2><strong>6.</strong> <strong>Children’s Privacy</strong>&nbsp;</h2><p>Our App is not intended for use by children under the age of 13. We do not knowingly collect personal information from children. If you believe we have collected personal information from a child under 13, please contact us immediately, and we will take steps to delete such information.&nbsp;</p><h2><strong>7.</strong> <strong>Changes to This Privacy Policy</strong>&nbsp;</h2><p>We may update our Privacy Policy from time to time. When we make changes, we will post the updated policy on this page and update the "Effective Date" at the top of the policy. We encourage you to review this Privacy Policy periodically for any updates. Your continued use of the App after any changes to this Privacy Policy will constitute your acknowledgment of the changes and your consent to abide by them.&nbsp;</p><h2><strong>8</strong>.<strong> Contact Us</strong>&nbsp;</h2><p>If you have any questions about this Privacy Policy or how we handle your personal data, please contact us at:&nbsp;</p><p><strong>Email:</strong> service@barnbook.info&nbsp;</p>\n    </body>\n    </html>	
\.


--
-- Data for Name: treatment_logs; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.treatment_logs (id, animal_id, treatment_date, injury_illness_info, temprature, action, notes, medicine_id, dose, method, reason, is_active, "createdAt", "updatedAt", temprature_unit, dose_unit) FROM stdin;
71	298	2025-02-10T02:32:16Z	Retained Placenta	104	Treatment		\N	2	SQ	\N	Active2025-02-10 02:34:01.887+00	2025-02-10 02:34:01.887+00	F	oz
72	287	2025-02-10T05:39:58Z	Temprature	100	Observation		\N			\N	Active	2025-02-10 05:40:18.88+00	2025-02-10 05:40:18.88+00	F	
73	287	2025-02-10T07:52:00Z	Temp	100.5	Treatment		121	1	Orally	\N	Active	2025-02-10 07:52:54.307+00	2025-02-10 09:10:20.916+00	F	CC
74	299	2025-03-07T18:39:27Z	limp back left		Observation		\N			\N	Active	2025-03-07 18:46:44.655+00	2025-03-07 18:46:44.655+00		
75	302	2025-04-09T22:55:52Z	Pneumonia 	104	Treatment		118	2	SQ	\N	Active	2025-04-09 22:56:57.037+00	2025-04-09 22:56:57.037+00	F	oz
76	302	2025-04-01T22:57:00Z	Deworm	102	Treatment		\N	10	Orally	\N	Active	2025-04-09 22:58:26.563+00	2025-04-09 22:58:59.201+00	F	oz
77	302	2025-04-09T22:58:56Z	Vaccine	102	Treatment		\N	2	SQ	\N	Active	2025-04-09 22:59:49.022+00	2025-04-09 22:59:49.022+00	F	oz
\.


--
-- Data for Name: user_associations; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.user_associations (id, user_id, name, is_active, "createdAt", "updatedAt", photo) FROM stdin;
\.


--
-- Data for Name: user_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.user_masters (id, full_name, mobile_number, email_id, otp, access_level, photo, manager_id, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: user_subscriptions; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.user_subscriptions (id, user_id, subscription_id, start_date, end_date, actual_end_date, "createdAt", "updatedAt", subscriptions_id, meta_data, paypal_subscription_id, subscription_status, next_billing_date, payment_type) FROM stdin;
120	353	7	2025-01-30 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-30 06:30:46.291+00	2025-01-30 06:30:46.291+00	\N	{"id": 7, "date": "2025-01-30", "plan_id": null, "user_id": 353, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"productId\\":\\"BB_4_99\\",\\"transactionReceipt\\":\\"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\\",\\"transactionId\\":\\"2000000843585034\\",\\"transactionDate\\":1738216147000,\\"originalTransactionDateIOS\\":1736332632000,\\"originalTransactionIdentifierIOS\\":\\"2000000824599988\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000843585034	Active	\N	ios
121	373	7	2025-01-30 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-30 10:50:23.326+00	2025-01-30 10:50:23.326+00	\N	{"id": 7, "date": "2025-01-30", "plan_id": null, "user_id": 373, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"productId\\":\\"BB_4_99\\",\\"transactionDate\\":1738234208000,\\"transactionId\\":\\"2000000843851769\\",\\"transactionReceipt\\":\\"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\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000843851769	Active	\N	ios
123	373	7	2025-01-30 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-30 10:51:38.257+00	2025-01-30 10:51:38.257+00	\N	{"id": 7, "date": "2025-01-30", "plan_id": null, "user_id": 373, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionId\\":\\"2000000843852654\\",\\"productId\\":\\"BB_4_99\\",\\"transactionReceipt\\":\\"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\\",\\"originalTransactionDateIOS\\":1738234209000,\\"transactionDate\\":1738234208000,\\"originalTransactionIdentifierIOS\\":\\"2000000843851769\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000843852654	Active	\N	ios
125	353	7	2025-01-30 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-30 12:14:07.726+00	2025-01-30 12:14:07.726+00	\N	{"id": 7, "date": "2025-01-30", "plan_id": null, "user_id": 353, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"productId\\":\\"BB_4_99\\",\\"transactionReceipt\\":\\"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\\",\\"originalTransactionIdentifierIOS\\":\\"2000000824599988\\",\\"transactionDate\\":1738239243000,\\"originalTransactionDateIOS\\":1736332632000,\\"transactionId\\":\\"2000000843939530\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000843939530	Active	\N	ios
131	377	7	2025-01-30 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-30 13:10:31.232+00	2025-01-30 13:10:31.232+00	\N	{"id": 7, "date": "2025-01-30", "plan_id": null, "user_id": 377, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionId\\":\\"2000000843999445\\",\\"originalTransactionIdentifierIOS\\":\\"2000000824599988\\",\\"transactionReceipt\\":\\"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\\",\\"originalTransactionDateIOS\\":1736332632000,\\"transactionDate\\":1738242606000,\\"productId\\":\\"BB_4_99\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000843999445	Active	\N	ios
135	383	7	2025-01-31 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-31 06:13:11.705+00	2025-01-31 06:13:11.705+00	\N	{"id": 7, "date": "2025-01-31", "plan_id": null, "user_id": 383, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionReceipt\\":\\"MIKlIQYJKoZIhvcNAQcCoIKlEjCCpQ4CAQExDzANBglghkgBZQMEAgEFADCClFcGCSqGSIb3DQEHAaCClEgEgpREMYKUQDAKAgEIAgEBBAIWADAKAgEUAgEBBAIMADALAgEBAgEBBAMCAQAwCwIBAwIBAQQDDAEyMAsCAQsCAQEEAwIBADALAgEPAgEBBAMCAQAwCwIBEAIBAQQDAgEAMAsCARkCAQEEAwIBAzAMAgEKAgEBBAQWAjQrMAwCAQ4CAQEEBAICAIswDQIBDQIBAQQFAgMCTRIwDQIBEwIBAQQFDAMxLjAwDgIBCQIBAQQGAgRQMzA1MBgCAQQCAQIEEKY/I4KlHWm/FyXZA4elDS0wGwIBAAIBAQQTDBFQcm9kdWN0aW9uU2FuZGJveDAcAgEFAgEBBBS3TTY+B+5xKTt+0CDqBQYwHTtH5zAeAgEMAgEBBBYWFDIwMjUtMDEtMzFUMDY6MTM6MDhaMB4CARICAQEEFhYUMjAxMy0wOC0wMVQwNzowMDowMFowIgIBAgIBAQQaDBhjb20uYmFybmJvb2suYmFybmJvb2thcHAwRgIBBwIBAQQ+PN7byVKm3+j4v9pC1l3LvM0rULSZ1tqru7rdZeivgYKzTNsZIPbD/8tH8XJ42gX3FryfiTWc0qdbUMa0cwwwTQIBBgIBAQRFDoL+xt5TPotUAOAf/6rZHnyufYxbmH1tfLK9V0GFGKtOTkKlW3sBRJtfaU9pEl622nrXwUmoZu3qUg9ZqU+b8vmEjqQAMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vBq8wGwICBqcCAQEEEgwQMjAwMDAwMDgyNDU5OTk4ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTA6NDI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vBrAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDYwNTgyODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTA6NDI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTA6NDc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vCM8wGwICBqcCAQEEEgwQMjAwMDAwMDgyNDYxMzQwOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTA6NDc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTA6NTI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vC+kwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDYxOTkzODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTA6NTI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTA6NTc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vDmUwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDYyODc1ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTA6NTc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MDI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vEPQwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDYzNDY3NjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MDI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MDc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vE8MwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY0MDgxNzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MDc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MTI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vFnAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY0NzAxNTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MTI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MTc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vGQAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY1Mjg0MjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MTc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MjI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vG34wGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY1NjY1OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MjI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6Mjc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vHkIwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY2MzczMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6Mjc6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6MzI6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vILgwGwICBqcCAQEEEgwQMjAwMDAwMDgyNDY2OTkyMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDhUMTE6MzI6MTJaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDhUMTE6Mzc6MTJaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6vI00wGwICBqcCAQEEEgwQMjAwMDAwMDgyNTgzMDk0NjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6MzA6NTdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTI6MzU6NTdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xUFQwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTgzOTQxOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6Mzc6NDhaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTI6NDI6NDhaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xU5QwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg0NTQ4NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6NDI6NTBaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTI6NDc6NTBaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xVfgwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg1Mzk2ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6NDg6NDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTI6NTM6NDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xWOkwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg1OTU5OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6NTM6NDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTI6NTg6NDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xWwowGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg2NjgzNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTI6NTg6NTNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MDM6NTNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xXiAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg3MzA4NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MDU6MjNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MTA6MjNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xYXcwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg3OTY5NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MTI6MDVaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MTc6MDVaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xZPAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg4NjgzMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MTc6MThaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MjI6MThaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xZ4swGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg5MjgwMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MjY6MjFaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MzE6MjFaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xbHgwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTg5OTAwMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MzE6MjZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6MzQ6MjZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xbwcwGwICBqcCAQEEEgwQMjAwMDAwMDgyNTkwMTUyNTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMDlUMTM6MzQ6MjZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMDlUMTM6Mzc6MjZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6xcGEwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM4MzM0NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDU6NDk6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTI6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ylnEwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM4NDk4MjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTI6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTU6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ylwAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM4NzQxNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTU6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTg6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ymBMwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM4OTQxMTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDU6NTg6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDE6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ymRUwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM5MjE2OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDE6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDQ6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ymfowGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM5NDU2OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDQ6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDc6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ymxEwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM5NjM4NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MDc6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTA6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ynCAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjM5OTUxNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTA6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTM6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ynU4wGwICBqcCAQEEEgwQMjAwMDAwMDgyNjQwMjI3NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTM6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTY6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6ynl0wGwICBqcCAQEEEgwQMjAwMDAwMDgyNjQwNDMxNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTY6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTk6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6yn3owGwICBqcCAQEEEgwQMjAwMDAwMDgyNjQwNjU5OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MTk6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MjI6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6yoLAwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjQwOTM1OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDY6MjI6MzdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDY6MjU6MzdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6yockwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU1MDkyOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MTY6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6MTk6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y1kwwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU1NTI2MDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MTk6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6MjI6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y10YwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU1ODkyNjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MjI6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6MjU6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y2M8wGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU2MTc3MTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MjU6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6Mjg6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y2k8wGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU2NTg4NjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6Mjg6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6MzE6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y28MwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU2ODc0NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MzE6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6MzQ6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y3UkwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU3MjQ1MTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6MzQ6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6Mzc6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y3vYwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU3NTM3NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6Mzc6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDA6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y4GowGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU3ODUxODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDA6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDM6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y4iEwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU4NDg3ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDM6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDY6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y5BkwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU4OTU5OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDY6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDk6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y5cYwGwICBqcCAQEEEgwQMjAwMDAwMDgyNjU5MjM1MjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMTBUMDg6NDk6MzlaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMTBUMDg6NTI6MzlaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U6y55YwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU3NzI0NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6Mzg6NTNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDU6NDE6NTNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7asdYwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU3ODY3OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6NDE6NTNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDU6NDQ6NTNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7aspswGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU4NTAzMzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6NDk6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTI6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7atWgwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU4NTgwNzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTI6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTU6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7athowGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU4NzA4MzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTU6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTg6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7atzEwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU4ODQ0NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDU6NTg6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDE6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7auAIwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5MDE5NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDE6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDQ6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7auNswGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5MjE2MDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDQ6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDc6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7auigwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5Mzg1ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MDc6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTA6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7auwEwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5NTA0NjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTA6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTM6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7avBgwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5NjE5MDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTM6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTY6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7avRQwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzU5NzY0NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTY6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMDY6MTk6MDdaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7avicwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzkxOTk5NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTE6NTk6MzBaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MDI6MzBaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bZ7EwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzkyNDA0NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MDI6MzZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MDU6MzZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7baR4wGwICBqcCAQEEEgwQMjAwMDAwMDg0MzkzMTQ0NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MDc6MzBaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTA6MzBaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bbDcwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzkzMzg5ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTA6MzBaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTM6MzBaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bbXkwGwICBqcCAQEEEgwQMjAwMDAwMDg0MzkzOTUyOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTQ6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTc6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bcCowGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk0MTA2MDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MTc6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjA6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bcWAwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk0NDI0NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjA6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjM6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bctwwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk0OTc1ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjM6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjY6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bdL4wGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk1MjM5NjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MjY6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6Mjk6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bdhUwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk1NzAyNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6Mjk6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MzI6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7beA4wGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk1OTc1OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MzI6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6MzU6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7beX8wGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk2MzIyNjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6MzU6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6Mzg6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7be0EwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk4MzI5MTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6NTU6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTI6NTg6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bho0wGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk4NTExMDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTI6NTg6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDE6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bh68wGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk4ODMxMTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDE6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDQ6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7biXQwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk5MjcxNjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDQ6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDc6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bi1cwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk5NTk4ODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTM6MDc6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTM6MTA6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bjMwwGwICBqcCAQEEEgwQMjAwMDAwMDg0Mzk5OTQ0NTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTM6MTA6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTM6MTM6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7bjmIwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE1MDk1NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6Mzc6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDA6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b4AMwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE1Mjg0NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDA6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDM6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b4Q8wGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE1NTE3MTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDM6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDY6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b4pUwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE1NzUzNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDY6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDk6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b5DQwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE1OTkzNDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NDk6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTI6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b5X8wGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE2MjA0NDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTI6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTU6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b5yowGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE2NDMxMTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTU6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTg6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b6NIwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE2ODc3OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTU6NTg6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDE6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b6lAwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE3MTQ3OTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDE6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDQ6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b69UwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE3MzQwOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDQ6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDc6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b7V4wGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE3NjAyNTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTY6MDc6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTY6MTA6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b7sUwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDE3ODUyMDAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzBUMTY6MTA6MDNaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzBUMTY6MTM6MDNaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7b8F4wGwICBqcCAQEEEgwQMjAwMDAwMDg0NDQ5ODY1MjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDU6NDE6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDU6NDQ6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7c66QwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDUwMDM5MjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDU6NDQ6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDU6NDc6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7c7EAwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDUwNDMxODAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDU6NDc6MTFaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDU6NTA6MTFaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7c7akwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDUwNzA4NzAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDU6NTE6MDZaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDU6NTQ6MDZaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7c7xMwGwICBqcCAQEEEgwQMjAwMDAwMDg0NDUxOTAyOTAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDY6MDk6NDRaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDY6MTI6NDRaMIIBggIBEQIBAQSCAXgxggF0MAsCAgatAgEBBAIMADALAgIGsAIBAQQCFgAwCwICBrICAQEEAgwAMAsCAgazAgEBBAIMADALAgIGtAIBAQQCDAAwCwICBrUCAQEEAgwAMAsCAga2AgEBBAIMADAMAgIGpQIBAQQDAgEBMAwCAgarAgEBBAMCAQMwDAICBq4CAQEEAwIBADAMAgIGsQIBAQQDAgEAMAwCAga3AgEBBAMCAQAwDAICBroCAQEEAwIBADASAgIGpgIBAQQJDAdCQl80Xzk5MBICAgavAgEBBAkCBwca/U7c9U4wGwICBqcCAQEEEgwQMjAwMDAwMDg0NDUyNDAxNjAbAgIGqQIBAQQSDBAyMDAwMDAwODI0NTk5OTg4MB8CAgaoAgEBBBYWFDIwMjUtMDEtMzFUMDY6MTM6MDdaMB8CAgaqAgEBBBYWFDIwMjUtMDEtMDhUMTA6Mzc6MTJaMB8CAgasAgEBBBYWFDIwMjUtMDEtMzFUMDY6MTY6MDdaoIIO4jCCBcYwggSuoAMCAQICEH05IAlOvvP478psEOqOQwMwDQYJKoZIhvcNAQELBQAwdTFEMEIGA1UEAww7QXBwbGUgV29ybGR3aWRlIERldmVsb3BlciBSZWxhdGlvbnMgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxCzAJBgNVBAsMAkc1MRMwEQYDVQQKDApBcHBsZSBJbmMuMQswCQYDVQQGEwJVUzAeFw0yNDA3MjQxNDUwMDNaFw0yNjA4MjMxNDUwMDJaMIGJMTcwNQYDVQQDDC5NYWMgQXBwIFN0b3JlIGFuZCBpVHVuZXMgU3RvcmUgUmVjZWlwdCBTaWduaW5nMSwwKgYDVQQLDCNBcHBsZSBXb3JsZHdpZGUgRGV2ZWxvcGVyIFJlbGF0aW9uczETMBEGA1UECgwKQXBwbGUgSW5jLjELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCtDzabzzfagXFb1vEU/BnT9dTwN01cRsKaKUdRYb6xP5hZ7BwXuq+zCVcFRNcXbV3SMMK7M6HUifR2OVZXLTU/Tal4gtFaYdZ7sC6VVPAHv2DkKaQzPUevdo9dA5uaOAohzN8Ul4fUHWHKKo3EPlWufJ1iALAKGDm45h2N86Qw8ZSTY9sT6TyOKf3ViHOzFJhvc8niM9Un9rbjddbqzqvf4vgMvlmK7XB6rpIF2UwHIOVtTEh00D7+YHcBeT4TO3+FAM+Vf4JdlCA065J1tQZB+5+ZlyS677rYmUr0dy552Djeo9gvRVBE5DMimdX35ZyE+cYEEcvgVeE0yxWyIxWlAgMBAAGjggI7MIICNzAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFBmLl41KW2F4V/SlXDUSijkI47B1MHAGCCsGAQUFBwEBBGQwYjAtBggrBgEFBQcwAoYhaHR0cDovL2NlcnRzLmFwcGxlLmNvbS93d2RyZzUuZGVyMDEGCCsGAQUFBzABhiVodHRwOi8vb2NzcC5hcHBsZS5jb20vb2NzcDAzLXd3ZHJnNTA1MIIBHwYDVR0gBIIBFjCCARIwggEOBgoqhkiG92NkBQYBMIH/MDcGCCsGAQUFBwIBFitodHRwczovL3d3dy5hcHBsZS5jb20vY2VydGlmaWNhdGVhdXRob3JpdHkvMIHDBggrBgEFBQcCAjCBtgyBs1JlbGlhbmNlIG9uIHRoaXMgY2VydGlmaWNhdGUgYnkgYW55IHBhcnR5IGFzc3VtZXMgYWNjZXB0YW5jZSBvZiB0aGUgdGhlbiBhcHBsaWNhYmxlIHN0YW5kYXJkIHRlcm1zIGFuZCBjb25kaXRpb25zIG9mIHVzZSwgY2VydGlmaWNhdGUgcG9saWN5IGFuZCBjZXJ0aWZpY2F0aW9uIHByYWN0aWNlIHN0YXRlbWVudHMuMDAGA1UdHwQpMCcwJaAjoCGGH2h0dHA6Ly9jcmwuYXBwbGUuY29tL3d3ZHJnNS5jcmwwHQYDVR0OBBYEFO8oV7RgiElVMfD9WA7x/RqTxCT8MA4GA1UdDwEB/wQEAwIHgDAQBgoqhkiG92NkBgsBBAIFADANBgkqhkiG9w0BAQsFAAOCAQEANSPSu1C/NmfMADVEfIqTp8Ren7lE6nJHzxCGuhztCnUeWTB1hcoidYlCC+GccOU+pTx6kPg/EqxzTCRYmS7fgfEPJaYOpTBOpeawzVN7RUuw5ls6MNa09CtSog9P1hMjgjPmLYWRUHwx1EhxlPoIle6dAGYaueaJDI6xiX0WSrCIFR0UKYcUHTH6rmoA8j2RY1uAgkgePkrTAt2GXc1y4jc8qAslu2Paqz8xZagnG/A7U0UdEn5GH8WsH8hznJj4NLBgfe7zEQxWlj4JBOft5B5HWbDwgzcu+xzHE6Npcuu9mCaQhI9uTfxoKftNbhjt3K2qucRpmBQI/flL+2z+mTCCBFUwggM9oAMCAQICFDt+gAru0wKh5uzbl9nKrCic8WmUMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMSYwJAYDVQQLEx1BcHBsZSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEWMBQGA1UEAxMNQXBwbGUgUm9vdCBDQTAeFw0yMDEyMTYxOTM4NTZaFw0zMDEyMTAwMDAwMDBaMHUxRDBCBgNVBAMMO0FwcGxlIFdvcmxkd2lkZSBEZXZlbG9wZXIgUmVsYXRpb25zIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQswCQYDVQQLDAJHNTETMBEGA1UECgwKQXBwbGUgSW5jLjELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCfXdof+/q80EsiPMfWJvoX9/SfHj5kEWaa716+qzS9qiwhbtYelCGFLHTBDhBhqjxjSn5K48h11s/CnAhIe2q5KbHJZv3IihbRsgQ8grqAbOL/CnLrrP47b0i+nosRTZV9snuQLwIcTvxJvtdvtU++eMba3rLNydlmETta6QlFc4lQ1E7iaAV+2nWcSwGu2uPPbXRN3lPQ1Ro4gjrQneNdKXuxgeopJwv7YHyGEvvwYk8G50zRH9ltnu1z2nghDZ1w2UZXkF9nhMFzdwqoYmK2rnCGu3Ujia159uak1P2DJjIKOySSWyChnNEvgBib3TwL57X97IBXDxeePyuHJ7v3AgMBAAGjge8wgewwEgYDVR0TAQH/BAgwBgEB/wIBADAfBgNVHSMEGDAWgBQr0GlHlHYJ/vRrjS5ApvdHTX8IXjBEBggrBgEFBQcBAQQ4MDYwNAYIKwYBBQUHMAGGKGh0dHA6Ly9vY3NwLmFwcGxlLmNvbS9vY3NwMDMtYXBwbGVyb290Y2EwLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovL2NybC5hcHBsZS5jb20vcm9vdC5jcmwwHQYDVR0OBBYEFBmLl41KW2F4V/SlXDUSijkI47B1MA4GA1UdDwEB/wQEAwIBBjAQBgoqhkiG92NkBgIBBAIFADANBgkqhkiG9w0BAQsFAAOCAQEAWsQ1otnmCp5SogCCInfNci+Q+SKvFCXMqgpCYJLCvXUd60zKFeV+a0AQXvtbRXQN8Hp9iJHO3mOLQonSGN9Bs1ieBgiHSN1AryPV7essYOXrpH8c6ZyD1pRfTGI5ik6uE419Q7jcXqy+GEDy5g8sXROT8XtlqMJoSN7/tJabDPsyNp6eDZVfOAqLltISbLeLC47XPuxvAarOTUVg24RxZmLlGWUwzYr/RVP7bvuId0PDSGP591Gzcl554lbPvLuEuThaeK4RSFK7DTWLlN7MdJpo9UlglKzyqLMVhpDQzDBDhtPlcAJRtIHAqJfU6uqwjAlA7ziTss0iA+tnQ2XIRTCCBLswggOjoAMCAQICAQIwDQYJKoZIhvcNAQEFBQAwYjELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MRYwFAYDVQQDEw1BcHBsZSBSb290IENBMB4XDTA2MDQyNTIxNDAzNloXDTM1MDIwOTIxNDAzNlowYjELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MRYwFAYDVQQDEw1BcHBsZSBSb290IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5JGpCR+R2x5HUOsF7V55hC3rNqJXTFXsixmJ3vlLbPUHqyIwAugYPvhQCdN/QaiY+dHKZpwkaxHQo7vkGyrDH5WeegykR4tb1BY3M8vED03OFGnRyRly9V0O1X9fm/IlA7pVj01dDfFkNSMVSxVZHbOU9/acns9QusFYUGePCLQg98usLCBvcLY/ATCMt0PPD5098ytJKBrI/s61uQ7ZXhzWyz21Oq30Dw4AkguxIRYudNU8DdtiFqujcZJHU1XBry9Bs/j743DN5qNMRX4fTGtQlkGJxHRiCxCDQYczioGxMFjsWgQyjGizjx3eZXP/Z15lvEnYdp8zFGWhd5TJLQIDAQABo4IBejCCAXYwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFCvQaUeUdgn+9GuNLkCm90dNfwheMB8GA1UdIwQYMBaAFCvQaUeUdgn+9GuNLkCm90dNfwheMIIBEQYDVR0gBIIBCDCCAQQwggEABgkqhkiG92NkBQEwgfIwKgYIKwYBBQUHAgEWHmh0dHBzOi8vd3d3LmFwcGxlLmNvbS9hcHBsZWNhLzCBwwYIKwYBBQUHAgIwgbYagbNSZWxpYW5jZSBvbiB0aGlzIGNlcnRpZmljYXRlIGJ5IGFueSBwYXJ0eSBhc3N1bWVzIGFjY2VwdGFuY2Ugb2YgdGhlIHRoZW4gYXBwbGljYWJsZSBzdGFuZGFyZCB0ZXJtcyBhbmQgY29uZGl0aW9ucyBvZiB1c2UsIGNlcnRpZmljYXRlIHBvbGljeSBhbmQgY2VydGlmaWNhdGlvbiBwcmFjdGljZSBzdGF0ZW1lbnRzLjANBgkqhkiG9w0BAQUFAAOCAQEAXDaZTC14t+2Mm9zzd5vydtJ3ME/BH4WDhRuZPUc38qmbQI4s1LGQEti+9HOb7tJkD8t5TzTYoj75eP9ryAfsfTmDi1Mg0zjEsb+aTwpr/yv8WacFCXwXQFYRHnTTt4sjO0ej1W8k4uvRt3DfD0XhJ8rxbXjt57UXF6jcfiI1yiXV2Q/Wa9SiJCMR96Gsj3OBYMYbWwkvkrL4REjwYDieFfU9JmcgijNq9w2Cz97roy/5U2pbZMBjM3f3OgcsVuvaDyEO2rpzGU+12TZ/wYdV2aeZuTJC+9jVcZ5+oVK3G72TQiQSKscPHbZNnF5jyEuAF1CqitXa5PzQCQc3sHV1ITGCAbUwggGxAgEBMIGJMHUxRDBCBgNVBAMMO0FwcGxlIFdvcmxkd2lkZSBEZXZlbG9wZXIgUmVsYXRpb25zIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQswCQYDVQQLDAJHNTETMBEGA1UECgwKQXBwbGUgSW5jLjELMAkGA1UEBhMCVVMCEH05IAlOvvP478psEOqOQwMwDQYJYIZIAWUDBAIBBQAwDQYJKoZIhvcNAQEBBQAEggEAYTUuxSHAgNXhMt6sNSoMtUaVV7ru4fqMV/BwKjJvAr7Q9Iz4RoGvxP2hjZyFwQrfQp5U7Ik13SgjNT9fGKHBN22BuqQp1YiYAhyiiQmW1JcrUXprcvJmsAciu7gbeCq2tZ6MwtmqWxWssV7giUdgMeXOni8KXRjx4kotcy0kct+dfWHJuTvTECxAafdsGOj6QHtQI9X7l1gPW2HGlswlEVgF4EcdWpSgWztehjNxI24L23dH7HodSshWIaAp77lAbyYDEuJFZjx1iCEix3bgGOBks0ADR6DCDd5DcGMAnPuCsud4T156ExVXz4bZ6xhoh8huKqzyHECHkXW4kAwvNw==\\",\\"originalTransactionIdentifierIOS\\":\\"2000000824599988\\",\\"transactionDate\\":1738303987000,\\"originalTransactionDateIOS\\":1736332632000,\\"productId\\":\\"BB_4_99\\",\\"transactionId\\":\\"2000000844524016\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000844524016-1738303991704	Active	\N	ios
136	383	7	2025-01-31 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-31 06:13:11.733+00	2025-01-31 06:13:11.733+00	\N	{"id": 7, "date": "2025-01-31", "plan_id": null, "user_id": 383, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionReceipt\\":\\"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\\",\\"originalTransactionIdentifierIOS\\":\\"2000000824599988\\",\\"transactionDate\\":1738303987000,\\"originalTransactionDateIOS\\":1736332632000,\\"productId\\":\\"BB_4_99\\",\\"transactionId\\":\\"2000000844524016\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000844524016-1738303991733	Active	\N	ios
137	373	7	2025-01-31 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-31 12:40:20.822+00	2025-01-31 12:40:20.822+00	\N	{"id": 7, "date": "2025-01-31", "plan_id": null, "user_id": 373, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"originalTransactionIdentifierIOS\\":\\"2000000843851769\\",\\"transactionReceipt\\":\\"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\\",\\"originalTransactionDateIOS\\":1738234209000,\\"transactionDate\\":1738320608000,\\"productId\\":\\"BB_4_99\\",\\"transactionId\\":\\"2000000844849048\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	2000000844849048-1738327220821	Active	\N	ios
138	386	7	2025-01-31 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-31 19:53:29.375+00	2025-01-31 19:53:29.375+00	\N	{"id": 7, "date": "2025-01-31", "plan_id": null, "user_id": 386, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionDate\\":1738353205000,\\"transactionId\\":\\"210002081988088\\",\\"transactionReceipt\\":\\"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\\",\\"productId\\":\\"BB_4_99\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	210002081988088-1738353209374	Active	\N	ios
139	386	7	2025-01-31 00:00:00+00	2025-02-28 00:00:00+00	2025-02-28 00:00:00+00	2025-01-31 19:53:29.377+00	2025-01-31 19:53:29.377+00	\N	{"id": 7, "date": "2025-01-31", "plan_id": null, "user_id": 386, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionDate\\":1738353205000,\\"transactionId\\":\\"210002081988088\\",\\"transactionReceipt\\":\\"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\\",\\"productId\\":\\"BB_4_99\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	210002081988088-1738353209377	Active	\N	ios
140	387	7	2025-02-03 00:00:00+00	2025-03-03 00:00:00+00	2025-03-03 00:00:00+00	2025-02-03 01:53:11.202+00	2025-02-03 01:53:11.202+00	\N	{"id": 7, "date": "2025-02-03", "plan_id": null, "user_id": 387, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionReceipt\\":\\"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\\",\\"transactionId\\":\\"570001843106025\\",\\"transactionDate\\":1738547587000,\\"productId\\":\\"BB_4_99\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	570001843106025-1738547591201	Active	\N	ios
141	387	7	2025-02-03 00:00:00+00	2025-03-03 00:00:00+00	2025-03-03 00:00:00+00	2025-02-03 01:53:11.222+00	2025-02-03 01:53:11.222+00	\N	{"id": 7, "date": "2025-02-03", "plan_id": null, "user_id": 387, "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-11-15T06:58:50.573Z", "is_active": "Inactive", "updatedAt": "2024-12-31T11:13:33.400Z", "plan_offers": ["Save 50%", "Get 7 Days Free"], "transaction": "{\\"transactionReceipt\\":\\"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\\",\\"transactionId\\":\\"570001843106025\\",\\"transactionDate\\":1738547587000,\\"productId\\":\\"BB_4_99\\"}", "subscription_id": "7", "discounted_amount": 12, "subscriptions_tag": "", "subscriptions_title": "1 Month", "subscriptions_amount": 120, "discount_in_percentage": "90", "additional_days_offered": "7"}	570001843106025-1738547591222	Active	\N	ios
142	384	1	2025-02-28 00:00:00+00	2025-05-18 00:00:00+00	2025-03-28 00:00:00+00	2025-02-28 17:08:05.58+00	2025-07-08 11:13:35.093+00	\N	{"id": 1, "date": "2025-02-28", "token": "7FS9195375379614M", "plan_id": "P-5A843537XB831304EM6APRNY", "user_id": "384", "ba_token": "BA-4BC81112372389221", "features": ["Add unlimited users", "Get access to all the features", "Get all the benefits"], "interval": "Monthly", "createdAt": "2024-10-21T11:03:06.597Z", "is_active": "Active", "updatedAt": "2025-01-10T10:38:47.767Z", "plan_offers": ["Full Access"], "subcriptions_id": "1", "subscription_id": "I-5DX6B975GR59", "discounted_amount": 4.99, "subscriptions_tag": "STANDARD", "subscriptionDetails": {"id": "I-5DX6B975GR59", "links": [{"rel": "cancel", "href": "https://api.paypal.com/v1/billing/subscriptions/I-5DX6B975GR59/cancel", "method": "POST"}, {"rel": "edit", "href": "https://api.paypal.com/v1/billing/subscriptions/I-5DX6B975GR59", "method": "PATCH"}, {"rel": "self", "href": "https://api.paypal.com/v1/billing/subscriptions/I-5DX6B975GR59", "method": "GET"}, {"rel": "suspend", "href": "https://api.paypal.com/v1/billing/subscriptions/I-5DX6B975GR59/suspend", "method": "POST"}, {"rel": "capture", "href": "https://api.paypal.com/v1/billing/subscriptions/I-5DX6B975GR59/capture", "method": "POST"}], "status": "ACTIVE", "plan_id": "P-5A843537XB831304EM6APRNY", "quantity": "1", "start_time": "2025-02-28T17:06:59Z", "subscriber": {"name": {"surname": "Bouren", "given_name": "Alyssa"}, "payer_id": "AXGVYUFFHBRCS", "email_address": "alyssabouren@gmail.com", "shipping_address": {"address": {"postal_code": "79359", "admin_area_1": "TX", "admin_area_2": "Seagraves", "country_code": "US", "address_line_1": "603 CR 226"}}}, "create_time": "2025-02-28T17:08:03Z", "update_time": "2025-02-28T17:08:04Z", "billing_info": {"last_payment": {"time": "2025-02-28T17:08:03Z", "amount": {"value": "4.99", "currency_code": "USD"}}, "cycle_executions": [{"sequence": 1, "tenure_type": "REGULAR", "total_cycles": 0, "cycles_completed": 1, "cycles_remaining": 0, "current_pricing_scheme_version": 1}], "next_billing_time": "2025-03-28T10:00:00Z", "outstanding_balance": {"value": "0.0", "currency_code": "USD"}, "failed_payments_count": 0}, "plan_overridden": false, "shipping_amount": {"value": "0.0", "currency_code": "USD"}, "status_update_time": "2025-02-28T17:08:04Z"}, "subscriptions_title": "1 Month", "subscriptions_amount": null, "discount_in_percentage": "50", "additional_days_offered": "29"}	I-5DX6B975GR59	Suspended	2025-03-28 10:00:00+00	paypal
144	353	1	2025-08-20 10:22:56.71894+00	2025-12-31 23:59:59+00	2025-12-31 23:59:59+00	2025-08-20 10:22:56.71894+00	2025-08-20 10:22:56.71894+00	\N	{"plan": "Premium", "notes": "User subscribed via PayPal"}	PAYPAL-SUB-12345	Active2025-09-20 00:00:00+00	paypal
\.


--
-- Data for Name: user_tax_documents; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.user_tax_documents (id, user_id, document_name, document_url, is_active, "createdAt", "updatedAt", document_date) FROM stdin;
\.


--
-- Data for Name: user_yqcas; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.user_yqcas (id, user_id, name, yqca_date, is_active, "createdAt", "updatedAt", certificate) FROM stdin;
66	356	IMG_0015.JPG	2025-01-06 12:52:40+00	Active	2025-01-06 12:52:55.522+00	2025-01-06 12:52:55.522+00	uploads/users/yqcas/1736167975514-1826.jpeg
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.users (id, first_name, last_name, email, country_calling_code_id, mobile_number, otp, otp_expiry, access_level, role, photo, manager_id, is_login_required, is_active, "createdAt", "updatedAt") FROM stdin;
354	John	Deo	\N	\N	\N	\N	\N	beginner	2	uploads/users/1736166846602-3931.png	353	fActive	2025-01-06 12:34:06.581+00	2025-01-06 12:34:06.604+00
355	Sam	Dolph	sam@gmail.com	1	7788998899	\N	\N	intermediate	2	uploads/users/1736166939005-1704.png	353	t	Active	2025-01-06 12:35:38.977+00	2025-01-06 12:35:39.056+00
356	jonny	joe	\N	\N	\N	\N	\N	intermediate	2	uploads/defaultImages/defaultProfileImage.png	353	f	Active	2025-01-06 12:36:19.226+00	2025-01-06 12:36:19.226+00
368	y	y	\N	\N	\N	\N	\N	intermediate	2	uploads/defaultImages/defaultProfileImage.png	366	f	Active	2025-01-13 17:05:18.307+00	2025-01-13 17:05:18.307+00
357	Jim	chad	jim@gmail.com	1	7777788888	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	353	t	Active	2025-01-06 13:02:59.923+00	2025-01-06 13:03:37.144+00
369	prakash	t	prakasht@logicloom.in	1	8550998862	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-16 10:31:01.383+00	2025-01-16 10:31:35.629+00
383	Mandar	j	Mandar.jr99@gmail.com	1	8329126745	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-31 06:12:45.535+00	2025-01-31 06:12:45.535+00
359	Bhaktisagar	pawar	bhaktipawar2223@gmail.com	1	6965888566	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-07 08:10:27.404+00	2025-01-07 08:10:27.404+00
373	vv	Bbbbbbb	alexa.misrem7.paid@icloud.com	19	6693334215	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-30 10:49:56.009+00	2025-01-31 12:40:04.32+00
360	testQ	Tst	\N	\N	\N	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	358	f	Active	2025-01-07 11:22:36.133+00	2025-01-07 11:22:36.133+00
361	Bhaktisagar	pawar	bhaktiawar22223@gmail.com	1	45488886666	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-07 13:21:35.54+00	2025-01-07 13:21:35.54+00
362	b	p	bhaktar22223@gmail.com	1	22225222	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-07 13:22:31.225+00	2025-01-07 13:22:31.225+00
363	b	p	\N	\N	\N	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	362	f	Active	2025-01-08 05:17:03.929+00	2025-01-08 05:17:03.929+00
370	Ramesh	Babu	rameshbabu.athmuri@gmail.com	1	9550951686	\N	\N	expert	1	uploads/users/profileImage//1737262255111-1774.png	\N	t	Active	2025-01-19 04:46:51.006+00	2025-01-19 04:50:55.127+00
358	Bhaktisagar	pawar	bhaktipawar22223@gmail.com	1	7875309878	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-07 06:17:46.825+00	2025-01-08 05:19:10.436+00
371	Koteswararao	A	\N	\N	\N	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	370	f	Active	2025-01-19 04:55:45.86+00	2025-01-19 04:55:45.86+00
372	apple	teview	winstonwest2022@gmail.com	2	6693334444	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-29 16:08:16.923+00	2025-01-29 16:08:16.923+00
385	Gunner	Bouren	\N	\N	\N	\N	\N	beginner	2	uploads/users/profileImage//1738328524398-7980.png	384	f	Active	2025-01-31 13:01:32.13+00	2025-01-31 13:02:04.437+00
386	Savannah	Sheets 	savannah.cooper@gmail.com	19	2544859285	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-31 19:52:43.347+00	2025-01-31 19:52:43.347+00
387	Jenna	alvidrez 	jennaalvidrez@yahoo.com	19	4327884664	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-03 01:53:02.095+00	2025-02-03 01:53:02.095+00
388	Saurabh	Shinde	saurabhshinde@gmail.com	1	7758980593	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-03 07:20:08.82+00	2025-02-03 07:20:08.82+00
389	shubam	shinde	shubham@gmail.com	1	8263815557	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-03 11:53:51.626+00	2025-02-03 11:53:51.626+00
391	Rylann	Bouren	alyssabouren@gmail.com	2	8062158964	\N	\N	intermediate	2	uploads/users/profileImage//1739156983460-8675.png	384	t	Active	2025-02-10 03:07:23.328+00	2025-02-10 03:10:10.579+00
364	mandar	jahagirdar	Mandar.jr@gmail.com	1	7972165352	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-10 09:19:38.333+00	2025-01-10 09:19:38.333+00
365	prakash	t	ompattil12@gmail.com	19	8550998862	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-10 12:04:52.396+00	2025-01-10 12:08:18.693+00
374	mandar	j	Mandar.jr9@gmail.com	1	9545154311	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-30 11:41:45.643+00	2025-01-30 11:41:45.643+00
392	Brianna 	Acevedo	acevedobrianna3@gmail.com	2	8068936780	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-11 18:27:35.347+00	2025-02-11 18:32:41.78+00
367	a	s	\N	\N	\N	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	366	f	Active	2025-01-13 16:48:14.439+00	2025-01-13 16:54:32.04+00
366	Abc	efg	cshin9115@gmail.com	1	7045861910	\N	\N	expert	1	uploads/users/profileImage//1736787490500-3480.png	\N	t	Active	2025-01-13 13:49:10.413+00	2025-01-13 16:58:10.502+00
393	Leah 	McCoy 	jlbkmccoy1012@gmail.com	2	5054021114	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-18 02:06:25.584+00	2025-02-18 02:06:25.584+00
390	Thomas 	Lane 	tlane3710@yahoo.com	19	5054190489	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-06 16:36:27.744+00	2025-02-06 16:36:27.744+00
394	Evan	stone	evanstone806@gmail.com	2	8067783428	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-18 15:42:35.922+00	2025-02-18 15:42:35.922+00
395	Cele	Stone	savageclublambs@hotmail.com	2	8062413644	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-02-18 15:43:52.641+00	2025-02-18 15:47:50.359+00
396	test	test	\N	\N	\N	\N	\N	beginner	2	uploads/defaultImages/defaultProfileImage.png	394	f	Active	2025-02-18 15:57:31.611+00	2025-02-18 15:57:31.611+00
353	Mandarr	J	mandarj@logicloom.in	2	9960189992	1234	2025-08-22 06:06:14.804+00	expert	1	uploads/users/profileImage//1736167270341-3276.png	\N	t	Active	2025-01-06 12:30:51.978+00	2025-08-22 06:04:14.804+00
397	Quig	Stone	\N	\N	\N	\N	\N	beginner	2	uploads/users/1741369666258-3869.png	384	fActive	2025-03-07 17:47:46.237+00	2025-03-07 17:47:46.258+00
384	Alyssa	Bouren	lane.alyssa.t@gmail.com	2	5056090380	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-01-31 12:59:41.944+00	2025-04-09 22:45:48.402+00
398	Dylan 	Thompson 	thomdy56@gmail.com	2	5054865045	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Active	2025-07-04 00:39:51.917+00	2025-07-04 00:39:51.917+00
377	mandar	j	Mandar.jr999@gmail.com	19	9960189992	\N	\N	expert	1	uploads/defaultImages/defaultProfileImage.png	\N	t	Inactive	2025-01-30 13:10:22.456+00	2025-01-30 13:10:22.456+00
\.


--
-- Data for Name: vaccine_logs; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.vaccine_logs (id, animal_id, vaccine_name, vaccine_date, medicine_id, dose, method, reason, notes, is_active, "createdAt", "updatedAt", veterinarian_id, unit) FROM stdin;
140	287	Vitamin B	2025-01-06T12:55:44.921Z	113	10	Orally	all		Active	2025-01-06 12:56:11.637+00	2025-01-06 12:56:11.637+00	\N	CC
141	298		2025-02-10T02:38:08.416Z	\N	2	SQ	prevention 		Active	2025-02-10 02:38:36.336+00	2025-02-10 02:38:36.336+00	\N	ML
142	299		2025-02-10T02:38:08.416Z	\N	2	SQ	prevention 		Active	2025-02-10 02:38:36.336+00	2025-02-10 02:38:36.336+00	\N	ML
143	300	118	2025-02-14T04:41:00Z	\N	2	SQ	Prevention	N/A	Active	2025-02-14 04:42:16.895+00	2025-02-14 04:42:16.895+00	\N	ML
\.


--
-- Data for Name: validation_values; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.validation_values (id, animal_id, validation_number, validation_type, address, validation_date, tag_location, is_active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: veterinarian_masters; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.veterinarian_masters (id, animal_id, office_name, veterinarian_1, veterinarian_2, office_phone, address, country_id, state_id, is_active, "createdAt", "updatedAt", user_id) FROM stdin;
88	\N	Shivaji Nagar	Sam	john	776688998	Pune	1	4	Active	2025-01-06 12:45:54.177+00	2025-01-06 12:45:54.177+00	353
89	\N	Texas Animal Veterinar	Dr Steven	Dr Suji	5832549625	texas	2	7	Active	2025-01-19 05:03:41.153+00	2025-01-19 05:03:41.153+00	370
90	\N	Terry County Veterinarian 	Dr Jim		18065856363	BrownfieldTX	2	7	Active	2025-02-10 02:47:04.655+00	2025-02-10 02:47:04.655+00	384
\.


--
-- Data for Name: water_logs; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.water_logs (id, animal_id, log_date, amount, unit, is_active, "createdAt", "updatedAt") FROM stdin;
231	287	2025-01-06 12:42:13+00	20	L	Active	2025-01-06 12:47:48.677+00	2025-01-06 12:47:48.677+00
232	287	2025-01-06 12:47:46+00	5	L	Active	2025-01-06 12:48:00.478+00	2025-01-06 12:48:00.478+00
233	287	2025-01-06 12:47:58+00	3	gal	Active	2025-01-06 12:48:11.917+00	2025-01-06 12:48:11.917+00
234	287	2025-01-01 18:30:00+00	20	gal	Active	2025-01-06 12:48:37.527+00	2025-01-06 12:48:37.527+00
235	301	2025-02-18 16:08:10+00	22	oz	Active	2025-02-18 16:13:20.869+00	2025-02-18 16:13:20.869+00
236	301	2025-02-18 16:13:26+00	592	L	Active	2025-02-18 16:13:52.511+00	2025-02-18 16:13:52.511+00
237	299	2025-03-07 18:33:49+00	60	oz	Active	2025-03-07 18:49:28.886+00	2025-03-07 18:49:28.886+00
238	299	2025-03-07 18:49:25+00	20	gal	Active	2025-03-07 18:51:03.123+00	2025-03-07 18:51:03.123+00
\.


--
-- Data for Name: weight_logs; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.weight_logs (id, animal_id, log_date, weight, unit, is_active, "createdAt", "updatedAt") FROM stdin;
74	287	2024-12-19 18:30:00+00	20	Lbs	Active	2025-01-06 12:49:39.515+00	2025-01-06 12:49:39.515+00
75	287	2025-01-06 12:51:46+00	10	Lbs	Active	2025-01-06 12:52:10.386+00	2025-01-06 12:52:10.386+00
76	301	2025-02-18 16:13:57+00	62	Lbs	Active	2025-02-18 16:14:29.481+00	2025-02-18 16:14:29.481+00
\.


--
-- Data for Name: weight_targets; Type: TABLE DATA; Schema: public; Owner: barnbookprd
--

COPY public.weight_targets (id, animal_id, target_date, target_weight, is_active, "createdAt", "updatedAt", weekly_target_weight, target_weight_unit, weekly_target_weight_unit) FROM stdin;
\.


--
-- Name: admin_user_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.admin_user_masters_id_seq', 7, true);


--
-- Name: animal_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.animal_categories_id_seq', 18, true);


--
-- Name: animal_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.animal_documents_id_seq', 47, true);


--
-- Name: animal_shows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.animal_shows_id_seq', 400, true);


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.animals_id_seq', 303, true);


--
-- Name: brand_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.brand_values_id_seq', 10, true);


--
-- Name: breed_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.breed_masters_id_seq', 20, true);


--
-- Name: camps_contests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.camps_contests_id_seq', 61, true);


--
-- Name: configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.configurations_id_seq', 3, true);


--
-- Name: country_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.country_masters_id_seq', 19, true);


--
-- Name: eid_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.eid_values_id_seq', 7, true);


--
-- Name: excersize_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.excersize_masters_id_seq', 41, true);


--
-- Name: excersize_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.excersize_schedules_id_seq', 33, true);


--
-- Name: free_trials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.free_trials_id_seq', 64, true);


--
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.invoices_id_seq', 1, false);


--
-- Name: medicine_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.medicine_masters_id_seq', 121, true);


--
-- Name: notification_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.notification_logs_id_seq', 260, true);


--
-- Name: premise_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.premise_values_id_seq', 17, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.products_id_seq', 18, true);


--
-- Name: ration_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.ration_masters_id_seq', 89, true);


--
-- Name: ration_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.ration_schedules_id_seq', 114, true);


--
-- Name: show_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.show_events_id_seq', 44, true);


--
-- Name: show_type_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.show_type_masters_id_seq', 1, false);


--
-- Name: shows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.shows_id_seq', 209, true);


--
-- Name: state_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.state_masters_id_seq', 13, true);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 15, true);


--
-- Name: tatto_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.tatto_values_id_seq', 10, true);


--
-- Name: temp_mobile_number_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.temp_mobile_number_verifications_id_seq', 572, true);


--
-- Name: terms_and_condition_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.terms_and_condition_masters_id_seq', 1, true);


--
-- Name: treatment_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.treatment_logs_id_seq', 77, true);


--
-- Name: user_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.user_associations_id_seq', 55, true);


--
-- Name: user_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.user_masters_id_seq', 1, false);


--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.user_subscriptions_id_seq', 144, true);


--
-- Name: user_tax_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.user_tax_documents_id_seq', 61, true);


--
-- Name: user_yqcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.user_yqcas_id_seq', 66, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.users_id_seq', 398, true);


--
-- Name: vaccine_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.vaccine_logs_id_seq', 143, true);


--
-- Name: validation_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.validation_values_id_seq', 34, true);


--
-- Name: veterinarian_masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.veterinarian_masters_id_seq', 90, true);


--
-- Name: water_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.water_logs_id_seq', 238, true);


--
-- Name: weight_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.weight_logs_id_seq', 76, true);


--
-- Name: weight_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: barnbookprd
--

SELECT pg_catalog.setval('public.weight_targets_id_seq', 28, true);


--
-- Name: admin_user_masters admin_user_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_pkey PRIMARY KEY (id);


--
-- Name: admin_user_masters admin_user_masters_user_name_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key1; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key1 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key10; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key10 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key11; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key11 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key12; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key12 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key13; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key13 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key14; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key14 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key15; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key15 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key16; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key16 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key17; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key17 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key18; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key18 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key19; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key19 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key2; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key2 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key20; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key20 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key21; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key21 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key22; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key22 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key23; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key23 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key24; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key24 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key25; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key25 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key26; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key26 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key27; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key27 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key28; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key28 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key29; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key29 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key3; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key3 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key30; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key30 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key31; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key31 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key32; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key32 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key33; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key33 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key34; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key34 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key35; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key35 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key36; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key36 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key37; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key37 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key38; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key38 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key39; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key39 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key4; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key4 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key40; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key40 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key41; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key41 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key42; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key42 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key43; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key43 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key44; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key44 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key45; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key45 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key46; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key46 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key47; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key47 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key48; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key48 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key49; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key49 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key5; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key5 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key50; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key50 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key51; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key51 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key52; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key52 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key53; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key53 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key54; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key54 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key55; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key55 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key56; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key56 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key57; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key57 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key58; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key58 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key59; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key59 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key6; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key6 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key60; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key60 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key61; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key61 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key62; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key62 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key63; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key63 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key64; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key64 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key65; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key65 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key66; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key66 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key67; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key67 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key68; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key68 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key69; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key69 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key7; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key7 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key70; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key70 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key71; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key71 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key72; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key72 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key73; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key73 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key74; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key74 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key8; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key8 UNIQUE (user_name);


--
-- Name: admin_user_masters admin_user_masters_user_name_key9; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_user_name_key9 UNIQUE (user_name);


--
-- Name: animal_categories animal_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_categories
    ADD CONSTRAINT animal_categories_pkey PRIMARY KEY (id);


--
-- Name: animal_documents animal_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_documents
    ADD CONSTRAINT animal_documents_pkey PRIMARY KEY (id);


--
-- Name: animal_shows animal_shows_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_shows
    ADD CONSTRAINT animal_shows_pkey PRIMARY KEY (id);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: brand_values brand_values_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.brand_values
    ADD CONSTRAINT brand_values_animal_id_key UNIQUE (animal_id);


--
-- Name: brand_values brand_values_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.brand_values
    ADD CONSTRAINT brand_values_pkey PRIMARY KEY (id);


--
-- Name: breed_masters breed_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.breed_masters
    ADD CONSTRAINT breed_masters_pkey PRIMARY KEY (id);


--
-- Name: camps_contests camps_contests_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.camps_contests
    ADD CONSTRAINT camps_contests_pkey PRIMARY KEY (id);


--
-- Name: configurations configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_pkey PRIMARY KEY (id);


--
-- Name: country_masters country_masters_country_code_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.country_masters
    ADD CONSTRAINT country_masters_country_code_key UNIQUE (country_code);


--
-- Name: country_masters country_masters_country_name_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.country_masters
    ADD CONSTRAINT country_masters_country_name_key UNIQUE (country_name);


--
-- Name: country_masters country_masters_flag_icon_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.country_masters
    ADD CONSTRAINT country_masters_flag_icon_key UNIQUE (flag_icon);


--
-- Name: country_masters country_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.country_masters
    ADD CONSTRAINT country_masters_pkey PRIMARY KEY (id);


--
-- Name: eid_values eid_values_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.eid_values
    ADD CONSTRAINT eid_values_animal_id_key UNIQUE (animal_id);


--
-- Name: eid_values eid_values_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.eid_values
    ADD CONSTRAINT eid_values_pkey PRIMARY KEY (id);


--
-- Name: excersize_masters excersize_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_masters
    ADD CONSTRAINT excersize_masters_pkey PRIMARY KEY (id);


--
-- Name: excersize_schedules excersize_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_schedules
    ADD CONSTRAINT excersize_schedules_pkey PRIMARY KEY (id);


--
-- Name: free_trials free_trials_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.free_trials
    ADD CONSTRAINT free_trials_pkey PRIMARY KEY (id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: medicine_masters medicine_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.medicine_masters
    ADD CONSTRAINT medicine_masters_pkey PRIMARY KEY (id);


--
-- Name: notification_logs notification_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.notification_logs
    ADD CONSTRAINT notification_logs_pkey PRIMARY KEY (id);


--
-- Name: premise_values premise_values_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.premise_values
    ADD CONSTRAINT premise_values_animal_id_key UNIQUE (animal_id);


--
-- Name: premise_values premise_values_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.premise_values
    ADD CONSTRAINT premise_values_pkey PRIMARY KEY (id);


--
-- Name: products products_event_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key UNIQUE (event_id);


--
-- Name: products products_event_id_key1; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key1 UNIQUE (event_id);


--
-- Name: products products_event_id_key10; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key10 UNIQUE (event_id);


--
-- Name: products products_event_id_key11; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key11 UNIQUE (event_id);


--
-- Name: products products_event_id_key12; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key12 UNIQUE (event_id);


--
-- Name: products products_event_id_key13; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key13 UNIQUE (event_id);


--
-- Name: products products_event_id_key14; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key14 UNIQUE (event_id);


--
-- Name: products products_event_id_key15; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key15 UNIQUE (event_id);


--
-- Name: products products_event_id_key16; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key16 UNIQUE (event_id);


--
-- Name: products products_event_id_key17; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key17 UNIQUE (event_id);


--
-- Name: products products_event_id_key18; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key18 UNIQUE (event_id);


--
-- Name: products products_event_id_key19; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key19 UNIQUE (event_id);


--
-- Name: products products_event_id_key2; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key2 UNIQUE (event_id);


--
-- Name: products products_event_id_key20; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key20 UNIQUE (event_id);


--
-- Name: products products_event_id_key21; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key21 UNIQUE (event_id);


--
-- Name: products products_event_id_key22; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key22 UNIQUE (event_id);


--
-- Name: products products_event_id_key23; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key23 UNIQUE (event_id);


--
-- Name: products products_event_id_key24; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key24 UNIQUE (event_id);


--
-- Name: products products_event_id_key25; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key25 UNIQUE (event_id);


--
-- Name: products products_event_id_key26; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key26 UNIQUE (event_id);


--
-- Name: products products_event_id_key27; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key27 UNIQUE (event_id);


--
-- Name: products products_event_id_key28; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key28 UNIQUE (event_id);


--
-- Name: products products_event_id_key3; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key3 UNIQUE (event_id);


--
-- Name: products products_event_id_key4; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key4 UNIQUE (event_id);


--
-- Name: products products_event_id_key5; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key5 UNIQUE (event_id);


--
-- Name: products products_event_id_key6; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key6 UNIQUE (event_id);


--
-- Name: products products_event_id_key7; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key7 UNIQUE (event_id);


--
-- Name: products products_event_id_key8; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key8 UNIQUE (event_id);


--
-- Name: products products_event_id_key9; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_event_id_key9 UNIQUE (event_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products products_product_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key UNIQUE (product_id);


--
-- Name: products products_product_id_key1; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key1 UNIQUE (product_id);


--
-- Name: products products_product_id_key10; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key10 UNIQUE (product_id);


--
-- Name: products products_product_id_key11; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key11 UNIQUE (product_id);


--
-- Name: products products_product_id_key12; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key12 UNIQUE (product_id);


--
-- Name: products products_product_id_key13; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key13 UNIQUE (product_id);


--
-- Name: products products_product_id_key14; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key14 UNIQUE (product_id);


--
-- Name: products products_product_id_key15; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key15 UNIQUE (product_id);


--
-- Name: products products_product_id_key16; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key16 UNIQUE (product_id);


--
-- Name: products products_product_id_key17; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key17 UNIQUE (product_id);


--
-- Name: products products_product_id_key18; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key18 UNIQUE (product_id);


--
-- Name: products products_product_id_key19; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key19 UNIQUE (product_id);


--
-- Name: products products_product_id_key2; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key2 UNIQUE (product_id);


--
-- Name: products products_product_id_key20; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key20 UNIQUE (product_id);


--
-- Name: products products_product_id_key21; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key21 UNIQUE (product_id);


--
-- Name: products products_product_id_key22; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key22 UNIQUE (product_id);


--
-- Name: products products_product_id_key23; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key23 UNIQUE (product_id);


--
-- Name: products products_product_id_key24; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key24 UNIQUE (product_id);


--
-- Name: products products_product_id_key25; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key25 UNIQUE (product_id);


--
-- Name: products products_product_id_key26; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key26 UNIQUE (product_id);


--
-- Name: products products_product_id_key27; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key27 UNIQUE (product_id);


--
-- Name: products products_product_id_key3; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key3 UNIQUE (product_id);


--
-- Name: products products_product_id_key4; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key4 UNIQUE (product_id);


--
-- Name: products products_product_id_key5; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key5 UNIQUE (product_id);


--
-- Name: products products_product_id_key6; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key6 UNIQUE (product_id);


--
-- Name: products products_product_id_key7; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key7 UNIQUE (product_id);


--
-- Name: products products_product_id_key8; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key8 UNIQUE (product_id);


--
-- Name: products products_product_id_key9; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key9 UNIQUE (product_id);


--
-- Name: ration_masters ration_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_masters
    ADD CONSTRAINT ration_masters_pkey PRIMARY KEY (id);


--
-- Name: ration_schedules ration_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_schedules
    ADD CONSTRAINT ration_schedules_pkey PRIMARY KEY (id);


--
-- Name: show_events show_events_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_events
    ADD CONSTRAINT show_events_pkey PRIMARY KEY (id);


--
-- Name: show_type_masters show_type_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_type_masters
    ADD CONSTRAINT show_type_masters_pkey PRIMARY KEY (id);


--
-- Name: shows shows_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_pkey PRIMARY KEY (id);


--
-- Name: state_masters state_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.state_masters
    ADD CONSTRAINT state_masters_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: tatto_values tatto_values_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.tatto_values
    ADD CONSTRAINT tatto_values_animal_id_key UNIQUE (animal_id);


--
-- Name: tatto_values tatto_values_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.tatto_values
    ADD CONSTRAINT tatto_values_pkey PRIMARY KEY (id);


--
-- Name: temp_mobile_number_verifications temp_mobile_number_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.temp_mobile_number_verifications
    ADD CONSTRAINT temp_mobile_number_verifications_pkey PRIMARY KEY (id);


--
-- Name: terms_and_condition_masters terms_and_condition_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.terms_and_condition_masters
    ADD CONSTRAINT terms_and_condition_masters_pkey PRIMARY KEY (id);


--
-- Name: treatment_logs treatment_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.treatment_logs
    ADD CONSTRAINT treatment_logs_pkey PRIMARY KEY (id);


--
-- Name: user_associations user_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_associations
    ADD CONSTRAINT user_associations_pkey PRIMARY KEY (id);


--
-- Name: user_masters user_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_masters
    ADD CONSTRAINT user_masters_pkey PRIMARY KEY (id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key1; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key1 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key2; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key2 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key3; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key3 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key4; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key4 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key5; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key5 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key6; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key6 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_paypal_subscription_id_key7; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_paypal_subscription_id_key7 UNIQUE (paypal_subscription_id);


--
-- Name: user_subscriptions user_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: user_tax_documents user_tax_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_tax_documents
    ADD CONSTRAINT user_tax_documents_pkey PRIMARY KEY (id);


--
-- Name: user_yqcas user_yqcas_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_yqcas
    ADD CONSTRAINT user_yqcas_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vaccine_logs vaccine_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.vaccine_logs
    ADD CONSTRAINT vaccine_logs_pkey PRIMARY KEY (id);


--
-- Name: validation_values validation_values_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.validation_values
    ADD CONSTRAINT validation_values_animal_id_key UNIQUE (animal_id);


--
-- Name: validation_values validation_values_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.validation_values
    ADD CONSTRAINT validation_values_pkey PRIMARY KEY (id);


--
-- Name: veterinarian_masters veterinarian_masters_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters
    ADD CONSTRAINT veterinarian_masters_pkey PRIMARY KEY (id);


--
-- Name: water_logs water_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.water_logs
    ADD CONSTRAINT water_logs_pkey PRIMARY KEY (id);


--
-- Name: weight_logs weight_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_logs
    ADD CONSTRAINT weight_logs_pkey PRIMARY KEY (id);


--
-- Name: weight_targets weight_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_targets
    ADD CONSTRAINT weight_targets_pkey PRIMARY KEY (id);


--
-- Name: users set_default_photo_trigger; Type: TRIGGER; Schema: public; Owner: barnbookprd
--

CREATE TRIGGER set_default_photo_trigger BEFORE INSERT OR UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.set_default_photo();


--
-- Name: admin_user_masters admin_user_masters_country_calling_code_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.admin_user_masters
    ADD CONSTRAINT admin_user_masters_country_calling_code_id_fkey FOREIGN KEY (country_calling_code_id) REFERENCES public.country_masters(id) ON UPDATE CASCADE;


--
-- Name: animal_documents animal_documents_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_documents
    ADD CONSTRAINT animal_documents_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: animal_shows animal_shows_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_shows
    ADD CONSTRAINT animal_shows_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: animal_shows animal_shows_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_shows
    ADD CONSTRAINT animal_shows_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.shows(id) ON UPDATE CASCADE;


--
-- Name: animal_shows animal_shows_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animal_shows
    ADD CONSTRAINT animal_shows_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: animals animals_animal_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_animal_category_id_fkey FOREIGN KEY (animal_category_id) REFERENCES public.animal_categories(id) ON UPDATE CASCADE;


--
-- Name: animals animals_breed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.breed_masters(id) ON UPDATE CASCADE;


--
-- Name: animals animals_exhibitor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_exhibitor_id_fkey FOREIGN KEY (exhibitor_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: animals animals_show_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_show_type_id_fkey FOREIGN KEY (show_type_id) REFERENCES public.show_type_masters(id) ON UPDATE CASCADE;


--
-- Name: animals animals_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: brand_values brand_values_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.brand_values
    ADD CONSTRAINT brand_values_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: breed_masters breed_masters_animal_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.breed_masters
    ADD CONSTRAINT breed_masters_animal_category_id_fkey FOREIGN KEY (animal_category_id) REFERENCES public.animal_categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: camps_contests camps_contests_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.camps_contests
    ADD CONSTRAINT camps_contests_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: camps_contests camps_contests_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.camps_contests
    ADD CONSTRAINT camps_contests_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: eid_values eid_values_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.eid_values
    ADD CONSTRAINT eid_values_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: excersize_masters excersize_masters_animal_breed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_masters
    ADD CONSTRAINT excersize_masters_animal_breed_id_fkey FOREIGN KEY (animal_breed_id) REFERENCES public.breed_masters(id) ON UPDATE CASCADE;


--
-- Name: excersize_masters excersize_masters_animal_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_masters
    ADD CONSTRAINT excersize_masters_animal_category_id_fkey FOREIGN KEY (animal_category_id) REFERENCES public.animal_categories(id) ON UPDATE CASCADE;


--
-- Name: excersize_masters excersize_masters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_masters
    ADD CONSTRAINT excersize_masters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: excersize_schedules excersize_schedules_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_schedules
    ADD CONSTRAINT excersize_schedules_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: excersize_schedules excersize_schedules_excersize_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.excersize_schedules
    ADD CONSTRAINT excersize_schedules_excersize_id_fkey FOREIGN KEY (excersize_id) REFERENCES public.excersize_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: free_trials free_trials_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.free_trials
    ADD CONSTRAINT free_trials_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: invoices invoices_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_subscription_id_fkey FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON UPDATE CASCADE;


--
-- Name: invoices invoices_subscriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_subscriptions_id_fkey FOREIGN KEY (subscriptions_id) REFERENCES public.subscriptions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: invoices invoices_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: medicine_masters medicine_masters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.medicine_masters
    ADD CONSTRAINT medicine_masters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: notification_logs notification_logs_barn_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.notification_logs
    ADD CONSTRAINT notification_logs_barn_manager_id_fkey FOREIGN KEY (barn_manager_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: notification_logs notification_logs_exhibitor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.notification_logs
    ADD CONSTRAINT notification_logs_exhibitor_id_fkey FOREIGN KEY (exhibitor_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: premise_values premise_values_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.premise_values
    ADD CONSTRAINT premise_values_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ration_masters ration_masters_animal_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_masters
    ADD CONSTRAINT ration_masters_animal_category_id_fkey FOREIGN KEY (animal_category_id) REFERENCES public.animal_categories(id) ON UPDATE CASCADE;


--
-- Name: ration_masters ration_masters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_masters
    ADD CONSTRAINT ration_masters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: ration_schedules ration_schedules_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_schedules
    ADD CONSTRAINT ration_schedules_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ration_schedules ration_schedules_ration_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.ration_schedules
    ADD CONSTRAINT ration_schedules_ration_id_fkey FOREIGN KEY (ration_id) REFERENCES public.ration_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: show_events show_events_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_events
    ADD CONSTRAINT show_events_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: show_events show_events_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.show_events
    ADD CONSTRAINT show_events_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.shows(id) ON UPDATE CASCADE;


--
-- Name: shows shows_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: shows shows_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: state_masters state_masters_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.state_masters
    ADD CONSTRAINT state_masters_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tatto_values tatto_values_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.tatto_values
    ADD CONSTRAINT tatto_values_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: temp_mobile_number_verifications temp_mobile_number_verifications_country_calling_code_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.temp_mobile_number_verifications
    ADD CONSTRAINT temp_mobile_number_verifications_country_calling_code_id_fkey FOREIGN KEY (country_calling_code_id) REFERENCES public.country_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: treatment_logs treatment_logs_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.treatment_logs
    ADD CONSTRAINT treatment_logs_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: treatment_logs treatment_logs_medicine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.treatment_logs
    ADD CONSTRAINT treatment_logs_medicine_id_fkey FOREIGN KEY (medicine_id) REFERENCES public.medicine_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_associations user_associations_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_associations
    ADD CONSTRAINT user_associations_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_subscriptions user_subscriptions_subscription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_subscription_id_fkey FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON UPDATE CASCADE;


--
-- Name: user_subscriptions user_subscriptions_subscriptions_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_subscriptions_id_fkey FOREIGN KEY (subscriptions_id) REFERENCES public.subscriptions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: user_subscriptions user_subscriptions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_tax_documents user_tax_documents_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_tax_documents
    ADD CONSTRAINT user_tax_documents_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_yqcas user_yqcas_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.user_yqcas
    ADD CONSTRAINT user_yqcas_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users users_country_calling_code_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_country_calling_code_id_fkey FOREIGN KEY (country_calling_code_id) REFERENCES public.country_masters(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: users users_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: vaccine_logs vaccine_logs_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.vaccine_logs
    ADD CONSTRAINT vaccine_logs_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: vaccine_logs vaccine_logs_medicine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.vaccine_logs
    ADD CONSTRAINT vaccine_logs_medicine_id_fkey FOREIGN KEY (medicine_id) REFERENCES public.medicine_masters(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: vaccine_logs vaccine_logs_veterinarian_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.vaccine_logs
    ADD CONSTRAINT vaccine_logs_veterinarian_id_fkey FOREIGN KEY (veterinarian_id) REFERENCES public.veterinarian_masters(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: validation_values validation_values_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.validation_values
    ADD CONSTRAINT validation_values_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: veterinarian_masters veterinarian_masters_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters
    ADD CONSTRAINT veterinarian_masters_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE;


--
-- Name: veterinarian_masters veterinarian_masters_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters
    ADD CONSTRAINT veterinarian_masters_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country_masters(id) ON UPDATE CASCADE;


--
-- Name: veterinarian_masters veterinarian_masters_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters
    ADD CONSTRAINT veterinarian_masters_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.state_masters(id) ON UPDATE CASCADE;


--
-- Name: veterinarian_masters veterinarian_masters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.veterinarian_masters
    ADD CONSTRAINT veterinarian_masters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: water_logs water_logs_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.water_logs
    ADD CONSTRAINT water_logs_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: weight_logs weight_logs_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_logs
    ADD CONSTRAINT weight_logs_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: weight_targets weight_targets_animal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: barnbookprd
--

ALTER TABLE ONLY public.weight_targets
    ADD CONSTRAINT weight_targets_animal_id_fkey FOREIGN KEY (animal_id) REFERENCES public.animals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

