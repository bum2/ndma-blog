--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Debian 11.7-0+deb10u1)
-- Dumped by pg_dump version 11.7 (Debian 11.7-0+deb10u1)

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO bumfresh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bumfresh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO bumfresh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bumfresh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO bumfresh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bumfresh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    first_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    last_name text
);


ALTER TABLE public.auth_user OWNER TO bumfresh;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO bumfresh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bumfresh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bumfresh;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bumfresh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bumfresh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_blogcategory (
    id bigint NOT NULL,
    name text,
    slug text
);


ALTER TABLE public.blog_blogcategory OWNER TO bumfresh;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogcategory_id_seq OWNER TO bumfresh;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.blog_blogcategory_id_seq OWNED BY public.blog_blogcategory.id;


--
-- Name: blog_blogpage; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_blogpage (
    page_ptr_id bigint NOT NULL,
    description text
);


ALTER TABLE public.blog_blogpage OWNER TO bumfresh;

--
-- Name: blog_blogpagetag; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_blogpagetag (
    id bigint NOT NULL,
    content_object_id bigint,
    tag_id bigint
);


ALTER TABLE public.blog_blogpagetag OWNER TO bumfresh;

--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.blog_blogpagetag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpagetag_id_seq OWNER TO bumfresh;

--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.blog_blogpagetag_id_seq OWNED BY public.blog_blogpagetag.id;


--
-- Name: blog_formfield; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_formfield (
    id bigint NOT NULL,
    sort_order bigint,
    label text,
    field_type text,
    required boolean,
    choices text,
    default_value text,
    help_text text,
    page_id bigint
);


ALTER TABLE public.blog_formfield OWNER TO bumfresh;

--
-- Name: blog_formfield_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.blog_formfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_formfield_id_seq OWNER TO bumfresh;

--
-- Name: blog_formfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.blog_formfield_id_seq OWNED BY public.blog_formfield.id;


--
-- Name: blog_formpage; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_formpage (
    page_ptr_id bigint NOT NULL,
    to_address text,
    from_address text,
    subject text,
    thank_you_text text
);


ALTER TABLE public.blog_formpage OWNER TO bumfresh;

--
-- Name: blog_landingpage; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_landingpage (
    page_ptr_id bigint NOT NULL,
    body text
);


ALTER TABLE public.blog_landingpage OWNER TO bumfresh;

--
-- Name: blog_postpage; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_postpage (
    page_ptr_id bigint NOT NULL,
    body text,
    date timestamp with time zone,
    excerpt text,
    header_image_id bigint
);


ALTER TABLE public.blog_postpage OWNER TO bumfresh;

--
-- Name: blog_postpage_categories; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.blog_postpage_categories (
    id bigint NOT NULL,
    postpage_id bigint,
    blogcategory_id bigint
);


ALTER TABLE public.blog_postpage_categories OWNER TO bumfresh;

--
-- Name: blog_postpage_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.blog_postpage_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_postpage_categories_id_seq OWNER TO bumfresh;

--
-- Name: blog_postpage_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.blog_postpage_categories_id_seq OWNED BY public.blog_postpage_categories.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    object_id text,
    object_repr text,
    action_flag smallint,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_time timestamp with time zone
);


ALTER TABLE public.django_admin_log OWNER TO bumfresh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bumfresh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO bumfresh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bumfresh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO bumfresh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bumfresh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO bumfresh;

--
-- Name: home_copywritingsettings; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.home_copywritingsettings (
    id bigint NOT NULL,
    hero_title text,
    hero_lead text,
    hero_cta_text text,
    hero_cta_url text,
    site_id bigint,
    testimonial text
);


ALTER TABLE public.home_copywritingsettings OWNER TO bumfresh;

--
-- Name: home_copywritingsettings_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.home_copywritingsettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_copywritingsettings_id_seq OWNER TO bumfresh;

--
-- Name: home_copywritingsettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.home_copywritingsettings_id_seq OWNED BY public.home_copywritingsettings.id;


