-- Table: public.real_acct

-- DROP TABLE IF EXISTS public.real_acct;

CREATE TABLE IF NOT EXISTS public.real_acct
(
    acct text COLLATE pg_catalog."default",
    str_num double precision,
    str_num_sfx text COLLATE pg_catalog."default",
    str text COLLATE pg_catalog."default",
    str_sfx text COLLATE pg_catalog."default",
    str_sfx_dir text COLLATE pg_catalog."default",
    str_unit text COLLATE pg_catalog."default",
    site_addr_1 text COLLATE pg_catalog."default",
    site_addr_2 text COLLATE pg_catalog."default",
    site_addr_3 text COLLATE pg_catalog."default",
    bld_ar double precision,
    land_ar double precision,
    tot_appr_val double precision,
    tot_mkt_val double precision
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.real_acct
    OWNER to postgres;
	
	
	
-- Table: public.har

-- DROP TABLE IF EXISTS public.har;

CREATE TABLE IF NOT EXISTS public.har
(
    mls bigint,
    address text COLLATE pg_catalog."default",
    bld_sft double precision,
    lot_sft double precision,
    price double precision,
    zip bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.har
    OWNER to postgres;
	