DROP VIEW IF EXISTS cipsrv_gis.nhdplus_h_nhdpoint;

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdpoint
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.reachcode
,a.ftype
,a.fcode
,a.nhdplusid
,a.vpuid
,a.globalid
,a.shape
FROM
cipsrv_nhdplus_h.nhdpoint a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdpoint OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdpoint TO public;