--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.home_homepage (
    page_ptr_id bigint NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO bumfresh;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.taggit_tag (
    id bigint NOT NULL,
    name text,
    slug text
);


ALTER TABLE public.taggit_tag OWNER TO bumfresh;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO bumfresh;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.taggit_taggeditem (
    id bigint NOT NULL,
    object_id bigint,
    content_type_id bigint,
    tag_id bigint
);


ALTER TABLE public.taggit_taggeditem OWNER TO bumfresh;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO bumfresh;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_collection (
    id bigint NOT NULL,
    path text,
    depth bigint,
    numchild bigint,
    name text
);


ALTER TABLE public.wagtailcore_collection OWNER TO bumfresh;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id bigint NOT NULL,
    restriction_type text,
    password text,
    collection_id bigint
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO bumfresh;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id bigint NOT NULL,
    collectionviewrestriction_id bigint,
    group_id bigint
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO bumfresh;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id bigint NOT NULL,
    collection_id bigint,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO bumfresh;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id bigint NOT NULL,
    group_id bigint,
    page_id bigint,
    permission_type text
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO bumfresh;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_page (
    id bigint NOT NULL,
    path text,
    depth bigint,
    numchild bigint,
    title text,
    slug text,
    live boolean,
    has_unpublished_changes boolean,
    url_path text,
    seo_title text,
    show_in_menus boolean,
    search_description text,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean,
    content_type_id bigint,
    owner_id bigint,
    locked boolean,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id bigint,
    last_published_at timestamp with time zone,
    draft_title text
);


ALTER TABLE public.wagtailcore_page OWNER TO bumfresh;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_pagerevision (
    id bigint NOT NULL,
    submitted_for_moderation boolean,
    content_json text,
    approved_go_live_at timestamp with time zone,
    page_id bigint,
    user_id bigint,
    created_at timestamp with time zone
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO bumfresh;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id bigint NOT NULL,
    page_id bigint,
    restriction_type text,
    password text
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO bumfresh;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id bigint NOT NULL,
    pageviewrestriction_id bigint,
    group_id bigint
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO bumfresh;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailcore_site (
    id bigint NOT NULL,
    hostname text,
    port bigint,
    is_default_site boolean,
    root_page_id bigint,
    site_name text
);


ALTER TABLE public.wagtailcore_site OWNER TO bumfresh;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO bumfresh;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtaildocs_document (
    id bigint NOT NULL,
    title text,
    file text,
    created_at timestamp with time zone,
    uploaded_by_user_id bigint,
    collection_id bigint,
    file_size bigint
);


ALTER TABLE public.wagtaildocs_document OWNER TO bumfresh;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO bumfresh;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailembeds_embed (
    id bigint NOT NULL,
    url text,
    max_width smallint,
    type text,
    html text,
    title text,
    author_name text,
    provider_name text,
    thumbnail_url text,
    width bigint,
    height bigint,
    last_updated timestamp with time zone
);


ALTER TABLE public.wagtailembeds_embed OWNER TO bumfresh;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO bumfresh;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailforms_formsubmission (
    id bigint NOT NULL,
    form_data text,
    page_id bigint,
    submit_time timestamp with time zone
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO bumfresh;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO bumfresh;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailimages_image (
    id bigint NOT NULL,
    title text,
    file text,
    width bigint,
    height bigint,
    created_at timestamp with time zone,
    focal_point_x bigint,
    focal_point_y bigint,
    focal_point_width bigint,
    focal_point_height bigint,
    uploaded_by_user_id bigint,
    file_size bigint,
    collection_id bigint,
    file_hash text
);


ALTER TABLE public.wagtailimages_image OWNER TO bumfresh;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO bumfresh;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailimages_rendition (
    id bigint NOT NULL,
    file text,
    width bigint,
    height bigint,
    focal_point_key text,
    image_id bigint,
    filter_spec text
);


ALTER TABLE public.wagtailimages_rendition OWNER TO bumfresh;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO bumfresh;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailmenus_flatmenu; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailmenus_flatmenu (
    id bigint NOT NULL,
    title text,
    handle text,
    heading text,
    max_levels smallint,
    use_specific smallint,
    site_id bigint
);


ALTER TABLE public.wagtailmenus_flatmenu OWNER TO bumfresh;

--
-- Name: wagtailmenus_flatmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailmenus_flatmenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailmenus_flatmenu_id_seq OWNER TO bumfresh;

--
-- Name: wagtailmenus_flatmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailmenus_flatmenu_id_seq OWNED BY public.wagtailmenus_flatmenu.id;


--
-- Name: wagtailmenus_flatmenuitem; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailmenus_flatmenuitem (
    id bigint NOT NULL,
    sort_order bigint,
    link_url text,
    link_page_id bigint,
    menu_id bigint,
    url_append text,
    allow_subnav boolean,
    handle text,
    link_text text
);


ALTER TABLE public.wagtailmenus_flatmenuitem OWNER TO bumfresh;

--
-- Name: wagtailmenus_flatmenuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailmenus_flatmenuitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailmenus_flatmenuitem_id_seq OWNER TO bumfresh;

--
-- Name: wagtailmenus_flatmenuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailmenus_flatmenuitem_id_seq OWNED BY public.wagtailmenus_flatmenuitem.id;


--
-- Name: wagtailmenus_mainmenu; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailmenus_mainmenu (
    id bigint NOT NULL,
    max_levels smallint,
    use_specific smallint,
    site_id bigint
);


ALTER TABLE public.wagtailmenus_mainmenu OWNER TO bumfresh;

--
-- Name: wagtailmenus_mainmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailmenus_mainmenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailmenus_mainmenu_id_seq OWNER TO bumfresh;

--
-- Name: wagtailmenus_mainmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailmenus_mainmenu_id_seq OWNED BY public.wagtailmenus_mainmenu.id;


--
-- Name: wagtailmenus_mainmenuitem; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailmenus_mainmenuitem (
    id bigint NOT NULL,
    sort_order bigint,
    link_url text,
    link_page_id bigint,
    menu_id bigint,
    allow_subnav boolean,
    url_append text,
    handle text,
    link_text text
);


ALTER TABLE public.wagtailmenus_mainmenuitem OWNER TO bumfresh;

--
-- Name: wagtailmenus_mainmenuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailmenus_mainmenuitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailmenus_mainmenuitem_id_seq OWNER TO bumfresh;

--
-- Name: wagtailmenus_mainmenuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailmenus_mainmenuitem_id_seq OWNED BY public.wagtailmenus_mainmenuitem.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailredirects_redirect (
    id bigint NOT NULL,
    old_path text,
    is_permanent boolean,
    redirect_page_id bigint,
    site_id bigint,
    redirect_link text
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO bumfresh;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO bumfresh;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailsearch_editorspick (
    id bigint NOT NULL,
    sort_order bigint,
    description text,
    query_id bigint,
    page_id bigint
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO bumfresh;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO bumfresh;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailsearch_query (
    id bigint NOT NULL,
    query_string text
);


ALTER TABLE public.wagtailsearch_query OWNER TO bumfresh;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO bumfresh;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id bigint NOT NULL,
    date date,
    hits bigint,
    query_id bigint
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO bumfresh;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO bumfresh;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: bumfresh
--

CREATE TABLE public.wagtailusers_userprofile (
    id bigint NOT NULL,
    submitted_notifications boolean,
    approved_notifications boolean,
    rejected_notifications boolean,
    user_id bigint,
    preferred_language text,
    current_time_zone text,
    avatar text
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO bumfresh;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: bumfresh
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO bumfresh;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bumfresh
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_blogcategory id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('public.blog_blogcategory_id_seq'::regclass);


--
-- Name: blog_blogpagetag id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpagetag ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpagetag_id_seq'::regclass);


--
-- Name: blog_formfield id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_formfield ALTER COLUMN id SET DEFAULT nextval('public.blog_formfield_id_seq'::regclass);


--
-- Name: blog_postpage_categories id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_postpage_categories_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_copywritingsettings id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.home_copywritingsettings ALTER COLUMN id SET DEFAULT nextval('public.home_copywritingsettings_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailmenus_flatmenu id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenu ALTER COLUMN id SET DEFAULT nextval('public.wagtailmenus_flatmenu_id_seq'::regclass);


--
-- Name: wagtailmenus_flatmenuitem id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenuitem ALTER COLUMN id SET DEFAULT nextval('public.wagtailmenus_flatmenuitem_id_seq'::regclass);


--
-- Name: wagtailmenus_mainmenu id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenu ALTER COLUMN id SET DEFAULT nextval('public.wagtailmenus_mainmenu_id_seq'::regclass);


--
-- Name: wagtailmenus_mainmenuitem id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenuitem ALTER COLUMN id SET DEFAULT nextval('public.wagtailmenus_mainmenuitem_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	2	1
2	1	1
3	2	2
4	2	3
5	2	4
6	1	2
7	1	3
8	1	4
9	2	5
10	2	6
11	2	7
12	1	5
13	1	6
14	1	7
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	2	access_admin	Can access Wagtail admin
2	3	add_document	Can add document
3	3	change_document	Can change document
4	3	delete_document	Can delete document
5	4	add_image	Can add image
6	4	change_image	Can change image
7	4	delete_image	Can delete image
8	5	add_formsubmission	Can add form submission
9	5	change_formsubmission	Can change form submission
10	5	delete_formsubmission	Can delete form submission
11	6	add_redirect	Can add redirect
12	6	change_redirect	Can change redirect
13	6	delete_redirect	Can delete redirect
14	7	add_embed	Can add embed
15	7	change_embed	Can change embed
16	7	delete_embed	Can delete embed
17	8	add_userprofile	Can add user profile
18	8	change_userprofile	Can change user profile
19	8	delete_userprofile	Can delete user profile
20	9	add_rendition	Can add rendition
21	9	change_rendition	Can change rendition
22	9	delete_rendition	Can delete rendition
23	10	add_querydailyhits	Can add Query Daily Hits
24	10	change_querydailyhits	Can change Query Daily Hits
25	10	delete_querydailyhits	Can delete Query Daily Hits
26	11	add_query	Can add query
27	11	change_query	Can change query
28	11	delete_query	Can delete query
29	12	add_pageviewrestriction	Can add page view restriction
30	12	change_pageviewrestriction	Can change page view restriction
31	12	delete_pageviewrestriction	Can delete page view restriction
32	13	add_collectionviewrestriction	Can add collection view restriction
33	13	change_collectionviewrestriction	Can change collection view restriction
34	13	delete_collectionviewrestriction	Can delete collection view restriction
35	14	add_groupcollectionpermission	Can add group collection permission
36	14	change_groupcollectionpermission	Can change group collection permission
37	14	delete_groupcollectionpermission	Can delete group collection permission
38	15	add_pagerevision	Can add page revision
39	15	change_pagerevision	Can change page revision
40	15	delete_pagerevision	Can delete page revision
41	16	add_site	Can add site
42	16	change_site	Can change site
43	16	delete_site	Can delete site
44	1	add_page	Can add page
45	1	change_page	Can change page
46	1	delete_page	Can delete page
47	17	add_collection	Can add collection
48	17	change_collection	Can change collection
49	17	delete_collection	Can delete collection
50	18	add_grouppagepermission	Can add group page permission
51	18	change_grouppagepermission	Can change group page permission
52	18	delete_grouppagepermission	Can delete group page permission
53	19	add_taggeditem	Can add Tagged Item
54	19	change_taggeditem	Can change Tagged Item
55	19	delete_taggeditem	Can delete Tagged Item
56	20	add_tag	Can add Tag
57	20	change_tag	Can change Tag
58	20	delete_tag	Can delete Tag
59	21	add_logentry	Can add log entry
60	21	change_logentry	Can change log entry
61	21	delete_logentry	Can delete log entry
62	22	add_user	Can add user
63	22	change_user	Can change user
64	22	delete_user	Can delete user
65	23	add_group	Can add group
66	23	change_group	Can change group
67	23	delete_group	Can delete group
68	24	add_permission	Can add permission
69	24	change_permission	Can change permission
70	24	delete_permission	Can delete permission
71	25	add_contenttype	Can add content type
72	25	change_contenttype	Can change content type
73	25	delete_contenttype	Can delete content type
74	26	add_session	Can add session
75	26	change_session	Can change session
76	26	delete_session	Can delete session
77	27	add_postpage	Can add post page
78	27	change_postpage	Can change post page
79	27	delete_postpage	Can delete post page
80	28	add_blogpagetag	Can add blog page tag
81	28	change_blogpagetag	Can change blog page tag
82	28	delete_blogpagetag	Can delete blog page tag
83	29	add_landingpage	Can add landing page
84	29	change_landingpage	Can change landing page
85	29	delete_landingpage	Can delete landing page
86	30	add_blogcategory	Can add Category
87	30	change_blogcategory	Can change Category
88	30	delete_blogcategory	Can delete Category
89	31	add_blogpage	Can add blog page
90	31	change_blogpage	Can change blog page
91	31	delete_blogpage	Can delete blog page
92	33	add_homepage	Can add home page
93	33	change_homepage	Can change home page
94	33	delete_homepage	Can delete home page
95	34	add_mainmenu	Can add main menu
96	34	change_mainmenu	Can change main menu
97	34	delete_mainmenu	Can delete main menu
98	35	add_flatmenu	Can add flat menu
99	35	change_flatmenu	Can change flat menu
100	35	delete_flatmenu	Can delete flat menu
101	36	add_mainmenuitem	Can add menu item
102	36	change_mainmenuitem	Can change menu item
103	36	delete_mainmenuitem	Can delete menu item
104	37	add_flatmenuitem	Can add menu item
105	37	change_flatmenuitem	Can change menu item
106	37	delete_flatmenuitem	Can delete menu item
107	38	add_formfield	Can add form field
108	38	change_formfield	Can change form field
109	38	delete_formfield	Can delete form field
110	39	add_formpage	Can add form page
111	39	change_formpage	Can change form page
112	39	delete_formpage	Can delete form page
113	40	add_copywritingsettings	Can add copy writing settings
114	40	change_copywritingsettings	Can change copy writing settings
115	40	delete_copywritingsettings	Can delete copy writing settings
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) FROM stdin;
1	pbkdf2_sha256$100000$TbkjyF29DdLv$bQ7T/TGM5ZS1Zq0C2D7Lr+lYDhxUZ/abcYIgTclI7YI=	2020-07-10 02:27:42.69362+00	t	admin			t	t	2017-06-22 06:37:38.16+00	
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_blogcategory (id, name, slug) FROM stdin;
2	Covid-19	covid19
3	Household	household
4	Hazards	hazards
\.


--
-- Data for Name: blog_blogpage; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_blogpage (page_ptr_id, description) FROM stdin;
4	NDMA Blog Demo
\.


--
-- Data for Name: blog_blogpagetag; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_blogpagetag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Data for Name: blog_formfield; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_formfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
1	0	Name	singleline	t				12
2	1	Email	email	t				12
3	2	Message	multiline	t				12
\.


--
-- Data for Name: blog_formpage; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_formpage (page_ptr_id, to_address, from_address, subject, thank_you_text) FROM stdin;
12	admin@michaelyin.info	noreply@michaelyin.info	Contact Message Received	<p>Thanks for your message, we will contact you ASAP.</p>
\.


--
-- Data for Name: blog_landingpage; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_landingpage (page_ptr_id, body) FROM stdin;
8	[{"value": "<p><b>This page is built using Wagtail Streamfield, please check </b><a href=\\"https://blog.michaelyin.info/2017/12/25/how-use-streamfield-wagtail/\\"><b>How to use StreamField in Wagtail</b></a><b> for more detail if you have no idea what is Streamfield of Wagtail.</b></p>", "type": "paragraph", "id": "87b8fa46-9123-46e1-ba59-f6c72ef29040"}, {"value": {"right_column": [{"value": "Right Header", "type": "heading", "id": "3616b65b-0b52-43df-a15d-ac26eae50265"}, {"value": 6, "type": "image", "id": "553afb23-40d1-483a-9528-838c41f8bd67"}, {"value": "<p>If you want to know more about this book, please check <a href=\\"https://leanpub.com/buildblogwithwagtailcms\\">Build Blog With Wagtail CMS</a></p>", "type": "paragraph", "id": "75f47133-4c64-4f34-a5d6-350f76aae427"}], "left_column": [{"value": "Left Header", "type": "heading", "id": "7e07e6a2-9fec-428a-901a-fd206684a139"}, {"value": "<p>My name is Michael Yin, I am a full stack developer from China. Right now I am living in WuHan, China with my wife. I am working with Python and Javascript to create web app and web scraping program.</p><p>I created this blog to share some thoughts and experience about programming, most of them are related to Python such as Django and Scrapy, which I love most.<br/></p>", "type": "paragraph", "id": "a1d889c9-d0e0-47b8-b38f-e6f0d82cd0cc"}]}, "type": "two_columns", "id": "74d4bced-fff9-4f8c-ab7e-67275de23e8c"}, {"value": "Table of Contents:", "type": "heading", "id": "358e4600-4a72-4541-a7f6-c74b5cebd4d6"}, {"value": "<ul><li><a href=\\"https://blog.michaelyin.info/2017/06/19/python-cms-framework-review-wagtail-vs-django-cms/\\">Python CMS Framework Review: wagtail vs django-cms</a> You might want to know the difference between Wagtail and Django-CMS, the two most popular CMS framework in Python world. That is why I wrote this blog post to help people like me to make a good choice.</li><li><a href=\\"https://blog.michaelyin.info/2017/06/23/wagtail-tutorials-building-blog-part-1/\\">Wagtail Tutorial #1: Create Wagtail Project</a> Show you how to create a wagtail project and help you understand its main components.</li><li><a href=\\"https://blog.michaelyin.info/2017/06/25/wagtail-tutorials-building-blog-part-2/\\">Wagtail Tutorial #2: Create Data Model</a> Teach you how to create the data model, clarify the workflow, and create template to render content.</li><li><a href=\\"https://blog.michaelyin.info/2017/06/26/wagtail-tutorials-building-blog-part-3/\\">Wagtail Tutorial #3: Category And Tag Support</a> Help you add category and tag support to post page as standard CMS does.</li><li><a href=\\"https://blog.michaelyin.info/2017/06/30/wagtail-tutorials-routable-page/\\">Wagtail Tutorial #4: Routable Page</a> Show you how to use RoutablePageMixin to make blog app routable, so it can handle sub-URLs like category and tag links.</li><li><a href=\\"https://blog.michaelyin.info/2017/07/04/wagtail-tutorials-5-customize-blog-post-url/\\">Wagtail Tutorial #5: Customize Blog Post URL</a> Teach you how to customize the permanent link of post page, and how to reverse the blog post link in the template..</li><li><a href=\\"https://blog.michaelyin.info/2017/07/06/wagtail-tutorials-6-import-theme-wagtail-blog/\\">Wagtail Tutorial #6: Import Theme Into Wagtail Blog</a> Explain how to quickly import an existing theme into wagtail blog to make our blog look more decent.</li><li><a href=\\"https://blog.michaelyin.info/2017/07/11/wagtail-tutorials-7-add-search-function-wagtail-blog/\\">Wagtail Tutorial #7: Add Search Function</a> Teach you how to add search function in wagtail blog so the user can filter the posts through the keywords.</li><li><a href=\\"https://blog.michaelyin.info/2017/07/27/wagtail-tutorials-8-add-markdown-support/\\">Wagtail Tutorial #8: Add Markdown Support</a> I will show you how to add Markdown support to our wagtail blog</li><li><a href=\\"https://blog.michaelyin.info/2017/08/02/wagtail-tutorials-9-add-latex-support-code-highlight-wagtail/\\">Wagtail Tutorial #9: Add LaTeX Support &amp; Code Highlight In Wagtail</a> In this tutorial, I will talk about how to add LaTeX support and code highlight support in our wagtail blog application.</li><li><a href=\\"https://blog.michaelyin.info/2017/10/23/wagtail-tutorials-10-add-comment-support-wagtail-blog/\\">Wagtail Tutorial #10: Add Comment Support In Wagtail Blog</a> In this chapter, I will talk about how to add comment support to our Wagtail Blog.</li></ul>", "type": "paragraph", "id": "1efb5930-49c0-4428-ad8c-d91e283fa1d9"}]
\.


--
-- Data for Name: blog_postpage; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_postpage (page_ptr_id, body, date, excerpt, header_image_id) FROM stdin;
9	State House, Banjul, 7th July 2020 – In exercise of the powers conferred on him by section 34(6) of the 1997 Constitution, His Excellency, Adama Barrow, president of the Republic of The Gambia has declared a State of Public Emergency in the whole country. The declaration shall last for a period of seven days, pursuant to section 34(2) with effect from 8th July 2020. \r\n\r\nThe public is reminded that the COVID -19 Emergency Regulations issued under the Emergency Powers Act shall continue to apply during the period of the State of Public Emergency.  \r\n\r\nFurthermore, the public is advised to take all precautionary measures to protect themselves and curb the spread of COVID-19, while the experts continue to monitor and assess the situation.	2018-01-30 18:00:00+00		19
10	The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country’s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.	2018-01-30 07:09:00+00	Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.	22
11	One of the country’s giant GSM operators, Africell has donated D12,000,000 to Gambia’s effort to contain and defeat the covid-19 pandemic.\r\n\r\nThe funds will be distributed over the next three months directly via Afrimoney to front-line health workers, whose courage and hard work in these difficult circumstances is helping to keep Gambians healthy and safe, according to news release from the GSM operator.\r\n\r\n“The payments will supplement the normal wages of these front-line workers, giving them the financial security needed to support themselves and their families at a time of significantly increased risk.”\r\n\r\n“All eligible Doctors will receive D2,000 per month while nurses and all other front-line staff will receive D1,000 per month. The scheme is currently scheduled to last for three months.”\r\n\r\nCommenting on the donation, CEO of Africell Gambia, Alieu Badara Mbye said: “For Africell, contributing to the campaign against Covid-19 is a duty, not an option. We are stronger together. Africell is committed to standing shoulder-to-shoulder with the government and the people of Gambia as we take on this challenge. Our donation to Gambia’s heroic front-line health workers is a token of our admiration and gratitude to front-line health workers for the risks they take and the hard work they put into keeping the rest of us safe.”\r\n\r\n“Together we can Break the Chain & Stop the Spread of covid-19. Stay Safe!”	2018-01-30 08:08:00+00	Check this page for detail about Latex and Code highlight.	21
\.


--
-- Data for Name: blog_postpage_categories; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.blog_postpage_categories (id, postpage_id, blogcategory_id) FROM stdin;
1	10	2
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
1	1	CopyWritingSettings object (1)	2	[{"changed": {"fields": ["hero_title", "hero_lead", "hero_cta_text", "testimonial"]}}]	40	1	2020-07-10 03:31:54.514983+00
2	1	CopyWritingSettings object (1)	2	[{"changed": {"fields": ["hero_lead", "hero_cta_text", "hero_cta_url", "testimonial"]}}]	40	1	2020-07-10 03:34:25.689727+00
3	1	CopyWritingSettings object (1)	2	[{"changed": {"fields": ["testimonial"]}}]	40	1	2020-07-10 03:35:56.747359+00
4	1	CopyWritingSettings object (1)	2	[{"changed": {"fields": ["testimonial"]}}]	40	1	2020-07-10 03:40:53.906082+00
5	1	CopyWritingSettings object (1)	2	[{"changed": {"fields": ["hero_title", "testimonial"]}}]	40	1	2020-07-10 04:05:59.862388+00
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailadmin	admin
3	wagtaildocs	document
4	wagtailimages	image
5	wagtailforms	formsubmission
6	wagtailredirects	redirect
7	wagtailembeds	embed
8	wagtailusers	userprofile
9	wagtailimages	rendition
10	wagtailsearch	querydailyhits
11	wagtailsearch	query
12	wagtailcore	pageviewrestriction
13	wagtailcore	collectionviewrestriction
14	wagtailcore	groupcollectionpermission
15	wagtailcore	pagerevision
16	wagtailcore	site
17	wagtailcore	collection
18	wagtailcore	grouppagepermission
19	taggit	taggeditem
20	taggit	tag
21	admin	logentry
22	auth	user
23	auth	group
24	auth	permission
25	contenttypes	contenttype
26	sessions	session
27	blog	postpage
28	blog	blogpagetag
29	blog	landingpage
30	blog	blogcategory
31	blog	blogpage
32	blog	tag
33	home	homepage
34	wagtailmenus	mainmenu
35	wagtailmenus	flatmenu
36	wagtailmenus	mainmenuitem
37	wagtailmenus	flatmenuitem
38	blog	formfield
39	blog	formpage
40	home	copywritingsettings
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-03-18 08:56:41.364097+00
2	auth	0001_initial	2018-03-18 08:56:41.388788+00
3	admin	0001_initial	2018-03-18 08:56:41.403021+00
4	admin	0002_logentry_remove_auto_add	2018-03-18 08:56:41.416769+00
5	contenttypes	0002_remove_content_type_name	2018-03-18 08:56:41.444615+00
6	auth	0002_alter_permission_name_max_length	2018-03-18 08:56:41.455037+00
7	auth	0003_alter_user_email_max_length	2018-03-18 08:56:41.468564+00
8	auth	0004_alter_user_username_opts	2018-03-18 08:56:41.482745+00
9	auth	0005_alter_user_last_login_null	2018-03-18 08:56:41.495384+00
10	auth	0006_require_contenttypes_0002	2018-03-18 08:56:41.497578+00
11	auth	0007_alter_validators_add_error_messages	2018-03-18 08:56:41.514377+00
12	auth	0008_alter_user_username_max_length	2018-03-18 08:56:41.561453+00
13	sessions	0001_initial	2018-03-18 09:05:07.47922+00
14	taggit	0001_initial	2018-03-18 09:05:07.494874+00
15	taggit	0002_auto_20150616_2121	2018-03-18 09:05:07.503478+00
16	wagtailcore	0001_initial	2018-03-18 09:05:07.757726+00
17	wagtailcore	0002_initial_data	2018-03-18 09:05:07.759255+00
18	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2018-03-18 09:05:07.760619+00
19	wagtailcore	0004_page_locked	2018-03-18 09:05:07.762012+00
20	wagtailcore	0005_add_page_lock_permission_to_moderators	2018-03-18 09:05:07.763373+00
21	wagtailcore	0006_add_lock_page_permission	2018-03-18 09:05:07.764916+00
22	wagtailcore	0007_page_latest_revision_created_at	2018-03-18 09:05:07.766166+00
23	wagtailcore	0008_populate_latest_revision_created_at	2018-03-18 09:05:07.76758+00
24	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2018-03-18 09:05:07.768976+00
25	wagtailcore	0010_change_page_owner_to_null_on_delete	2018-03-18 09:05:07.770334+00
26	wagtailcore	0011_page_first_published_at	2018-03-18 09:05:07.772082+00
27	wagtailcore	0012_extend_page_slug_field	2018-03-18 09:05:07.774166+00
28	wagtailcore	0013_update_golive_expire_help_text	2018-03-18 09:05:07.775759+00
29	wagtailcore	0014_add_verbose_name	2018-03-18 09:05:07.777049+00
30	wagtailcore	0015_add_more_verbose_names	2018-03-18 09:05:07.778315+00
31	wagtailcore	0016_change_page_url_path_to_text_field	2018-03-18 09:05:07.779826+00
32	wagtailcore	0017_change_edit_page_permission_description	2018-03-18 09:05:07.798299+00
33	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2018-03-18 09:05:07.838835+00
34	wagtailcore	0019_verbose_names_cleanup	2018-03-18 09:05:07.892237+00
35	wagtailcore	0020_add_index_on_page_first_published_at	2018-03-18 09:05:07.913465+00
36	wagtailcore	0021_capitalizeverbose	2018-03-18 09:05:08.590508+00
37	wagtailcore	0022_add_site_name	2018-03-18 09:05:08.6063+00
38	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2018-03-18 09:05:08.626519+00
39	wagtailcore	0024_collection	2018-03-18 09:05:08.631628+00
40	wagtailcore	0025_collection_initial_data	2018-03-18 09:05:08.648677+00
41	wagtailcore	0026_group_collection_permission	2018-03-18 09:05:08.674844+00
42	wagtailadmin	0001_create_admin_access_permissions	2018-03-18 09:05:08.752409+00
43	wagtailcore	0027_fix_collection_path_collation	2018-03-18 09:05:08.768621+00
44	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2018-03-18 09:05:08.789307+00
45	wagtailcore	0028_merge	2018-03-18 09:05:08.791621+00
46	wagtailcore	0029_unicode_slugfield_dj19	2018-03-18 09:05:08.811688+00
47	wagtailcore	0030_index_on_pagerevision_created_at	2018-03-18 09:05:08.830436+00
48	wagtailcore	0031_add_page_view_restriction_types	2018-03-18 09:05:08.876814+00
49	wagtailcore	0032_add_bulk_delete_page_permission	2018-03-18 09:05:08.895177+00
50	wagtailcore	0033_remove_golive_expiry_help_text	2018-03-18 09:05:08.931611+00
51	wagtailcore	0034_page_live_revision	2018-03-18 09:05:08.954273+00
52	wagtailcore	0035_page_last_published_at	2018-03-18 09:05:08.975157+00
53	wagtailcore	0036_populate_page_last_published_at	2018-03-18 09:05:08.994011+00
54	wagtailcore	0037_set_page_owner_editable	2018-03-18 09:05:09.01786+00
55	wagtailcore	0038_make_first_published_at_editable	2018-03-18 09:05:09.039033+00
56	wagtailcore	0039_collectionviewrestriction	2018-03-18 09:05:09.080332+00
57	wagtailcore	0040_page_draft_title	2018-03-18 09:05:09.119273+00
58	wagtaildocs	0001_initial	2018-03-18 09:05:09.139802+00
59	wagtaildocs	0002_initial_data	2018-03-18 09:05:09.172275+00
60	wagtaildocs	0003_add_verbose_names	2018-03-18 09:05:09.219031+00
61	wagtaildocs	0004_capitalizeverbose	2018-03-18 09:05:09.303621+00
62	wagtaildocs	0005_document_collection	2018-03-18 09:05:09.331369+00
63	wagtaildocs	0006_copy_document_permissions_to_collections	2018-03-18 09:05:09.360057+00
64	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2018-03-18 09:05:09.38544+00
65	wagtaildocs	0007_merge	2018-03-18 09:05:09.387516+00
66	wagtailembeds	0001_initial	2018-03-18 09:05:09.399919+00
67	wagtailembeds	0002_add_verbose_names	2018-03-18 09:05:09.405398+00
68	wagtailembeds	0003_capitalizeverbose	2018-03-18 09:05:09.4114+00
69	wagtailforms	0001_initial	2018-03-18 09:05:09.433941+00
70	wagtailforms	0002_add_verbose_names	2018-03-18 09:05:09.461881+00
71	wagtailforms	0003_capitalizeverbose	2018-03-18 09:05:09.54631+00
72	wagtailimages	0001_initial	2018-03-18 09:05:09.606799+00
73	wagtailimages	0002_initial_data	2018-03-18 09:05:09.644615+00
74	wagtailimages	0003_fix_focal_point_fields	2018-03-18 09:05:09.698183+00
75	wagtailimages	0004_make_focal_point_key_not_nullable	2018-03-18 09:05:09.738696+00
76	wagtailimages	0005_make_filter_spec_unique	2018-03-18 09:05:09.747475+00
77	wagtailimages	0006_add_verbose_names	2018-03-18 09:05:09.814125+00
78	wagtailimages	0007_image_file_size	2018-03-18 09:05:09.83375+00
79	wagtailimages	0008_image_created_at_index	2018-03-18 09:05:09.855364+00
80	wagtailimages	0009_capitalizeverbose	2018-03-18 09:05:09.980795+00
81	wagtailimages	0010_change_on_delete_behaviour	2018-03-18 09:05:10.002888+00
82	wagtailimages	0011_image_collection	2018-03-18 09:05:10.035375+00
83	wagtailimages	0012_copy_image_permissions_to_collections	2018-03-18 09:05:10.068892+00
84	wagtailimages	0013_make_rendition_upload_callable	2018-03-18 09:05:10.084706+00
85	wagtailimages	0014_add_filter_spec_field	2018-03-18 09:05:10.129302+00
86	wagtailimages	0015_fill_filter_spec_field	2018-03-18 09:05:10.15463+00
87	wagtailimages	0016_deprecate_rendition_filter_relation	2018-03-18 09:05:10.1966+00
88	wagtailimages	0017_reduce_focal_point_key_max_length	2018-03-18 09:05:10.214082+00
89	wagtailimages	0018_remove_rendition_filter	2018-03-18 09:05:10.246909+00
90	wagtailimages	0019_delete_filter	2018-03-18 09:05:10.314611+00
91	wagtailredirects	0001_initial	2018-03-18 09:05:10.340887+00
92	wagtailredirects	0002_add_verbose_names	2018-03-18 09:05:10.38401+00
93	wagtailredirects	0003_make_site_field_editable	2018-03-18 09:05:10.412548+00
94	wagtailredirects	0004_set_unique_on_path_and_site	2018-03-18 09:05:10.447053+00
95	wagtailredirects	0005_capitalizeverbose	2018-03-18 09:05:10.574945+00
96	wagtailsearch	0001_initial	2018-03-18 09:05:10.640484+00
97	wagtailsearch	0002_add_verbose_names	2018-03-18 09:05:10.708828+00
98	wagtailsearch	0003_remove_editors_pick	2018-03-18 09:05:10.737106+00
99	wagtailusers	0001_initial	2018-03-18 09:05:10.765577+00
100	wagtailusers	0002_add_verbose_name_on_userprofile	2018-03-18 09:05:10.814956+00
101	wagtailusers	0003_add_verbose_names	2018-03-18 09:05:10.829322+00
102	wagtailusers	0004_capitalizeverbose	2018-03-18 09:05:10.889344+00
103	wagtailusers	0005_make_related_name_wagtail_specific	2018-03-18 09:05:10.913075+00
104	wagtailusers	0006_userprofile_prefered_language	2018-03-18 09:05:10.931623+00
105	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2018-03-18 09:05:10.934955+00
106	blog	0001_initial	2018-03-18 09:05:55.645701+00
107	home	0001_initial	2018-03-18 13:02:32.937012+00
108	home	0002_create_homepage	2018-03-18 13:02:32.961058+00
109	wagtailmenus	0001_initial	2018-03-31 11:02:14.935858+00
110	wagtailmenus	0002_auto_20160129_0901	2018-03-31 11:02:14.97404+00
111	wagtailmenus	0003_auto_20160129_2339	2018-03-31 11:02:15.152131+00
112	wagtailmenus	0004_auto_20160130_0024	2018-03-31 11:02:15.191503+00
113	wagtailmenus	0005_auto_20160130_2209	2018-03-31 11:02:15.265352+00
114	wagtailmenus	0006_auto_20160131_1347	2018-03-31 11:02:15.322861+00
115	wagtailmenus	0007_auto_20160131_2000	2018-03-31 11:02:15.428411+00
116	wagtailmenus	0008_auto_20160131_2327	2018-03-31 11:02:15.775865+00
117	wagtailmenus	0009_auto_20160201_0859	2018-03-31 11:02:15.801712+00
118	wagtailmenus	0010_auto_20160201_1558	2018-03-31 11:02:15.825403+00
119	wagtailmenus	0011_auto_20160415_1519	2018-03-31 11:02:15.874602+00
120	wagtailmenus	0012_auto_20160419_0039	2018-03-31 11:02:16.196581+00
121	wagtailmenus	0013_auto_20160423_1124	2018-03-31 11:02:16.242217+00
122	wagtailmenus	0014_auto_20160423_1339	2018-03-31 11:02:16.291025+00
123	wagtailmenus	0015_auto_20160423_1348	2018-03-31 11:02:16.340339+00
124	wagtailmenus	0016_auto_20160930_0645	2018-03-31 11:02:16.387234+00
125	wagtailmenus	0017_auto_20161013_1658	2018-03-31 11:02:16.612259+00
126	wagtailmenus	0018_auto_20161204_2043	2018-03-31 11:02:16.65608+00
127	wagtailmenus	0019_auto_20161204_2143	2018-03-31 11:02:16.682837+00
128	wagtailmenus	0020_auto_20161210_0004	2018-03-31 11:02:16.826126+00
129	wagtailmenus	0021_auto_20170106_2352	2018-03-31 11:02:16.864481+00
130	wagtailmenus	0022_auto_20170913_2125	2018-03-31 11:02:16.901591+00
131	blog	0002_auto_20180614_0223	2018-06-14 00:23:28.960924+00
132	auth	0009_alter_user_last_name_max_length	2018-10-23 00:54:46.949897+00
133	home	0003_copywritingsettings	2019-09-01 10:42:05.06325+00
134	home	0004_auto_20190901_1303	2019-09-01 11:03:35.686787+00
135	home	0005_copywritingsettings_testimonial	2019-09-01 11:34:28.584824+00
136	home	0006_auto_20190901_1341	2019-09-01 11:41:40.761909+00
137	home	0007_auto_20190901_1342	2019-09-01 11:42:35.845898+00
138	wagtaildocs	0008_document_file_size	2020-07-10 04:55:25.914938+00
139	wagtailimages	0020_add-verbose-name	2020-07-10 04:55:25.946454+00
140	wagtailimages	0021_image_file_hash	2020-07-10 04:55:25.99605+00
141	wagtailredirects	0006_redirect_increase_max_length	2020-07-10 04:55:26.044813+00
142	wagtailusers	0007_userprofile_current_time_zone	2020-07-10 04:55:26.086776+00
143	wagtailusers	0008_userprofile_avatar	2020-07-10 04:55:26.127794+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
usk8v2pia00ss3eg02ll2ap3iiz4bn89	MWY1Y2FhMWU1NWEzNzNmNDAyZGYwYmU5OTVkYzM3N2RmNjg3ZDk4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxNjVhYzE2ZWMwYzM2NWUzNGFlNjJhMTEyYzQxYzRjMTVlZWQ1YjciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-01 12:05:23.924699+00
8mklobcb1lopffmtxi66qyng4gfvgbbc	MWY1Y2FhMWU1NWEzNzNmNDAyZGYwYmU5OTVkYzM3N2RmNjg3ZDk4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxNjVhYzE2ZWMwYzM2NWUzNGFlNjJhMTEyYzQxYzRjMTVlZWQ1YjciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-03 02:08:13.376049+00
v52hz9d57u7bwyort86gtf4qj97900u7	MWY1Y2FhMWU1NWEzNzNmNDAyZGYwYmU5OTVkYzM3N2RmNjg3ZDk4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxNjVhYzE2ZWMwYzM2NWUzNGFlNjJhMTEyYzQxYzRjMTVlZWQ1YjciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-14 11:02:35.254505+00
zppiexm467rw524wzv3bcavu9mk5tn8b	Zjg4YjZhZjM3ZTI5MWUwMzk4MzQyNWM3MjU4ZTIzNjFhYjg2YjUzYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxNjVhYzE2ZWMwYzM2NWUzNGFlNjJhMTEyYzQxYzRjMTVlZWQ1YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-05-20 06:56:41.442833+00
jldr0tzhrxj2e68q5mc5ymdfmotj2kau	NmY2ZjhlMDdjNjk2ZTAxYjdjZjQ4NTRhNzVhYTNhMzZhZWM1NzNiYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJkMTY1YWMxNmVjMGMzNjVlMzRhZTYyYTExMmM0MWM0YzE1ZWVkNWI3In0=	2018-06-28 00:23:49.946098+00
ecysn2qm6cj35xc2pawu6to8slhs45md	NmY2ZjhlMDdjNjk2ZTAxYjdjZjQ4NTRhNzVhYTNhMzZhZWM1NzNiYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJkMTY1YWMxNmVjMGMzNjVlMzRhZTYyYTExMmM0MWM0YzE1ZWVkNWI3In0=	2018-06-28 07:14:12.315706+00
ndduktfpy0avktxyzq0zexglyj55up13	ZGZjY2Y0ZWZjYjQ0YjQxYWUyZWM1Yjk4M2VkM2I3NDhlNjgxZmUzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDE2NWFjMTZlYzBjMzY1ZTM0YWU2MmExMTJjNDFjNGMxNWVlZDViNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-07-02 06:17:31.684348+00
v5zgn7mclxb06hpxb7kjgzx2mcw211z9	ZGZjY2Y0ZWZjYjQ0YjQxYWUyZWM1Yjk4M2VkM2I3NDhlNjgxZmUzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDE2NWFjMTZlYzBjMzY1ZTM0YWU2MmExMTJjNDFjNGMxNWVlZDViNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-07-04 06:21:08.835887+00
kj1sdyi4yd8jqxhrcloxmyyfdakv8nm3	NDUzMmZiNzBhNGNiZDllZTM4MTZkZmJhNDFhMDc3ZDI3ZTU4ZTkxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTFkYWJlMWM2NjA0OTVlOWY4NjY4Y2I3NTM5YTBmNTM4MGNiOGVkIn0=	2018-11-06 01:55:32.957358+00
e1seamr73e21z6pvdy8y4cnrjhga61i3	NDUzMmZiNzBhNGNiZDllZTM4MTZkZmJhNDFhMDc3ZDI3ZTU4ZTkxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTFkYWJlMWM2NjA0OTVlOWY4NjY4Y2I3NTM5YTBmNTM4MGNiOGVkIn0=	2019-09-14 12:15:40.273188+00
cqkzjby3jz0pwdesww820x274vxkv7sr	YWQwYjMzM2Q0MDFlYzFkNjE3NThkNTk4ZTBmY2I4ODJkZjM3MDYwYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTFkYWJlMWM2NjA0OTVlOWY4NjY4Y2I3NTM5YTBmNTM4MGNiOGVkIiwid2FndGFpbC1wcmV2aWV3LTkiOlsiY3NyZm1pZGRsZXdhcmV0b2tlbj1ycXpFS1lMU0h2SFA2MzZWSlB1VU5JQTdSS3hDY3lqN0ExUnQxTXZBSG14WklGTTNBaW92OTk5Q2RWV0hpZnR0Jm5leHQ9JnRpdGxlPVdlbGNvbWUmaGVhZGVyX2ltYWdlPTE4JmJvZHk9VGhpcytXYWd0YWlsK0Jsb2crRGVtbytpcythK2xpdmUrdmVyc2lvbitvZislNUJ3YWd0YWlsLWJvb3RzdHJhcC1ibG9nJTVEJTI4aHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGbWljaGFlbC15aW4lMkZ3YWd0YWlsLWJvb3RzdHJhcC1ibG9nJTI5JTJDK3doaWNoK2lzK2RldmVsb2VwZCtleGNsdXNpdmV5K2ZvcitteSslNUJXYWd0YWlsK0Jsb2crVHV0b3JpYWwlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGd2FndGFpbC10dXRvcmlhbHMlMkYlM0Z1dG1fc291cmNlJTNEZ2l0aHViJTI2dXRtX21lZGl1bSUzRHdlYnNpdGUlMjZ1dG1fY2FtcGFpZ24lM0R3YWd0YWlsX2RlbW8lMjkuK1lvdStjYW4rYWxzbytnZXQraXQrdXNpbmcrY29tbWFuZGVzK2JlbG93LiUwRCUwQSUwRCUwQSUyMyUyMytNYWluK2ZlYXR1cmVzK29mK1dhZ3RhaWwrdHV0b3JpYWwrc2VyaWVzJTNBJTBEJTBBJTBEJTBBMS4rSSt3aWxsKyUyQSUyQXRlYWNoK3lvdStob3crdG8rY3JlYXRlK2Erc3RhbmRhcmQrYmxvZytmcm9tK3NjcmF0Y2glMkElMkElMkMrSSt3aWxsK2FkZCtzdGFuZGFyZCtDTVMrZmVhdHVyZXMrdG8rYmxvZytzdGVwK2J5K3N0ZXAuK0luK3RoZStlbmQlMkMreW91K3dpbGwrc2VlK2ErcmVhbCtibG9nK3doaWNoK2hhcytuZWFybHkrYWxsK2ZlYXR1cmVzK29mK3N0YW5kYXJkK0NNUy4lMEQlMEElMEQlMEEyLitNYW55K3R1dG9yaWFscytpbmRlZWQraGF2ZStjb2RlK3NuaXBwZXRzJTJDK2J1dCtpdCt0YWtlcyttdWNoK3RpbWUrZm9yK25ld2JpZStkZXZlbG9wZXIrdG8rbWFrZStpdCtydW4rb24raGlzK293bitwcm9qZWN0cyUyQytzbytpbit0aGlzK1dhZ3RhaWxDTVMrdHV0b3JpYWwrc2VyaWVzJTJDK0krY3JlYXRlZCthK0dpdEh1Yitwcm9qZWN0KyU1QndhZ3RhaWxfdHV0byU1RCUyOGh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRm1pY2hhZWwteWluJTJGd2FndGFpbF90dXRvLmdpdCUyOStob3N0aW5nK3RoZStzb3VyY2UrY29kZStvZitibG9nK0krY3JlYXRlZCtpbit0dXRvcmlhbHMuK1lvdStjYW4rY2hlY2tvdXQrdGhlK2RpZmZlcmVudCtjb21taXRzK3RvK2dldCtzdGFydGVkK2FzK3lvdStsaWtlLitGb3IrZXhhbXBsZSUyQytpZit5b3Urb25seSt3YW50K3RvK3Rlc3QraG93K3RvK2FkZCt0YWdzK2FuZCtjYXRlZ29yeStzdXBwb3J0K3RvK3dhZ3RhaWwrYmxvZyUyQyt5b3UrY2FuKyU2MGdpdCtjaGVja291dCs1MDkxNWIzJTYwK3RvK21ha2UrdGhlK2VudiUyQytzb3VyY2UrZmlsZXMrc2V0dXAlMkMrdGhlbitjb3B5K2NvZGUrZnJvbSt0dXRvcmlhbHMrYW5kK3Bhc3RlK3RoZW0raW50byt5b3VyK3Byb2plY3QuK0lmK3lvdStoYXZlK3Ryb3VibGUraW4rdGhpcytwcm9jZXNzJTJDKyU2MGdpdCtjaGVja291dCswNzBkOGRlJTYwK3RvK3NlZSt0aGUrZmluYWwrcmVzdWx0K3doaWNoK2hlbHBzK3lvdSt0cm91Ymxlc2hvb3QuJTBEJTBBJTBEJTBBJTIzJTIzK1RhYmxlK29mK0NvbnRlbnRzJTNBJTBEJTBBJTBEJTBBJTJBKyU1QlB5dGhvbitDTVMrRnJhbWV3b3JrK1JldmlldyUzQSt3YWd0YWlsK3ZzK2RqYW5nby1jbXMlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGMjAxNyUyRjA2JTJGMTklMkZweXRob24tY21zLWZyYW1ld29yay1yZXZpZXctd2FndGFpbC12cy1kamFuZ28tY21zJTJGJTI5K1lvdSttaWdodCt3YW50K3RvK2tub3crdGhlK2RpZmZlcmVuY2UrYmV0d2VlbitXYWd0YWlsK2FuZCtEamFuZ28tQ01TJTJDK3RoZSt0d28rbW9zdCtwb3B1bGFyK0NNUytmcmFtZXdvcmsraW4rUHl0aG9uK3dvcmxkLitUaGF0K2lzK3doeStJK3dyb3RlK3RoaXMrYmxvZytwb3N0K3RvK2hlbHArcGVvcGxlK2xpa2UrbWUrdG8rbWFrZSthK2dvb2QrY2hvaWNlLiUwRCUwQSUyQSslNUJXYWd0YWlsK1R1dG9yaWFsKyUyMzElM0ErQ3JlYXRlK1dhZ3RhaWwrUHJvamVjdCU1RCUyOGh0dHBzJTNBJTJGJTJGYmxvZy5taWNoYWVseWluLmluZm8lMkYyMDE3JTJGMDYlMkYyMyUyRndhZ3RhaWwtdHV0b3JpYWxzLWJ1aWxkaW5nLWJsb2ctcGFydC0xJTJGJTI5K1Nob3creW91K2hvdyt0bytjcmVhdGUrYSt3YWd0YWlsK3Byb2plY3QrYW5kK2hlbHAreW91K3VuZGVyc3RhbmQraXRzK21haW4rY29tcG9uZW50cy4rJTBEJTBBJTJBKyU1QldhZ3RhaWwrVHV0b3JpYWwrJTIzMiUzQStDcmVhdGUrRGF0YStNb2RlbCU1RCUyOGh0dHBzJTNBJTJGJTJGYmxvZy5taWNoYWVseWluLmluZm8lMkYyMDE3JTJGMDYlMkYyNSUyRndhZ3RhaWwtdHV0b3JpYWxzLWJ1aWxkaW5nLWJsb2ctcGFydC0yJTJGJTI5K1RlYWNoK3lvdStob3crdG8rY3JlYXRlK3RoZStkYXRhK21vZGVsJTJDK2NsYXJpZnkrdGhlK3dvcmtmbG93JTJDK2FuZCtjcmVhdGUrdGVtcGxhdGUrdG8rcmVuZGVyK2NvbnRlbnQuJTBEJTBBJTJBKyU1QldhZ3RhaWwrVHV0b3JpYWwrJTIzMyUzQStDYXRlZ29yeStBbmQrVGFnK1N1cHBvcnQlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGMjAxNyUyRjA2JTJGMjYlMkZ3YWd0YWlsLXR1dG9yaWFscy1idWlsZGluZy1ibG9nLXBhcnQtMyUyRiUyOStIZWxwK3lvdSthZGQrY2F0ZWdvcnkrYW5kK3RhZytzdXBwb3J0K3RvK3Bvc3QrcGFnZSthcytzdGFuZGFyZCtDTVMrZG9lcy4lMEQlMEElMkErJTVCV2FndGFpbCtUdXRvcmlhbCslMjM0JTNBK1JvdXRhYmxlK1BhZ2UlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGMjAxNyUyRjA2JTJGMzAlMkZ3YWd0YWlsLXR1dG9yaWFscy1yb3V0YWJsZS1wYWdlJTJGJTI5K1Nob3creW91K2hvdyt0byt1c2UrUm91dGFibGVQYWdlTWl4aW4rdG8rbWFrZStibG9nK2FwcCtyb3V0YWJsZSUyQytzbytpdCtjYW4raGFuZGxlK3N1Yi1VUkxzK2xpa2UrY2F0ZWdvcnkrYW5kK3RhZytsaW5rcy4lMEQlMEElMkErJTVCV2FndGFpbCtUdXRvcmlhbCslMjM1JTNBK0N1c3RvbWl6ZStCbG9nK1Bvc3QrVVJMJTVEJTI4aHR0cHMlM0ElMkYlMkZibG9nLm1pY2hhZWx5aW4uaW5mbyUyRjIwMTclMkYwNyUyRjA0JTJGd2FndGFpbC10dXRvcmlhbHMtNS1jdXN0b21pemUtYmxvZy1wb3N0LXVybCUyRiUyOStUZWFjaCt5b3UraG93K3RvK2N1c3RvbWl6ZSt0aGUrcGVybWFuZW50K2xpbmsrb2YrcG9zdCtwYWdlJTJDK2FuZCtob3crdG8rcmV2ZXJzZSt0aGUrYmxvZytwb3N0K2xpbmsraW4rdGhlK3RlbXBsYXRlLi4lMEQlMEElMkErJTVCV2FndGFpbCtUdXRvcmlhbCslMjM2JTNBK0ltcG9ydCtUaGVtZStJbnRvK1dhZ3RhaWwrQmxvZyU1RCUyOGh0dHBzJTNBJTJGJTJGYmxvZy5taWNoYWVseWluLmluZm8lMkYyMDE3JTJGMDclMkYwNiUyRndhZ3RhaWwtdHV0b3JpYWxzLTYtaW1wb3J0LXRoZW1lLXdhZ3RhaWwtYmxvZyUyRiUyOStFeHBsYWluK2hvdyt0bytxdWlja2x5K2ltcG9ydCthbitleGlzdGluZyt0aGVtZStpbnRvK3dhZ3RhaWwrYmxvZyt0byttYWtlK291citibG9nK2xvb2srbW9yZStkZWNlbnQuJTBEJTBBJTJBKyU1QldhZ3RhaWwrVHV0b3JpYWwrJTIzNyUzQStBZGQrU2VhcmNoK0Z1bmN0aW9uJTVEJTI4aHR0cHMlM0ElMkYlMkZibG9nLm1pY2hhZWx5aW4uaW5mbyUyRjIwMTclMkYwNyUyRjExJTJGd2FndGFpbC10dXRvcmlhbHMtNy1hZGQtc2VhcmNoLWZ1bmN0aW9uLXdhZ3RhaWwtYmxvZyUyRiUyOStUZWFjaCt5b3UraG93K3RvK2FkZCtzZWFyY2grZnVuY3Rpb24raW4rd2FndGFpbCtibG9nK3NvK3RoZSt1c2VyK2NhbitmaWx0ZXIrdGhlK3Bvc3RzK3Rocm91Z2grdGhlK2tleXdvcmRzLiUwRCUwQSUyQSslNUJXYWd0YWlsK1R1dG9yaWFsKyUyMzglM0ErQWRkK01hcmtkb3duK1N1cHBvcnQlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGMjAxNyUyRjA3JTJGMjclMkZ3YWd0YWlsLXR1dG9yaWFscy04LWFkZC1tYXJrZG93bi1zdXBwb3J0JTJGJTI5K0krd2lsbCtzaG93K3lvdStob3crdG8rYWRkK01hcmtkb3duK3N1cHBvcnQrdG8rb3VyK3dhZ3RhaWwrYmxvZyUwRCUwQSUyQSslNUJXYWd0YWlsK1R1dG9yaWFsKyUyMzklM0ErQWRkK0xhVGVYK1N1cHBvcnQrJTI2K0NvZGUrSGlnaGxpZ2h0K0luK1dhZ3RhaWwlNUQlMjhodHRwcyUzQSUyRiUyRmJsb2cubWljaGFlbHlpbi5pbmZvJTJGMjAxNyUyRjA4JTJGMDIlMkZ3YWd0YWlsLXR1dG9yaWFscy05LWFkZC1sYXRleC1zdXBwb3J0LWNvZGUtaGlnaGxpZ2h0LXdhZ3RhaWwlMkYlMjkrSW4rdGhpcyt0dXRvcmlhbCUyQytJK3dpbGwrdGFsaythYm91dCtob3crdG8rYWRkK0xhVGVYK3N1cHBvcnQrYW5kK2NvZGUraGlnaGxpZ2h0K3N1cHBvcnQraW4rb3VyK3dhZ3RhaWwrYmxvZythcHBsaWNhdGlvbi4lMEQlMEElMkErJTVCV2FndGFpbCtUdXRvcmlhbCslMjMxMCUzQStBZGQrQ29tbWVudCtTdXBwb3J0K0luK1dhZ3RhaWwrQmxvZyU1RCUyOGh0dHBzJTNBJTJGJTJGYmxvZy5taWNoYWVseWluLmluZm8lMkYyMDE3JTJGMTAlMkYyMyUyRndhZ3RhaWwtdHV0b3JpYWxzLTEwLWFkZC1jb21tZW50LXN1cHBvcnQtd2FndGFpbC1ibG9nJTJGJTI5K0luK3RoaXMrY2hhcHRlciUyQytJK3dpbGwrdGFsaythYm91dCtob3crdG8rYWRkK2NvbW1lbnQrc3VwcG9ydCt0bytvdXIrV2FndGFpbCtCbG9nLiUwRCUwQSUyQSslNUJXYWd0YWlsK1R1dG9yaWFsKyUyMzExJTNBK0hvdyt0byt1c2UrU3RyZWFtRmllbGQraW4rV2FndGFpbCU1RCUyOGh0dHBzJTNBJTJGJTJGYmxvZy5taWNoYWVseWluLmluZm8lMkYyMDE3JTJGMTIlMkYyNSUyRmhvdy11c2Utc3RyZWFtZmllbGQtd2FndGFpbCUyRiUyOStJK3dpbGwrdGFsaythYm91dCt0aGUrU3RyZWFtRmllbGQrZmVhdHVyZStvZitXYWd0YWlsK2luK2RldGFpbCthbmQrSSttdXN0K3NheStTdHJlYW1GaWVsZCtpcytvbmUrb2YrdGhlK21vc3QrYW1hemluZytmZWF0dXJlcytpbitXYWd0YWlsLiZleGNlcnB0PSZ0YWdzPVdhZ3RhaWwlMkNXZWxzb21lJnNsdWc9d2VsY29tZSZzZW9fdGl0bGU9JnNob3dfaW5fbWVudXM9b24mc2VhcmNoX2Rlc2NyaXB0aW9uPSZnb19saXZlX2F0PSZleHBpcmVfYXQ9JmRhdGU9MjAxOC0wMS0zMCsxOSUzQTAwIiwxNTk0MzU1NDcyLjcxMjAyNTJdfQ==	2020-07-24 02:31:12.740392+00
\.


--
-- Data for Name: home_copywritingsettings; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.home_copywritingsettings (id, hero_title, hero_lead, hero_cta_text, hero_cta_url, site_id, testimonial) FROM stdin;
1	Welcome to the Gambia NDMA blog!	<p>Please click the top <b>blog</b> button to check the news...</p>	See the Blog!	http://127.0.0.1:8000/blog/	2	[{"type": "row", "value": {"paragraph": "<h3><b>Sample One</b></h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>", "image": 18}, "id": "e77874d6-05bf-4be7-8229-be93d52a629f"}, {"type": "row", "value": {"paragraph": "<h3><b>Sample Two</b></h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>", "image": 17}, "id": "aabdeea7-6e52-419f-8038-31f6cccb3f2b"}, {"type": "row", "value": {"paragraph": "<h3><b>Sample Three</b></h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>", "image": 16}, "id": "8c51610b-c48a-415d-b089-17592afc4b00"}]
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.home_homepage (page_ptr_id) FROM stdin;
3
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	tag1	tag1
2	tag2	tag2
3	tag3	tag3
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	2	2
2	1	1	2
3	1	2	3
4	1	1	3
5	1	2	5
6	1	1	5
7	1	2	6
8	1	1	6
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_grouppagepermission (id, group_id, page_id, permission_type) FROM stdin;
1	1	1	add
2	1	1	edit
3	1	1	publish
4	2	1	add
5	2	1	edit
6	1	1	lock
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	
3	00010001	2	1	Home	home	t	f	/home/		f		\N	\N	f	33	\N	f	\N	\N	\N	\N	
4	000100010001	3	5	NDMA Blog	blog	t	f	/home/blog/	NDMA Blog	t	NDMA Blog	\N	\N	f	31	1	f	2020-07-10 03:20:47.96767+00	2017-06-23 23:31:12.387+00	19	2020-07-10 03:20:47.993733+00	NDMA Blog
8	0001000100010004	4	0	About	about	t	f	/home/blog/about/		t		\N	\N	f	29	1	f	2018-03-31 11:31:18.570783+00	2017-12-23 12:41:55.069+00	2	2018-03-31 11:31:18.5925+00	About
9	0001000100010005	4	0	New state of public emergency declared	post1	t	f	/home/blog/post1/		t		\N	\N	f	27	1	f	2020-07-10 03:10:00.100392+00	2018-01-30 07:05:53.204+00	18	2020-07-10 03:10:00.14064+00	New state of public emergency declared
10	0001000100010006	4	0	Senegal confirms 69 new covid-19 cases	markdown-support	t	t	/home/blog/markdown-support/		f		\N	\N	f	27	1	f	2020-07-10 05:01:31.068321+00	2018-01-30 07:09:09.707+00	16	2020-07-10 03:08:58.768878+00	Senegal confirms 69 new covid-19 cases
11	0001000100010007	4	0	Africell donates D12m to fight covid-19	latex-code-sample	t	f	/home/blog/latex-code-sample/		f		\N	\N	f	27	1	f	2020-07-10 03:06:08.92699+00	2018-01-30 08:08:58.279+00	13	2020-07-10 03:06:08.966222+00	Africell donates D12m to fight covid-19
12	0001000100010008	4	0	Contact	contact	t	f	/home/blog/contact/		t		\N	\N	f	39	1	f	2018-06-20 06:21:55.033899+00	2018-06-14 00:28:40.356327+00	6	2018-06-20 06:21:55.06431+00	Contact
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, content_json, approved_go_live_at, page_id, user_id, created_at) FROM stdin;
1	f	{"slug": "blog", "content_type": 31, "title": "Wagtail Blog Demo", "show_in_menus": true, "last_published_at": null, "owner": 1, "depth": 3, "draft_title": "Wagtail Blog Demo", "pk": 4, "go_live_at": null, "latest_revision_created_at": "2018-01-31T02:29:55.213Z", "first_published_at": "2017-06-24T01:31:12.387Z", "seo_title": "Wagtail Blog Demo", "path": "000100010001", "expire_at": null, "live": true, "locked": false, "search_description": "Wagtail Blog Demo", "expired": false, "numchild": 4, "has_unpublished_changes": false, "live_revision": null, "url_path": "/home/blog/", "description": "Wagtail Blog Demo"}	\N	4	1	2018-03-31 11:13:22.468493+00
2	f	{"slug": "about", "owner": 1, "live": true, "expired": false, "expire_at": null, "live_revision": null, "search_description": "", "body": "[{\\"value\\": \\"<p><b>This page is built using Wagtail Streamfield, please check </b><a href=\\\\\\"https://blog.michaelyin.info/2017/12/25/how-use-streamfield-wagtail/\\\\\\"><b>How to use StreamField in Wagtail</b></a><b> for more detail if you have no idea what is Streamfield of Wagtail.</b></p>\\", \\"type\\": \\"paragraph\\", \\"id\\": \\"87b8fa46-9123-46e1-ba59-f6c72ef29040\\"}, {\\"value\\": {\\"right_column\\": [{\\"value\\": \\"Right Header\\", \\"type\\": \\"heading\\", \\"id\\": \\"3616b65b-0b52-43df-a15d-ac26eae50265\\"}, {\\"value\\": 6, \\"type\\": \\"image\\", \\"id\\": \\"553afb23-40d1-483a-9528-838c41f8bd67\\"}, {\\"value\\": \\"<p>If you want to know more about this book, please check <a href=\\\\\\"https://leanpub.com/buildblogwithwagtailcms\\\\\\">Build Blog With Wagtail CMS</a></p>\\", \\"type\\": \\"paragraph\\", \\"id\\": \\"75f47133-4c64-4f34-a5d6-350f76aae427\\"}], \\"left_column\\": [{\\"value\\": \\"Left Header\\", \\"type\\": \\"heading\\", \\"id\\": \\"7e07e6a2-9fec-428a-901a-fd206684a139\\"}, {\\"value\\": \\"<p>My name is Michael Yin, I am a full stack developer from China. Right now I am living in WuHan, China with my wife. I am working with Python and Javascript to create web app and web scraping program.</p><p>I created this blog to share some thoughts and experience about programming, most of them are related to Python such as Django and Scrapy, which I love most.<br/></p>\\", \\"type\\": \\"paragraph\\", \\"id\\": \\"a1d889c9-d0e0-47b8-b38f-e6f0d82cd0cc\\"}]}, \\"type\\": \\"two_columns\\", \\"id\\": \\"74d4bced-fff9-4f8c-ab7e-67275de23e8c\\"}, {\\"value\\": \\"Table of Contents:\\", \\"type\\": \\"heading\\", \\"id\\": \\"358e4600-4a72-4541-a7f6-c74b5cebd4d6\\"}, {\\"value\\": \\"<ul><li><a href=\\\\\\"https://blog.michaelyin.info/2017/06/19/python-cms-framework-review-wagtail-vs-django-cms/\\\\\\">Python CMS Framework Review: wagtail vs django-cms</a> You might want to know the difference between Wagtail and Django-CMS, the two most popular CMS framework in Python world. That is why I wrote this blog post to help people like me to make a good choice.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/06/23/wagtail-tutorials-building-blog-part-1/\\\\\\">Wagtail Tutorial #1: Create Wagtail Project</a> Show you how to create a wagtail project and help you understand its main components.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/06/25/wagtail-tutorials-building-blog-part-2/\\\\\\">Wagtail Tutorial #2: Create Data Model</a> Teach you how to create the data model, clarify the workflow, and create template to render content.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/06/26/wagtail-tutorials-building-blog-part-3/\\\\\\">Wagtail Tutorial #3: Category And Tag Support</a> Help you add category and tag support to post page as standard CMS does.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/06/30/wagtail-tutorials-routable-page/\\\\\\">Wagtail Tutorial #4: Routable Page</a> Show you how to use RoutablePageMixin to make blog app routable, so it can handle sub-URLs like category and tag links.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/07/04/wagtail-tutorials-5-customize-blog-post-url/\\\\\\">Wagtail Tutorial #5: Customize Blog Post URL</a> Teach you how to customize the permanent link of post page, and how to reverse the blog post link in the template..</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/07/06/wagtail-tutorials-6-import-theme-wagtail-blog/\\\\\\">Wagtail Tutorial #6: Import Theme Into Wagtail Blog</a> Explain how to quickly import an existing theme into wagtail blog to make our blog look more decent.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/07/11/wagtail-tutorials-7-add-search-function-wagtail-blog/\\\\\\">Wagtail Tutorial #7: Add Search Function</a> Teach you how to add search function in wagtail blog so the user can filter the posts through the keywords.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/07/27/wagtail-tutorials-8-add-markdown-support/\\\\\\">Wagtail Tutorial #8: Add Markdown Support</a> I will show you how to add Markdown support to our wagtail blog</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/08/02/wagtail-tutorials-9-add-latex-support-code-highlight-wagtail/\\\\\\">Wagtail Tutorial #9: Add LaTeX Support &amp; Code Highlight In Wagtail</a> In this tutorial, I will talk about how to add LaTeX support and code highlight support in our wagtail blog application.</li><li><a href=\\\\\\"https://blog.michaelyin.info/2017/10/23/wagtail-tutorials-10-add-comment-support-wagtail-blog/\\\\\\">Wagtail Tutorial #10: Add Comment Support In Wagtail Blog</a> In this chapter, I will talk about how to add comment support to our Wagtail Blog.</li></ul>\\", \\"type\\": \\"paragraph\\", \\"id\\": \\"1efb5930-49c0-4428-ad8c-d91e283fa1d9\\"}]", "url_path": "/home/blog/about/", "seo_title": "", "draft_title": "About", "pk": 8, "latest_revision_created_at": "2018-01-31T02:24:28.647Z", "has_unpublished_changes": false, "title": "About", "last_published_at": null, "show_in_menus": true, "numchild": 0, "path": "0001000100010004", "locked": false, "content_type": 29, "first_published_at": "2017-12-23T13:41:55.069Z", "depth": 4, "go_live_at": null}	\N	8	1	2018-03-31 11:31:18.570783+00
3	f	{"slug": "welcome", "excerpt": "", "owner": 1, "live": true, "expired": false, "expire_at": null, "header_image": 18, "live_revision": null, "search_description": "", "body": "This Wagtail Blog Demo is a live version of [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog), which is develoepd exclusivey for my [Wagtail Blog Tutorial](https://blog.michaelyin.info/wagtail-tutorials/?utm_source=github&utm_medium=website&utm_campaign=wagtail_demo). You can also get it using commandes below.\\r\\n\\r\\n## Main features of Wagtail tutorial series:\\r\\n\\r\\n1. I will **teach you how to create a standard blog from scratch**, I will add standard CMS features to blog step by step. In the end, you will see a real blog which has nearly all features of standard CMS.\\r\\n\\r\\n2. Many tutorials indeed have code snippets, but it takes much time for newbie developer to make it run on his own projects, so in this WagtailCMS tutorial series, I created a GitHub project [wagtail_tuto](https://github.com/michael-yin/wagtail_tuto.git) hosting the source code of blog I created in tutorials. You can checkout the different commits to get started as you like. For example, if you only want to test how to add tags and category support to wagtail blog, you can `git checkout 50915b3` to make the env, source files setup, then copy code from tutorials and paste them into your project. If you have trouble in this process, `git checkout 070d8de` to see the final result which helps you troubleshoot.\\r\\n\\r\\n## Table of Contents:\\r\\n\\r\\n* [Python CMS Framework Review: wagtail vs django-cms](https://blog.michaelyin.info/2017/06/19/python-cms-framework-review-wagtail-vs-django-cms/) You might want to know the difference between Wagtail and Django-CMS, the two most popular CMS framework in Python world. That is why I wrote this blog post to help people like me to make a good choice.\\r\\n* [Wagtail Tutorial #1: Create Wagtail Project](https://blog.michaelyin.info/2017/06/23/wagtail-tutorials-building-blog-part-1/) Show you how to create a wagtail project and help you understand its main components. \\r\\n* [Wagtail Tutorial #2: Create Data Model](https://blog.michaelyin.info/2017/06/25/wagtail-tutorials-building-blog-part-2/) Teach you how to create the data model, clarify the workflow, and create template to render content.\\r\\n* [Wagtail Tutorial #3: Category And Tag Support](https://blog.michaelyin.info/2017/06/26/wagtail-tutorials-building-blog-part-3/) Help you add category and tag support to post page as standard CMS does.\\r\\n* [Wagtail Tutorial #4: Routable Page](https://blog.michaelyin.info/2017/06/30/wagtail-tutorials-routable-page/) Show you how to use RoutablePageMixin to make blog app routable, so it can handle sub-URLs like category and tag links.\\r\\n* [Wagtail Tutorial #5: Customize Blog Post URL](https://blog.michaelyin.info/2017/07/04/wagtail-tutorials-5-customize-blog-post-url/) Teach you how to customize the permanent link of post page, and how to reverse the blog post link in the template..\\r\\n* [Wagtail Tutorial #6: Import Theme Into Wagtail Blog](https://blog.michaelyin.info/2017/07/06/wagtail-tutorials-6-import-theme-wagtail-blog/) Explain how to quickly import an existing theme into wagtail blog to make our blog look more decent.\\r\\n* [Wagtail Tutorial #7: Add Search Function](https://blog.michaelyin.info/2017/07/11/wagtail-tutorials-7-add-search-function-wagtail-blog/) Teach you how to add search function in wagtail blog so the user can filter the posts through the keywords.\\r\\n* [Wagtail Tutorial #8: Add Markdown Support](https://blog.michaelyin.info/2017/07/27/wagtail-tutorials-8-add-markdown-support/) I will show you how to add Markdown support to our wagtail blog\\r\\n* [Wagtail Tutorial #9: Add LaTeX Support & Code Highlight In Wagtail](https://blog.michaelyin.info/2017/08/02/wagtail-tutorials-9-add-latex-support-code-highlight-wagtail/) In this tutorial, I will talk about how to add LaTeX support and code highlight support in our wagtail blog application.\\r\\n* [Wagtail Tutorial #10: Add Comment Support In Wagtail Blog](https://blog.michaelyin.info/2017/10/23/wagtail-tutorials-10-add-comment-support-wagtail-blog/) In this chapter, I will talk about how to add comment support to our Wagtail Blog.\\r\\n* [Wagtail Tutorial #11: How to use StreamField in Wagtail](https://blog.michaelyin.info/2017/12/25/how-use-streamfield-wagtail/) I will talk about the StreamField feature of Wagtail in detail and I must say StreamField is one of the most amazing features in Wagtail.", "url_path": "/home/blog/welcome/", "seo_title": "", "draft_title": "Welcome", "pk": 9, "latest_revision_created_at": "2018-01-30T14:31:07.874Z", "has_unpublished_changes": false, "categories": [], "title": "Welcome", "last_published_at": null, "show_in_menus": true, "post_tags": [{"content_object": 9, "pk": null, "tag": 4}, {"content_object": 9, "pk": null, "tag": 5}], "date": "2018-01-30T19:00:00Z", "numchild": 0, "path": "0001000100010005", "locked": false, "content_type": 27, "first_published_at": "2018-01-30T08:05:53.204Z", "depth": 4, "go_live_at": null}	\N	9	1	2018-03-31 11:31:30.297005+00
4	f	{"first_published_at": null, "numchild": 0, "has_unpublished_changes": false, "content_type": 39, "search_description": "", "live": true, "pk": 12, "url_path": "/home/blog/contact/", "owner": 1, "expired": false, "expire_at": null, "seo_title": "", "path": "0001000100010008", "custom_form_fields": [{"pk": 1, "default_value": "", "label": "Name", "field_type": "singleline", "page": 12, "required": true, "choices": "", "sort_order": 0, "help_text": ""}, {"pk": 2, "default_value": "", "label": "Email", "field_type": "email", "page": 12, "required": true, "choices": "", "sort_order": 1, "help_text": ""}, {"pk": 3, "default_value": "", "label": "Message", "field_type": "multiline", "page": 12, "required": true, "choices": "", "sort_order": 2, "help_text": ""}], "to_address": "", "from_address": "", "title": "Contact", "last_published_at": null, "live_revision": null, "depth": 4, "latest_revision_created_at": null, "go_live_at": null, "slug": "contact", "locked": false, "show_in_menus": false, "draft_title": "Contact", "thank_you_text": "<p>Thanks for your message, we will contact you ASAP.</p>", "subject": "Contact Message Received"}	\N	12	1	2018-06-14 00:28:40.33252+00
5	f	{"draft_title": "Contact", "to_address": "admin@michaelyin.info", "title": "Contact", "latest_revision_created_at": "2018-06-14T02:28:40.332Z", "pk": 12, "from_address": "noreply@michaelyin.info", "path": "0001000100010008", "live": true, "url_path": "/home/blog/contact/", "last_published_at": "2018-06-14T02:28:40.356Z", "subject": "Contact Message Received", "numchild": 0, "custom_form_fields": [{"default_value": "", "required": true, "field_type": "singleline", "help_text": "", "page": 12, "pk": 1, "choices": "", "sort_order": 0, "label": "Name"}, {"default_value": "", "required": true, "field_type": "email", "help_text": "", "page": 12, "pk": 2, "choices": "", "sort_order": 1, "label": "Email"}, {"default_value": "", "required": true, "field_type": "multiline", "help_text": "", "page": 12, "pk": 3, "choices": "", "sort_order": 2, "label": "Message"}], "thank_you_text": "<p>Thanks for your message, we will contact you ASAP.</p>", "live_revision": 4, "owner": 1, "expire_at": null, "slug": "contact", "seo_title": "", "go_live_at": null, "show_in_menus": false, "expired": false, "has_unpublished_changes": false, "search_description": "", "content_type": 39, "depth": 4, "locked": false, "first_published_at": "2018-06-14T02:28:40.356Z"}	\N	12	1	2018-06-14 01:06:37.828513+00
6	f	{"path": "0001000100010008", "locked": false, "pk": 12, "title": "Contact", "go_live_at": null, "subject": "Contact Message Received", "seo_title": "", "content_type": 39, "last_published_at": "2018-06-14T03:06:37.854Z", "draft_title": "Contact", "first_published_at": "2018-06-14T02:28:40.356Z", "live_revision": 5, "to_address": "admin@michaelyin.info", "url_path": "/home/blog/contact/", "custom_form_fields": [{"choices": "", "field_type": "singleline", "sort_order": 0, "pk": 1, "label": "Name", "default_value": "", "help_text": "", "required": true, "page": 12}, {"choices": "", "field_type": "email", "sort_order": 1, "pk": 2, "label": "Email", "default_value": "", "help_text": "", "required": true, "page": 12}, {"choices": "", "field_type": "multiline", "sort_order": 2, "pk": 3, "label": "Message", "default_value": "", "help_text": "", "required": true, "page": 12}], "from_address": "noreply@michaelyin.info", "expire_at": null, "show_in_menus": true, "owner": 1, "has_unpublished_changes": false, "slug": "contact", "numchild": 0, "depth": 4, "thank_you_text": "<p>Thanks for your message, we will contact you ASAP.</p>", "search_description": "", "expired": false, "live": true, "latest_revision_created_at": "2018-06-14T03:06:37.828Z"}	\N	12	1	2018-06-20 06:21:55.033899+00
7	f	{"pk": 4, "path": "000100010001", "depth": 3, "numchild": 5, "title": "NDMA Blog", "draft_title": "Wagtail Blog Demo", "slug": "blog", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/", "owner": 1, "seo_title": "Wagtail Blog Demo", "show_in_menus": true, "search_description": "Wagtail Blog Demo", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-06-24T01:31:12.387Z", "last_published_at": "2018-03-31T13:13:22.485Z", "latest_revision_created_at": "2018-03-31T13:13:22.468Z", "live_revision": 1, "description": "NDMA Blog Demo"}	\N	4	1	2020-07-10 02:29:32.024218+00
8	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "Welcome", "draft_title": "Welcome", "slug": "welcome", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/welcome/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2018-03-31T13:31:30.319Z", "latest_revision_created_at": "2018-03-31T13:31:30.297Z", "live_revision": 3, "body": "This Wagtail Blog Demo is a live version of [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog), which is develoepd exclusivey for my [Wagtail Blog Tutorial](https://blog.michaelyin.info/wagtail-tutorials/?utm_source=github&utm_medium=website&utm_campaign=wagtail_demo). You can also get it using commandes below.\\r\\n\\r\\n## Main features of Wagtail tutorial series:\\r\\n\\r\\n1. I will **teach you how to create a standard blog from scratch**, I will add standard CMS features to blog step by step. In the end, you will see a real blog which has nearly all features of standard CMS.\\r\\n\\r\\n2. Many tutorials indeed have code snippets, but it takes much time for newbie developer to make it run on his own projects, so in this WagtailCMS tutorial series, I created a GitHub project [wagtail_tuto](https://github.com/michael-yin/wagtail_tuto.git) hosting the source code of blog I created in tutorials. You can checkout the different commits to get started as you like. For example, if you only want to test how to add tags and category support to wagtail blog, you can `git checkout 50915b3` to make the env, source files setup, then copy code from tutorials and paste them into your project. If you have trouble in this process, `git checkout 070d8de` to see the final result which helps you troubleshoot.\\r\\n\\r\\n## Table of Contents:\\r\\n\\r\\n* [Python CMS Framework Review: wagtail vs django-cms](https://blog.michaelyin.info/2017/06/19/python-cms-framework-review-wagtail-vs-django-cms/) You might want to know the difference between Wagtail and Django-CMS, the two most popular CMS framework in Python world. That is why I wrote this blog post to help people like me to make a good choice.\\r\\n* [Wagtail Tutorial #1: Create Wagtail Project](https://blog.michaelyin.info/2017/06/23/wagtail-tutorials-building-blog-part-1/) Show you how to create a wagtail project and help you understand its main components. \\r\\n* [Wagtail Tutorial #2: Create Data Model](https://blog.michaelyin.info/2017/06/25/wagtail-tutorials-building-blog-part-2/) Teach you how to create the data model, clarify the workflow, and create template to render content.\\r\\n* [Wagtail Tutorial #3: Category And Tag Support](https://blog.michaelyin.info/2017/06/26/wagtail-tutorials-building-blog-part-3/) Help you add category and tag support to post page as standard CMS does.\\r\\n* [Wagtail Tutorial #4: Routable Page](https://blog.michaelyin.info/2017/06/30/wagtail-tutorials-routable-page/) Show you how to use RoutablePageMixin to make blog app routable, so it can handle sub-URLs like category and tag links.\\r\\n* [Wagtail Tutorial #5: Customize Blog Post URL](https://blog.michaelyin.info/2017/07/04/wagtail-tutorials-5-customize-blog-post-url/) Teach you how to customize the permanent link of post page, and how to reverse the blog post link in the template..\\r\\n* [Wagtail Tutorial #6: Import Theme Into Wagtail Blog](https://blog.michaelyin.info/2017/07/06/wagtail-tutorials-6-import-theme-wagtail-blog/) Explain how to quickly import an existing theme into wagtail blog to make our blog look more decent.\\r\\n* [Wagtail Tutorial #7: Add Search Function](https://blog.michaelyin.info/2017/07/11/wagtail-tutorials-7-add-search-function-wagtail-blog/) Teach you how to add search function in wagtail blog so the user can filter the posts through the keywords.\\r\\n* [Wagtail Tutorial #8: Add Markdown Support](https://blog.michaelyin.info/2017/07/27/wagtail-tutorials-8-add-markdown-support/) I will show you how to add Markdown support to our wagtail blog\\r\\n* [Wagtail Tutorial #9: Add LaTeX Support & Code Highlight In Wagtail](https://blog.michaelyin.info/2017/08/02/wagtail-tutorials-9-add-latex-support-code-highlight-wagtail/) In this tutorial, I will talk about how to add LaTeX support and code highlight support in our wagtail blog application.\\r\\n* [Wagtail Tutorial #10: Add Comment Support In Wagtail Blog](https://blog.michaelyin.info/2017/10/23/wagtail-tutorials-10-add-comment-support-wagtail-blog/) In this chapter, I will talk about how to add comment support to our Wagtail Blog.\\r\\n* [Wagtail Tutorial #11: How to use StreamField in Wagtail](https://blog.michaelyin.info/2017/12/25/how-use-streamfield-wagtail/) I will talk about the StreamField feature of Wagtail in detail and I must say StreamField is one of the most amazing features in Wagtail.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 19, "post_tags": [{"pk": null, "tag": 4, "content_object": 9}, {"pk": null, "tag": 5, "content_object": 9}], "categories": []}	\N	9	1	2020-07-10 02:35:48.099162+00
9	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "Welcome", "draft_title": "Welcome", "slug": "welcome", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/welcome/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2020-07-10T04:35:48.146Z", "latest_revision_created_at": "2020-07-10T04:35:48.099Z", "live_revision": 8, "body": "This NDMA Blog Demo is a live version of [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog), which is develoepd exclusivey for NDMA Gambia. You can also get it using commandes below.\\r\\n\\r\\n## Main features of Wagtail tutorial series:\\r\\n\\r\\n1. I will **teach you how to create a standard blog from scratch**, I will add standard CMS features to blog step by step. In the end, you will see a real blog which has nearly all features of standard CMS.\\r\\n\\r\\n2. Many tutorials indeed have code snippets, but it takes much time for newbie developer to make it run on his own projects, so in this WagtailCMS tutorial series, I created a GitHub project [wagtail_tuto](https://github.com/michael-yin/wagtail_tuto.git) hosting the source code of blog I created in tutorials. You can checkout the different commits to get started as you like. For example, if you only want to test how to add tags and category support to wagtail blog, you can `git checkout 50915b3` to make the env, source files setup, then copy code from tutorials and paste them into your project. If you have trouble in this process, `git checkout 070d8de` to see the final result which helps you troubleshoot.\\r\\n\\r\\n## Table of Contents:\\r\\n\\r\\n* [Python CMS Framework Review: wagtail vs django-cms](https://blog.michaelyin.info/2017/06/19/python-cms-framework-review-wagtail-vs-django-cms/) You might want to know the difference between Wagtail and Django-CMS, the two most popular CMS framework in Python world. That is why I wrote this blog post to help people like me to make a good choice.\\r\\n* [Wagtail Tutorial #1: Create Wagtail Project](https://blog.michaelyin.info/2017/06/23/wagtail-tutorials-building-blog-part-1/) Show you how to create a wagtail project and help you understand its main components. \\r\\n* [Wagtail Tutorial #2: Create Data Model](https://blog.michaelyin.info/2017/06/25/wagtail-tutorials-building-blog-part-2/) Teach you how to create the data model, clarify the workflow, and create template to render content.\\r\\n* [Wagtail Tutorial #3: Category And Tag Support](https://blog.michaelyin.info/2017/06/26/wagtail-tutorials-building-blog-part-3/) Help you add category and tag support to post page as standard CMS does.\\r\\n* [Wagtail Tutorial #4: Routable Page](https://blog.michaelyin.info/2017/06/30/wagtail-tutorials-routable-page/) Show you how to use RoutablePageMixin to make blog app routable, so it can handle sub-URLs like category and tag links.\\r\\n* [Wagtail Tutorial #5: Customize Blog Post URL](https://blog.michaelyin.info/2017/07/04/wagtail-tutorials-5-customize-blog-post-url/) Teach you how to customize the permanent link of post page, and how to reverse the blog post link in the template..\\r\\n* [Wagtail Tutorial #6: Import Theme Into Wagtail Blog](https://blog.michaelyin.info/2017/07/06/wagtail-tutorials-6-import-theme-wagtail-blog/) Explain how to quickly import an existing theme into wagtail blog to make our blog look more decent.\\r\\n* [Wagtail Tutorial #7: Add Search Function](https://blog.michaelyin.info/2017/07/11/wagtail-tutorials-7-add-search-function-wagtail-blog/) Teach you how to add search function in wagtail blog so the user can filter the posts through the keywords.\\r\\n* [Wagtail Tutorial #8: Add Markdown Support](https://blog.michaelyin.info/2017/07/27/wagtail-tutorials-8-add-markdown-support/) I will show you how to add Markdown support to our wagtail blog\\r\\n* [Wagtail Tutorial #9: Add LaTeX Support & Code Highlight In Wagtail](https://blog.michaelyin.info/2017/08/02/wagtail-tutorials-9-add-latex-support-code-highlight-wagtail/) In this tutorial, I will talk about how to add LaTeX support and code highlight support in our wagtail blog application.\\r\\n* [Wagtail Tutorial #10: Add Comment Support In Wagtail Blog](https://blog.michaelyin.info/2017/10/23/wagtail-tutorials-10-add-comment-support-wagtail-blog/) In this chapter, I will talk about how to add comment support to our Wagtail Blog.\\r\\n* [Wagtail Tutorial #11: How to use StreamField in Wagtail](https://blog.michaelyin.info/2017/12/25/how-use-streamfield-wagtail/) I will talk about the StreamField feature of Wagtail in detail and I must say StreamField is one of the most amazing features in Wagtail.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 19, "post_tags": [{"pk": null, "tag": 4, "content_object": 9}, {"pk": null, "tag": 5, "content_object": 9}], "categories": []}	\N	9	1	2020-07-10 02:37:50.968131+00
10	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "Welcome", "draft_title": "Welcome", "slug": "welcome", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/welcome/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2020-07-10T04:37:51.027Z", "latest_revision_created_at": "2020-07-10T04:37:50.968Z", "live_revision": 9, "body": "This NDMA Blog Demo is a live version of [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog), which is develoepd exclusivey for NDMA Gambia. You can also get it using commandes below.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 19, "post_tags": [], "categories": []}	\N	9	1	2020-07-10 02:55:44.858941+00
11	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "New state of public emergency declared", "draft_title": "Welcome", "slug": "welcome", "content_type": 27, "live": true, "has_unpublished_changes": true, "url_path": "/home/blog/welcome/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2020-07-10T04:37:51.027Z", "latest_revision_created_at": "2020-07-10T04:55:44.858Z", "live_revision": 9, "body": "State House, Banjul, 7th July 2020 \\u2013 In exercise of the powers conferred on him by section 34(6) of the 1997 Constitution, His Excellency, Adama Barrow, president of the Republic of The Gambia has declared a State of Public Emergency in the whole country. The declaration shall last for a period of seven days, pursuant to section 34(2) with effect from 8th July 2020. \\r\\n\\r\\nThe public is reminded that the COVID -19 Emergency Regulations issued under the Emergency Powers Act shall continue to apply during the period of the State of Public Emergency.  \\r\\n\\r\\nFurthermore, the public is advised to take all precautionary measures to protect themselves and curb the spread of COVID-19, while the experts continue to monitor and assess the situation.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 20, "post_tags": [], "categories": []}	\N	9	1	2020-07-10 03:01:46.434413+00
12	f	{"pk": 11, "path": "0001000100010007", "depth": 4, "numchild": 0, "title": "Latex & Code Sample", "draft_title": "Latex & Code Sample", "slug": "latex-code-sample", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/latex-code-sample/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T09:08:58.279Z", "last_published_at": null, "latest_revision_created_at": "2018-01-30T14:17:25.710Z", "live_revision": null, "body": "One of the country\\u2019s giant GSM operators, Africell has donated D12,000,000 to Gambia\\u2019s effort to contain and defeat the covid-19 pandemic.\\r\\n\\r\\nThe funds will be distributed over the next three months directly via Afrimoney to front-line health workers, whose courage and hard work in these difficult circumstances is helping to keep Gambians healthy and safe, according to news release from the GSM operator.\\r\\n\\r\\n\\u201cThe payments will supplement the normal wages of these front-line workers, giving them the financial security needed to support themselves and their families at a time of significantly increased risk.\\u201d\\r\\n\\r\\n\\u201cAll eligible Doctors will receive D2,000 per month while nurses and all other front-line staff will receive D1,000 per month. The scheme is currently scheduled to last for three months.\\u201d\\r\\n\\r\\nCommenting on the donation, CEO of Africell Gambia, Alieu Badara Mbye said: \\u201cFor Africell, contributing to the campaign against Covid-19 is a duty, not an option. We are stronger together. Africell is committed to standing shoulder-to-shoulder with the government and the people of Gambia as we take on this challenge. Our donation to Gambia\\u2019s heroic front-line health workers is a token of our admiration and gratitude to front-line health workers for the risks they take and the hard work they put into keeping the rest of us safe.\\u201d\\r\\n\\r\\n\\u201cTogether we can Break the Chain & Stop the Spread of covid-19. Stay Safe!\\u201d", "date": "2018-01-30T09:08:00Z", "excerpt": "Check this page for detail about Latex and Code highlight.", "header_image": 21, "post_tags": [], "categories": []}	\N	11	1	2020-07-10 03:05:40.967724+00
13	f	{"pk": 11, "path": "0001000100010007", "depth": 4, "numchild": 0, "title": "Africell donates D12m to fight covid-19", "draft_title": "Latex & Code Sample", "slug": "latex-code-sample", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/latex-code-sample/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T09:08:58.279Z", "last_published_at": "2020-07-10T05:05:41.011Z", "latest_revision_created_at": "2020-07-10T05:05:40.967Z", "live_revision": 12, "body": "One of the country\\u2019s giant GSM operators, Africell has donated D12,000,000 to Gambia\\u2019s effort to contain and defeat the covid-19 pandemic.\\r\\n\\r\\nThe funds will be distributed over the next three months directly via Afrimoney to front-line health workers, whose courage and hard work in these difficult circumstances is helping to keep Gambians healthy and safe, according to news release from the GSM operator.\\r\\n\\r\\n\\u201cThe payments will supplement the normal wages of these front-line workers, giving them the financial security needed to support themselves and their families at a time of significantly increased risk.\\u201d\\r\\n\\r\\n\\u201cAll eligible Doctors will receive D2,000 per month while nurses and all other front-line staff will receive D1,000 per month. The scheme is currently scheduled to last for three months.\\u201d\\r\\n\\r\\nCommenting on the donation, CEO of Africell Gambia, Alieu Badara Mbye said: \\u201cFor Africell, contributing to the campaign against Covid-19 is a duty, not an option. We are stronger together. Africell is committed to standing shoulder-to-shoulder with the government and the people of Gambia as we take on this challenge. Our donation to Gambia\\u2019s heroic front-line health workers is a token of our admiration and gratitude to front-line health workers for the risks they take and the hard work they put into keeping the rest of us safe.\\u201d\\r\\n\\r\\n\\u201cTogether we can Break the Chain & Stop the Spread of covid-19. Stay Safe!\\u201d", "date": "2018-01-30T09:08:00Z", "excerpt": "Check this page for detail about Latex and Code highlight.", "header_image": 21, "post_tags": [], "categories": []}	\N	11	1	2020-07-10 03:06:08.92699+00
14	f	{"pk": 10, "path": "0001000100010006", "depth": 4, "numchild": 0, "title": "Senegal confirms 69 new covid-19 cases", "draft_title": "Senegal confirms 69 new covid-19 cases", "slug": "markdown-support", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/markdown-support/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:09:09.707Z", "last_published_at": null, "latest_revision_created_at": "2018-01-30T14:17:02.038Z", "live_revision": null, "body": "The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country\\u2019s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.", "date": "2018-01-30T08:09:00Z", "excerpt": "Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.", "header_image": 22, "post_tags": [{"pk": null, "tag": 6, "content_object": 10}], "categories": []}	\N	10	1	2020-07-10 03:08:02.786696+00
15	f	{"pk": 10, "path": "0001000100010006", "depth": 4, "numchild": 0, "title": "Senegal confirms 69 new covid-19 cases", "draft_title": "Senegal confirms 69 new covid-19 cases", "slug": "markdown-support", "content_type": 27, "live": true, "has_unpublished_changes": true, "url_path": "/home/blog/markdown-support/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:09:09.707Z", "last_published_at": null, "latest_revision_created_at": "2020-07-10T05:08:02.786Z", "live_revision": null, "body": "The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country\\u2019s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.", "date": "2018-01-30T08:09:00Z", "excerpt": "Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.", "header_image": 22, "post_tags": [{"pk": null, "tag": 6, "content_object": 10}], "categories": []}	\N	10	1	2020-07-10 03:08:08.267791+00
16	f	{"pk": 10, "path": "0001000100010006", "depth": 4, "numchild": 0, "title": "Senegal confirms 69 new covid-19 cases", "draft_title": "Senegal confirms 69 new covid-19 cases", "slug": "markdown-support", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/markdown-support/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:09:09.707Z", "last_published_at": "2020-07-10T05:08:08.295Z", "latest_revision_created_at": "2020-07-10T05:08:08.267Z", "live_revision": 15, "body": "The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country\\u2019s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.", "date": "2018-01-30T08:09:00Z", "excerpt": "Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.", "header_image": 22, "post_tags": [], "categories": [2]}	\N	10	1	2020-07-10 03:08:58.730741+00
17	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "New state of public emergency declared", "draft_title": "New state of public emergency declared", "slug": "post1", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/welcome/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2020-07-10T05:01:46.465Z", "latest_revision_created_at": "2020-07-10T05:01:46.434Z", "live_revision": 11, "body": "State House, Banjul, 7th July 2020 \\u2013 In exercise of the powers conferred on him by section 34(6) of the 1997 Constitution, His Excellency, Adama Barrow, president of the Republic of The Gambia has declared a State of Public Emergency in the whole country. The declaration shall last for a period of seven days, pursuant to section 34(2) with effect from 8th July 2020. \\r\\n\\r\\nThe public is reminded that the COVID -19 Emergency Regulations issued under the Emergency Powers Act shall continue to apply during the period of the State of Public Emergency.  \\r\\n\\r\\nFurthermore, the public is advised to take all precautionary measures to protect themselves and curb the spread of COVID-19, while the experts continue to monitor and assess the situation.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 20, "post_tags": [], "categories": []}	\N	9	1	2020-07-10 03:09:46.815715+00
18	f	{"pk": 9, "path": "0001000100010005", "depth": 4, "numchild": 0, "title": "New state of public emergency declared", "draft_title": "New state of public emergency declared", "slug": "post1", "content_type": 27, "live": true, "has_unpublished_changes": true, "url_path": "/home/blog/post1/", "owner": 1, "seo_title": "", "show_in_menus": true, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:05:53.204Z", "last_published_at": "2020-07-10T05:01:46.465Z", "latest_revision_created_at": "2020-07-10T05:09:46.815Z", "live_revision": 11, "body": "State House, Banjul, 7th July 2020 \\u2013 In exercise of the powers conferred on him by section 34(6) of the 1997 Constitution, His Excellency, Adama Barrow, president of the Republic of The Gambia has declared a State of Public Emergency in the whole country. The declaration shall last for a period of seven days, pursuant to section 34(2) with effect from 8th July 2020. \\r\\n\\r\\nThe public is reminded that the COVID -19 Emergency Regulations issued under the Emergency Powers Act shall continue to apply during the period of the State of Public Emergency.  \\r\\n\\r\\nFurthermore, the public is advised to take all precautionary measures to protect themselves and curb the spread of COVID-19, while the experts continue to monitor and assess the situation.", "date": "2018-01-30T19:00:00Z", "excerpt": "", "header_image": 19, "post_tags": [], "categories": []}	\N	9	1	2020-07-10 03:10:00.100392+00
19	f	{"pk": 4, "path": "000100010001", "depth": 3, "numchild": 5, "title": "NDMA Blog", "draft_title": "NDMA Blog", "slug": "blog", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/", "owner": 1, "seo_title": "NDMA Blog", "show_in_menus": true, "search_description": "NDMA Blog", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-06-24T01:31:12.387Z", "last_published_at": "2020-07-10T04:29:32.060Z", "latest_revision_created_at": "2020-07-10T04:29:32.024Z", "live_revision": 7, "description": "NDMA Blog Demo"}	\N	4	1	2020-07-10 03:20:47.96767+00
20	f	{"pk": 10, "path": "0001000100010006", "depth": 4, "numchild": 0, "title": "Senegal confirms 69 new covid-19 cases", "draft_title": "Senegal confirms 69 new covid-19 cases", "slug": "post2", "content_type": 27, "live": true, "has_unpublished_changes": false, "url_path": "/home/blog/markdown-support/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:09:09.707Z", "last_published_at": "2020-07-10T05:08:58.768Z", "latest_revision_created_at": "2020-07-10T05:08:58.730Z", "live_revision": 16, "body": "The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country\\u2019s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.", "date": "2018-01-30T08:09:00Z", "excerpt": "Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.", "header_image": 22, "post_tags": [], "categories": [2]}	\N	10	1	2020-07-10 04:57:15.220523+00
21	f	{"pk": 10, "path": "0001000100010006", "depth": 4, "numchild": 0, "title": "Senegal confirms 69 new covid-19 cases", "draft_title": "Senegal confirms 69 new covid-19 cases", "slug": "post2", "content_type": 27, "live": true, "has_unpublished_changes": true, "url_path": "/home/blog/post2/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2018-01-30T08:09:09.707Z", "last_published_at": "2020-07-10T05:08:58.768Z", "latest_revision_created_at": "2020-07-10T06:57:15.220Z", "live_revision": 16, "body": "The Senegalese Ministry of Health yesterday reported 69 new positive cases of covid-19, bringing the country\\u2019s total number of infections to 7,547; 5,023 recovered, 137 deaths and 2,386 under treatment.", "date": "2018-01-30T08:09:00Z", "excerpt": "Markdown is supported in [wagtail-bootstrap-blog](https://github.com/michael-yin/wagtail-bootstrap-blog.git), you can check this page for more detail.", "header_image": 22, "post_tags": [], "categories": [2]}	\N	10	1	2020-07-10 05:01:31.068321+00
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_pageviewrestriction (id, page_id, restriction_type, password) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
2	localhost	80	t	3	NDMA Blog
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailforms_formsubmission (id, form_data, page_id, submit_time) FROM stdin;
4	{"message": "Hello World!", "name": "MichaelYin", "email": "contact@gmail.com"}	12	2018-06-14 07:22:52.173089+00
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
1	wagtail-tutorials-list.png	original_images/wagtail-tutorials-list.png	1200	675	2017-06-29 00:07:04.143+00	\N	\N	\N	\N	1	29109	1	
2	wagtail-tutorials-3.png	original_images/wagtail-tutorials-3.png	1200	675	2017-06-29 00:07:16.732+00	\N	\N	\N	\N	1	26687	1	
3	wagtail-django.jpg	original_images/wagtail-django.jpg	1125	634	2017-06-29 00:07:29.634+00	\N	\N	\N	\N	1	149647	1	
5	alex-knight-232959.jpg	original_images/alex-knight-232959.jpg	4896	3264	2017-06-29 02:04:14.171+00	\N	\N	\N	\N	1	2984202	1	
6	Wagtail Tutorial	original_images/2017108f21dc4dc385a76a_trim.original.png	184	259	2017-12-23 12:41:40.88+00	\N	\N	\N	\N	1	21045	1	
8	wagtail-blog-header.png	original_images/wagtail-blog-header.png	1200	676	2018-01-30 12:46:09.391+00	\N	\N	\N	\N	1	1834111	1	
9	wagtail-markdown-header.png	original_images/wagtail-markdown-header.png	1200	676	2018-01-30 12:51:49.296+00	\N	\N	\N	\N	1	208670	1	
12	wagtail-computer.png	original_images/wagtail-computer.png	1200	676	2018-01-30 13:06:53.851+00	\N	\N	\N	\N	1	633731	1	
14	wagtail-code-highlight.png	original_images/wagtail-code-highlight.png	1200	676	2018-01-30 13:06:54.088+00	\N	\N	\N	\N	1	1336458	1	
16	pexels-photo-106606.jpeg	original_images/pexels-photo-106606.jpeg	1280	875	2018-01-30 13:10:42.89+00	\N	\N	\N	\N	1	280943	1	
17	pexels-photo-93820.jpeg	original_images/pexels-photo-93820_1.jpeg	1280	853	2018-01-30 13:10:42.956+00	\N	\N	\N	\N	1	122649	1	
18	pexels-photo-417173.jpeg	original_images/pexels-photo-417173_1.jpeg	1280	853	2018-01-30 13:12:20.781+00	\N	\N	\N	\N	1	213242	1	
19	gambia-people	original_images/advice-gambia.jpg	900	469	2020-07-10 02:34:20.84384+00	\N	\N	\N	\N	1	\N	1	
20	barrow3	original_images/barrow-3-d__ScaleMaxWidthWzcwMF0.jpg	480	345	2020-07-10 03:01:40.65319+00	\N	\N	\N	\N	1	\N	1	
21	africell-donates	original_images/Africell-donates__ScaleMaxWidthWzcwMF0.jpg	450	227	2020-07-10 03:05:16.428377+00	\N	\N	\N	\N	1	\N	1	
22	covid-19	original_images/Covid-19__ScaleMaxWidthWzcwMF0.jpg	450	299	2020-07-10 03:07:30.209011+00	\N	\N	\N	\N	1	\N	1	
23	The Gambia.jpg	original_images/The_Gambia.jpg	980	190	2020-07-10 03:52:10.751201+00	\N	\N	\N	\N	1	100798	1	
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, image_id, filter_spec) FROM stdin;
1	images/wagtail-tutorials-list.max-165x165.png	165	92		1	max-165x165
2	images/wagtail-django.max-165x165.jpg	165	92		3	max-165x165
3	images/wagtail-tutorials-3.max-165x165.png	165	92		2	max-165x165
4	images/wagtail-tutorials-list.original.png	1200	675		1	original
5	images/wagtail-django.original.jpg	1125	634		3	original
6	images/alex-knight-232959.max-165x165.jpg	165	110		5	max-165x165
7	images/alex-knight-232959.original.jpg	4896	3264		5	original
8	images/2017108f21dc4dc385a76a_trim.original.max-165x165.png	117	165		6	max-165x165
9	images/2017108f21dc4dc385a76a_trim.original.original.png	184	259		6	original
10	images/2017108f21dc4dc385a76a_trim.original.max-800x600.png	184	259		6	max-800x600
11	images/2017108f21dc4dc385a76a_trim.original.width-900.png	184	259		6	width-900
15	images/wagtail-blog-header.max-165x165.png	165	92		8	max-165x165
16	images/wagtail-blog-header.original.png	1200	676		8	original
17	images/wagtail-markdown-header.max-165x165.png	165	92		9	max-165x165
18	images/wagtail-markdown-header.original.png	1200	676		9	original
19	images/wagtail-markdown-header.max-800x600.png	800	450		9	max-800x600
20	images/wagtail-code-highlight.max-165x165.png	165	92		14	max-165x165
21	images/wagtail-computer.max-165x165.png	165	92		12	max-165x165
23	images/wagtail-code-highlight.original.png	1200	676		14	original
24	images/wagtail-computer.original.png	1200	676		12	original
26	images/pexels-photo-93820_1.max-165x165.jpg	165	109		17	max-165x165
27	images/pexels-photo-106606.max-165x165.jpg	165	112		16	max-165x165
28	images/pexels-photo-93820_1.original.jpg	1280	853		17	original
29	images/pexels-photo-106606.original.jpg	1280	875		16	original
31	images/pexels-photo-417173_1.max-165x165.jpg	165	109		18	max-165x165
32	images/pexels-photo-417173_1.original.jpg	1280	853		18	original
33	images/advice-gambia.max-165x165.jpg	165	85		19	max-165x165
34	images/advice-gambia.original.jpg	900	469		19	original
35	images/barrow-3-d__ScaleMaxWidthWzcwMF0.max-165x165.jpg	165	118		20	max-165x165
36	images/barrow-3-d__ScaleMaxWidthWzcwMF0.original.jpg	480	345		20	original
37	images/Africell-donates__ScaleMaxWidthWzcwMF0.max-165x165.jpg	165	83		21	max-165x165
38	images/Covid-19__ScaleMaxWidthWzcwMF0.max-165x165.jpg	165	109		22	max-165x165
39	images/Africell-donates__ScaleMaxWidthWzcwMF0.original.jpg	450	227		21	original
40	images/Covid-19__ScaleMaxWidthWzcwMF0.original.jpg	450	299		22	original
41	images/The_Gambia.max-165x165.jpg	165	31		23	max-165x165
42	images/The_Gambia.original.jpg	980	190		23	original
43	images/The_Gambia.max-800x600.jpg	800	155		23	max-800x600
\.


--
-- Data for Name: wagtailmenus_flatmenu; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailmenus_flatmenu (id, title, handle, heading, max_levels, use_specific, site_id) FROM stdin;
\.


--
-- Data for Name: wagtailmenus_flatmenuitem; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailmenus_flatmenuitem (id, sort_order, link_url, link_page_id, menu_id, url_append, allow_subnav, handle, link_text) FROM stdin;
\.


--
-- Data for Name: wagtailmenus_mainmenu; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailmenus_mainmenu (id, max_levels, use_specific, site_id) FROM stdin;
1	3	1	2
\.


--
-- Data for Name: wagtailmenus_mainmenuitem; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailmenus_mainmenuitem (id, sort_order, link_url, link_page_id, menu_id, allow_subnav, url_append, handle, link_text) FROM stdin;
4	2	http://ndma-dashboard.herokuapp.com	\N	1	t			Dashboard
5	3	\N	12	1	t			Contact
6	0	\N	4	1	t			Blog
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_page_id, site_id, redirect_link) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, query_id, page_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: bumfresh
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 115, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.blog_blogcategory_id_seq', 4, true);


--
-- Name: blog_blogpagetag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.blog_blogpagetag_id_seq', 1, true);


--
-- Name: blog_formfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.blog_formfield_id_seq', 3, true);


--
-- Name: blog_postpage_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.blog_postpage_categories_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 40, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 143, true);


--
-- Name: home_copywritingsettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.home_copywritingsettings_id_seq', 1, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 3, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, true);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 12, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 21, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, true);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, true);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, true);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 4, true);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 23, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 43, true);


--
-- Name: wagtailmenus_flatmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailmenus_flatmenu_id_seq', 1, true);


--
-- Name: wagtailmenus_flatmenuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailmenus_flatmenuitem_id_seq', 1, true);


--
-- Name: wagtailmenus_mainmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailmenus_mainmenu_id_seq', 1, true);


--
-- Name: wagtailmenus_mainmenuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailmenus_mainmenuitem_id_seq', 6, true);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, true);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, true);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, true);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, true);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bumfresh
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 1, true);


--
-- Name: django_migrations idx_17218_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_17218_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_17227_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_17227_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_17236_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_17236_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_17242_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_17242_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_17248_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_17248_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_17254_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_17254_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_17263_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_17263_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_17272_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_17272_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_17279_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_17279_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: taggit_tag idx_17287_taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT idx_17287_taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_taggeditem idx_17296_taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT idx_17296_taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site idx_17302_wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT idx_17302_wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection idx_17311_wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT idx_17311_wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission idx_17320_wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT idx_17320_wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision idx_17326_wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT idx_17326_wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction idx_17335_wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT idx_17335_wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission idx_17344_wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT idx_17344_wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction idx_17353_wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT idx_17353_wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups idx_17362_wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT idx_17362_wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups idx_17368_wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT idx_17368_wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page idx_17374_wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT idx_17374_wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed idx_17383_wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT idx_17383_wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailforms_formsubmission idx_17392_wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT idx_17392_wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition idx_17401_wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT idx_17401_wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query idx_17410_wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT idx_17410_wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits idx_17419_wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT idx_17419_wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick idx_17425_wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT idx_17425_wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: blog_blogcategory idx_17434_blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogcategory
    ADD CONSTRAINT idx_17434_blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpage idx_17441_blog_blogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpage
    ADD CONSTRAINT idx_17441_blog_blogpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_landingpage idx_17447_blog_landingpage_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_landingpage
    ADD CONSTRAINT idx_17447_blog_landingpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_postpage_categories idx_17455_blog_postpage_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage_categories
    ADD CONSTRAINT idx_17455_blog_postpage_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_postpage idx_17459_blog_postpage_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage
    ADD CONSTRAINT idx_17459_blog_postpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_blogpagetag idx_17467_blog_blogpagetag_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpagetag
    ADD CONSTRAINT idx_17467_blog_blogpagetag_pkey PRIMARY KEY (id);


--
-- Name: home_homepage idx_17471_home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT idx_17471_home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: wagtailmenus_flatmenu idx_17476_wagtailmenus_flatmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenu
    ADD CONSTRAINT idx_17476_wagtailmenus_flatmenu_pkey PRIMARY KEY (id);


--
-- Name: wagtailmenus_flatmenuitem idx_17485_wagtailmenus_flatmenuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenuitem
    ADD CONSTRAINT idx_17485_wagtailmenus_flatmenuitem_pkey PRIMARY KEY (id);


--
-- Name: wagtailmenus_mainmenu idx_17494_wagtailmenus_mainmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenu
    ADD CONSTRAINT idx_17494_wagtailmenus_mainmenu_pkey PRIMARY KEY (id);


--
-- Name: wagtailmenus_mainmenuitem idx_17500_wagtailmenus_mainmenuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenuitem
    ADD CONSTRAINT idx_17500_wagtailmenus_mainmenuitem_pkey PRIMARY KEY (id);


--
-- Name: blog_formpage idx_17507_blog_formpage_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_formpage
    ADD CONSTRAINT idx_17507_blog_formpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_formfield idx_17515_blog_formfield_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_formfield
    ADD CONSTRAINT idx_17515_blog_formfield_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_17524_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_17524_auth_user_pkey PRIMARY KEY (id);


--
-- Name: home_copywritingsettings idx_17533_home_copywritingsettings_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.home_copywritingsettings
    ADD CONSTRAINT idx_17533_home_copywritingsettings_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document idx_17542_wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT idx_17542_wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image idx_17551_wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT idx_17551_wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect idx_17560_wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT idx_17560_wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile idx_17569_wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT idx_17569_wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: idx_17227_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17227_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_17236_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17236_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_17236_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17236_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_17236_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17236_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_17242_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17242_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_17242_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17242_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_17242_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17242_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_17248_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17248_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_17248_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17248_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_17248_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17248_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_17254_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17254_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_17254_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17254_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_17263_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17263_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_17272_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17272_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_17272_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17272_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_17279_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17279_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_17287_sqlite_autoindex_taggit_tag_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17287_sqlite_autoindex_taggit_tag_1 ON public.taggit_tag USING btree (name);


--
-- Name: idx_17287_sqlite_autoindex_taggit_tag_2; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17287_sqlite_autoindex_taggit_tag_2 ON public.taggit_tag USING btree (slug);


--
-- Name: idx_17296_taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17296_taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: idx_17296_taggit_taggeditem_content_type_id_object_id_196cc965_; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17296_taggit_taggeditem_content_type_id_object_id_196cc965_ ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: idx_17296_taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17296_taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: idx_17296_taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17296_taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: idx_17302_wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17302_wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: idx_17302_wagtailcore_site_hostname_port_2c626d70_uniq; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17302_wagtailcore_site_hostname_port_2c626d70_uniq ON public.wagtailcore_site USING btree (hostname, port);


--
-- Name: idx_17302_wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17302_wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: idx_17311_sqlite_autoindex_wagtailcore_collection_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17311_sqlite_autoindex_wagtailcore_collection_1 ON public.wagtailcore_collection USING btree (path);


--
-- Name: idx_17320_wagtailcore_groupcollectionpermission_collection_id_5; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17320_wagtailcore_groupcollectionpermission_collection_id_5 ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: idx_17320_wagtailcore_groupcollectionpermission_group_id_05d614; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17320_wagtailcore_groupcollectionpermission_group_id_05d614 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: idx_17320_wagtailcore_groupcollectionpermission_group_id_collec; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17320_wagtailcore_groupcollectionpermission_group_id_collec ON public.wagtailcore_groupcollectionpermission USING btree (group_id, collection_id, permission_id);


--
-- Name: idx_17320_wagtailcore_groupcollectionpermission_permission_id_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17320_wagtailcore_groupcollectionpermission_permission_id_1 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: idx_17326_wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17326_wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: idx_17326_wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17326_wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: idx_17326_wagtailcore_pagerevision_submitted_for_moderation_c68; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17326_wagtailcore_pagerevision_submitted_for_moderation_c68 ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: idx_17326_wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17326_wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: idx_17335_wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17335_wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: idx_17344_wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17344_wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: idx_17344_wagtailcore_grouppagepermission_group_id_page_id_perm; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17344_wagtailcore_grouppagepermission_group_id_page_id_perm ON public.wagtailcore_grouppagepermission USING btree (group_id, page_id, permission_type);


--
-- Name: idx_17344_wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17344_wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: idx_17353_wagtailcore_collectionviewrestriction_collection_id_7; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17353_wagtailcore_collectionviewrestriction_collection_id_7 ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: idx_17362_wagtailcore_collectionviewrestriction_groups_collecti; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17362_wagtailcore_collectionviewrestriction_groups_collecti ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id, group_id);


--
-- Name: idx_17362_wagtailcore_collectionviewrestriction_groups_group_id; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17362_wagtailcore_collectionviewrestriction_groups_group_id ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: idx_17368_wagtailcore_pageviewrestriction_groups_group_id_6460f; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17368_wagtailcore_pageviewrestriction_groups_group_id_6460f ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: idx_17368_wagtailcore_pageviewrestriction_groups_pageviewrestri; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17368_wagtailcore_pageviewrestriction_groups_pageviewrestri ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: idx_17374_sqlite_autoindex_wagtailcore_page_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17374_sqlite_autoindex_wagtailcore_page_1 ON public.wagtailcore_page USING btree (path);


--
-- Name: idx_17374_wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17374_wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: idx_17374_wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17374_wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: idx_17374_wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17374_wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: idx_17374_wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17374_wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: idx_17374_wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17374_wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: idx_17383_wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17383_wagtailembeds_embed_url_max_width_8a2922d8_uniq ON public.wagtailembeds_embed USING btree (url, max_width);


--
-- Name: idx_17392_wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17392_wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: idx_17401_wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17401_wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: idx_17401_wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17401_wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: idx_17401_wagtailimages_rendition_image_id_filter_spec_focal_po; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17401_wagtailimages_rendition_image_id_filter_spec_focal_po ON public.wagtailimages_rendition USING btree (image_id, filter_spec, focal_point_key);


--
-- Name: idx_17410_sqlite_autoindex_wagtailsearch_query_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17410_sqlite_autoindex_wagtailsearch_query_1 ON public.wagtailsearch_query USING btree (query_string);


--
-- Name: idx_17419_wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17419_wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: idx_17419_wagtailsearch_querydailyhits_query_id_date_1dd232e6_u; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17419_wagtailsearch_querydailyhits_query_id_date_1dd232e6_u ON public.wagtailsearch_querydailyhits USING btree (query_id, date);


--
-- Name: idx_17425_wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17425_wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: idx_17425_wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17425_wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: idx_17434_sqlite_autoindex_blog_blogcategory_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17434_sqlite_autoindex_blog_blogcategory_1 ON public.blog_blogcategory USING btree (slug);


--
-- Name: idx_17459_blog_postpage_header_image_id_b6fcd5f4; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17459_blog_postpage_header_image_id_b6fcd5f4 ON public.blog_postpage USING btree (header_image_id);


--
-- Name: idx_17467_blog_blogpagetag_content_object_id_0dc644d2; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17467_blog_blogpagetag_content_object_id_0dc644d2 ON public.blog_blogpagetag USING btree (content_object_id);


--
-- Name: idx_17467_blog_blogpagetag_tag_id_81dc0e5f; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17467_blog_blogpagetag_tag_id_81dc0e5f ON public.blog_blogpagetag USING btree (tag_id);


--
-- Name: idx_17476_wagtailmenus_flatmenu_handle_fd420cad; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17476_wagtailmenus_flatmenu_handle_fd420cad ON public.wagtailmenus_flatmenu USING btree (handle);


--
-- Name: idx_17476_wagtailmenus_flatmenu_site_id_516a598d; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17476_wagtailmenus_flatmenu_site_id_516a598d ON public.wagtailmenus_flatmenu USING btree (site_id);


--
-- Name: idx_17476_wagtailmenus_flatmenu_site_id_handle_7b0cab3a_uniq; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17476_wagtailmenus_flatmenu_site_id_handle_7b0cab3a_uniq ON public.wagtailmenus_flatmenu USING btree (site_id, handle);


--
-- Name: idx_17485_wagtailmenus_flatmenuitem_link_page_id_36779c0f; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17485_wagtailmenus_flatmenuitem_link_page_id_36779c0f ON public.wagtailmenus_flatmenuitem USING btree (link_page_id);


--
-- Name: idx_17485_wagtailmenus_flatmenuitem_menu_id_757c39da; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17485_wagtailmenus_flatmenuitem_menu_id_757c39da ON public.wagtailmenus_flatmenuitem USING btree (menu_id);


--
-- Name: idx_17494_sqlite_autoindex_wagtailmenus_mainmenu_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17494_sqlite_autoindex_wagtailmenus_mainmenu_1 ON public.wagtailmenus_mainmenu USING btree (site_id);


--
-- Name: idx_17500_wagtailmenus_mainmenuitem_link_page_id_208a4a4d; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17500_wagtailmenus_mainmenuitem_link_page_id_208a4a4d ON public.wagtailmenus_mainmenuitem USING btree (link_page_id);


--
-- Name: idx_17500_wagtailmenus_mainmenuitem_menu_id_6505d4c4; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17500_wagtailmenus_mainmenuitem_menu_id_6505d4c4 ON public.wagtailmenus_mainmenuitem USING btree (menu_id);


--
-- Name: idx_17515_blog_formfield_page_id_c81ed252; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17515_blog_formfield_page_id_c81ed252 ON public.blog_formfield USING btree (page_id);


--
-- Name: idx_17524_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17524_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_17533_sqlite_autoindex_home_copywritingsettings_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17533_sqlite_autoindex_home_copywritingsettings_1 ON public.home_copywritingsettings USING btree (site_id);


--
-- Name: idx_17542_wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17542_wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: idx_17542_wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17542_wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: idx_17551_wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17551_wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: idx_17551_wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17551_wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: idx_17551_wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17551_wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: idx_17560_wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17560_wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: idx_17560_wagtailredirects_redirect_old_path_site_id_783622d7_u; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17560_wagtailredirects_redirect_old_path_site_id_783622d7_u ON public.wagtailredirects_redirect USING btree (old_path, site_id);


--
-- Name: idx_17560_wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17560_wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: idx_17560_wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE INDEX idx_17560_wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: idx_17569_sqlite_autoindex_wagtailusers_userprofile_1; Type: INDEX; Schema: public; Owner: bumfresh
--

CREATE UNIQUE INDEX idx_17569_sqlite_autoindex_wagtailusers_userprofile_1 ON public.wagtailusers_userprofile USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: blog_blogpage blog_blogpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpage
    ADD CONSTRAINT blog_blogpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: blog_blogpagetag blog_blogpagetag_content_object_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpagetag
    ADD CONSTRAINT blog_blogpagetag_content_object_id_fkey FOREIGN KEY (content_object_id) REFERENCES public.blog_postpage(page_ptr_id);


--
-- Name: blog_blogpagetag blog_blogpagetag_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_blogpagetag
    ADD CONSTRAINT blog_blogpagetag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id);


--
-- Name: blog_formfield blog_formfield_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_formfield
    ADD CONSTRAINT blog_formfield_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.blog_formpage(page_ptr_id);


--
-- Name: blog_formpage blog_formpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_formpage
    ADD CONSTRAINT blog_formpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: blog_landingpage blog_landingpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_landingpage
    ADD CONSTRAINT blog_landingpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: blog_postpage_categories blog_postpage_categories_blogcategory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage_categories
    ADD CONSTRAINT blog_postpage_categories_blogcategory_id_fkey FOREIGN KEY (blogcategory_id) REFERENCES public.blog_blogcategory(id);


--
-- Name: blog_postpage_categories blog_postpage_categories_postpage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage_categories
    ADD CONSTRAINT blog_postpage_categories_postpage_id_fkey FOREIGN KEY (postpage_id) REFERENCES public.blog_postpage(page_ptr_id);


--
-- Name: blog_postpage blog_postpage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.blog_postpage
    ADD CONSTRAINT blog_postpage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: home_copywritingsettings home_copywritingsettings_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.home_copywritingsettings
    ADD CONSTRAINT home_copywritingsettings_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id);


--
-- Name: home_homepage home_homepage_page_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_fkey FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewres_collectionviewrestriction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewres_collectionviewrestriction_id_fkey FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_fkey FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id);


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_gro_pageviewrestriction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_gro_pageviewrestriction_id_fkey FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_fkey FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id);


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_fkey FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id);


--
-- Name: wagtailmenus_flatmenu wagtailmenus_flatmenu_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenu
    ADD CONSTRAINT wagtailmenus_flatmenu_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id);


--
-- Name: wagtailmenus_flatmenuitem wagtailmenus_flatmenuitem_link_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenuitem
    ADD CONSTRAINT wagtailmenus_flatmenuitem_link_page_id_fkey FOREIGN KEY (link_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailmenus_flatmenuitem wagtailmenus_flatmenuitem_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_flatmenuitem
    ADD CONSTRAINT wagtailmenus_flatmenuitem_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.wagtailmenus_flatmenu(id);


--
-- Name: wagtailmenus_mainmenu wagtailmenus_mainmenu_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenu
    ADD CONSTRAINT wagtailmenus_mainmenu_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id);


--
-- Name: wagtailmenus_mainmenuitem wagtailmenus_mainmenuitem_link_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenuitem
    ADD CONSTRAINT wagtailmenus_mainmenuitem_link_page_id_fkey FOREIGN KEY (link_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailmenus_mainmenuitem wagtailmenus_mainmenuitem_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailmenus_mainmenuitem
    ADD CONSTRAINT wagtailmenus_mainmenuitem_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.wagtailmenus_mainmenu(id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_redirect_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_redirect_page_id_fkey FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_query_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_query_id_fkey FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_fkey FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bumfresh
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: TABLE auth_group; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_group TO ndma;


--
-- Name: SEQUENCE auth_group_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_group_id_seq TO ndma;


--
-- Name: TABLE auth_group_permissions; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_group_permissions TO ndma;


--
-- Name: SEQUENCE auth_group_permissions_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_group_permissions_id_seq TO ndma;


--
-- Name: TABLE auth_permission; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_permission TO ndma;


--
-- Name: SEQUENCE auth_permission_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_permission_id_seq TO ndma;


--
-- Name: TABLE auth_user; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_user TO ndma;


--
-- Name: TABLE auth_user_groups; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_user_groups TO ndma;


--
-- Name: SEQUENCE auth_user_groups_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_user_groups_id_seq TO ndma;


--
-- Name: SEQUENCE auth_user_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_user_id_seq TO ndma;


--
-- Name: TABLE auth_user_user_permissions; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.auth_user_user_permissions TO ndma;


--
-- Name: SEQUENCE auth_user_user_permissions_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.auth_user_user_permissions_id_seq TO ndma;


--
-- Name: TABLE blog_blogcategory; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_blogcategory TO ndma;


--
-- Name: SEQUENCE blog_blogcategory_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.blog_blogcategory_id_seq TO ndma;


--
-- Name: TABLE blog_blogpage; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_blogpage TO ndma;


--
-- Name: TABLE blog_blogpagetag; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_blogpagetag TO ndma;


--
-- Name: SEQUENCE blog_blogpagetag_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.blog_blogpagetag_id_seq TO ndma;


--
-- Name: TABLE blog_formfield; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_formfield TO ndma;


--
-- Name: SEQUENCE blog_formfield_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.blog_formfield_id_seq TO ndma;


--
-- Name: TABLE blog_formpage; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_formpage TO ndma;


--
-- Name: TABLE blog_landingpage; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_landingpage TO ndma;


--
-- Name: TABLE blog_postpage; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_postpage TO ndma;


--
-- Name: TABLE blog_postpage_categories; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.blog_postpage_categories TO ndma;


--
-- Name: SEQUENCE blog_postpage_categories_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.blog_postpage_categories_id_seq TO ndma;


--
-- Name: TABLE django_admin_log; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.django_admin_log TO ndma;


--
-- Name: SEQUENCE django_admin_log_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.django_admin_log_id_seq TO ndma;


--
-- Name: TABLE django_content_type; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.django_content_type TO ndma;


--
-- Name: SEQUENCE django_content_type_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.django_content_type_id_seq TO ndma;


--
-- Name: TABLE django_migrations; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.django_migrations TO ndma;


--
-- Name: SEQUENCE django_migrations_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.django_migrations_id_seq TO ndma;


--
-- Name: TABLE django_session; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.django_session TO ndma;


--
-- Name: TABLE home_copywritingsettings; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.home_copywritingsettings TO ndma;


--
-- Name: SEQUENCE home_copywritingsettings_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.home_copywritingsettings_id_seq TO ndma;


--
-- Name: TABLE home_homepage; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.home_homepage TO ndma;


--
-- Name: TABLE taggit_tag; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.taggit_tag TO ndma;


--
-- Name: SEQUENCE taggit_tag_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.taggit_tag_id_seq TO ndma;


--
-- Name: TABLE taggit_taggeditem; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.taggit_taggeditem TO ndma;


--
-- Name: SEQUENCE taggit_taggeditem_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.taggit_taggeditem_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_collection; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_collection TO ndma;


--
-- Name: SEQUENCE wagtailcore_collection_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_collection_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_collectionviewrestriction; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_collectionviewrestriction TO ndma;


--
-- Name: TABLE wagtailcore_collectionviewrestriction_groups; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_collectionviewrestriction_groups TO ndma;


--
-- Name: SEQUENCE wagtailcore_collectionviewrestriction_groups_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq TO ndma;


--
-- Name: SEQUENCE wagtailcore_collectionviewrestriction_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_groupcollectionpermission; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_groupcollectionpermission TO ndma;


--
-- Name: SEQUENCE wagtailcore_groupcollectionpermission_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_grouppagepermission; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_grouppagepermission TO ndma;


--
-- Name: SEQUENCE wagtailcore_grouppagepermission_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_grouppagepermission_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_page; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_page TO ndma;


--
-- Name: SEQUENCE wagtailcore_page_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_page_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_pagerevision; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_pagerevision TO ndma;


--
-- Name: SEQUENCE wagtailcore_pagerevision_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_pagerevision_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_pageviewrestriction; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_pageviewrestriction TO ndma;


--
-- Name: TABLE wagtailcore_pageviewrestriction_groups; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_pageviewrestriction_groups TO ndma;


--
-- Name: SEQUENCE wagtailcore_pageviewrestriction_groups_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq TO ndma;


--
-- Name: SEQUENCE wagtailcore_pageviewrestriction_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_pageviewrestriction_id_seq TO ndma;


--
-- Name: TABLE wagtailcore_site; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailcore_site TO ndma;


--
-- Name: SEQUENCE wagtailcore_site_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailcore_site_id_seq TO ndma;


--
-- Name: TABLE wagtaildocs_document; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtaildocs_document TO ndma;


--
-- Name: SEQUENCE wagtaildocs_document_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtaildocs_document_id_seq TO ndma;


--
-- Name: TABLE wagtailembeds_embed; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailembeds_embed TO ndma;


--
-- Name: SEQUENCE wagtailembeds_embed_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailembeds_embed_id_seq TO ndma;


--
-- Name: TABLE wagtailforms_formsubmission; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailforms_formsubmission TO ndma;


--
-- Name: SEQUENCE wagtailforms_formsubmission_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailforms_formsubmission_id_seq TO ndma;


--
-- Name: TABLE wagtailimages_image; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailimages_image TO ndma;


--
-- Name: SEQUENCE wagtailimages_image_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailimages_image_id_seq TO ndma;


--
-- Name: TABLE wagtailimages_rendition; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailimages_rendition TO ndma;


--
-- Name: SEQUENCE wagtailimages_rendition_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailimages_rendition_id_seq TO ndma;


--
-- Name: TABLE wagtailmenus_flatmenu; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailmenus_flatmenu TO ndma;


--
-- Name: SEQUENCE wagtailmenus_flatmenu_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailmenus_flatmenu_id_seq TO ndma;


--
-- Name: TABLE wagtailmenus_flatmenuitem; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailmenus_flatmenuitem TO ndma;


--
-- Name: SEQUENCE wagtailmenus_flatmenuitem_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailmenus_flatmenuitem_id_seq TO ndma;


--
-- Name: TABLE wagtailmenus_mainmenu; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailmenus_mainmenu TO ndma;


--
-- Name: SEQUENCE wagtailmenus_mainmenu_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailmenus_mainmenu_id_seq TO ndma;


--
-- Name: TABLE wagtailmenus_mainmenuitem; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailmenus_mainmenuitem TO ndma;


--
-- Name: SEQUENCE wagtailmenus_mainmenuitem_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailmenus_mainmenuitem_id_seq TO ndma;


--
-- Name: TABLE wagtailredirects_redirect; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailredirects_redirect TO ndma;


--
-- Name: SEQUENCE wagtailredirects_redirect_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailredirects_redirect_id_seq TO ndma;


--
-- Name: TABLE wagtailsearch_editorspick; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailsearch_editorspick TO ndma;


--
-- Name: SEQUENCE wagtailsearch_editorspick_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailsearch_editorspick_id_seq TO ndma;


--
-- Name: TABLE wagtailsearch_query; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailsearch_query TO ndma;


--
-- Name: SEQUENCE wagtailsearch_query_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailsearch_query_id_seq TO ndma;


--
-- Name: TABLE wagtailsearch_querydailyhits; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailsearch_querydailyhits TO ndma;


--
-- Name: SEQUENCE wagtailsearch_querydailyhits_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailsearch_querydailyhits_id_seq TO ndma;


--
-- Name: TABLE wagtailusers_userprofile; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON TABLE public.wagtailusers_userprofile TO ndma;


--
-- Name: SEQUENCE wagtailusers_userprofile_id_seq; Type: ACL; Schema: public; Owner: bumfresh
--

GRANT ALL ON SEQUENCE public.wagtailusers_userprofile_id_seq TO ndma;


--
-- PostgreSQL database dump complete
--

