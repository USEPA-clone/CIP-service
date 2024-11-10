CREATE EXTENSION IF NOT EXISTS hstore;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgis_raster;
CREATE EXTENSION IF NOT EXISTS postgis_topology;
CREATE EXTENSION IF NOT EXISTS pgrouting;
CREATE EXTENSION IF NOT EXISTS h3;
CREATE SCHEMA IF NOT EXISTS tap;
GRANT USAGE ON SCHEMA tap TO public;
CREATE EXTENSION IF NOT EXISTS pgtap SCHEMA tap;
ALTER DATABASE cipsrv SET search_path TO public,tap;
CREATE EXTENSION IF NOT EXISTS plprofiler;

GRANT ALL ON TABLE public.spatial_ref_sys TO cipsrv,cipsrv_user,cipsrv_upload;
