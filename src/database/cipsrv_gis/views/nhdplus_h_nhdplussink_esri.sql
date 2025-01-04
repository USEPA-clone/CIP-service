CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplussink_esri
AS
SELECT
 a.objectid
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.gridcode
,a.purpcode
,CAST(a.featureid AS NUMERIC) AS featureid
,a.sourcefc
,a.rpuid
,a.statusflag
,CAST(a.catchment AS SMALLINT) AS catchment
,CAST(a.burn      AS SMALLINT) AS burn
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdplussink a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplussink_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplussink_esri TO public;
