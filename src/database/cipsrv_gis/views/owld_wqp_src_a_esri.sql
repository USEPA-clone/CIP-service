CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_a_esri
AS
SELECT
 a.objectid
,a.permid_joinkey
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.start_date
,a.end_date
,a.featuredetailurl
,a.areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_src_a a;

ALTER TABLE cipsrv_gis.owld_wqp_src_a_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_a_esri TO public;
