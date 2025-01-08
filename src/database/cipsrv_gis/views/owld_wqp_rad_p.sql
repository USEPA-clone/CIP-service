DROP VIEW IF EXISTS cipsrv_gis.owld_wqp_rad_p;

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_p
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.eventdate
,a.reachcode
,a.reachsmdate
,a.reachresolution
,a.feature_permanent_identifier
,a.featureclassref
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_datadesc
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.permid_joinkey
,a.start_date
,a.end_date
,a.featuredetailurl
,a.measure
,a.eventtype
,a.eventoffset
,a.geogstate
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.isnavigable
,a.hasvaa
,a.issink
,a.isheadwater
,a.iscoastal
,a.isocean
,a.isalaskan
,a.h3hexagonaddr
,a.globalid
,a.shape
FROM
cipsrv_owld.wqp_rad_p a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_p OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_p TO public;
