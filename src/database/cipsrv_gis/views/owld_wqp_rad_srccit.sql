DROP VIEW IF EXISTS cipsrv_gis.owld_wqp_rad_srccit;

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_srccit
AS
SELECT
 a.objectid
,a.title
,a.source_datasetid
,a.sourcecitationabbreviation
,a.originator
,a.publicationdate
,a.beginningdate
,a.endingdate
,a.sourcecontribution
,a.sourcescaledenominator
,a.typeofsourcemedia
,a.calendardate
,a.sourcecurrentnessreference
,a.meta_processid
,a.globalid
FROM
cipsrv_owld.wqp_rad_srccit a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_srccit OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_srccit TO public;
