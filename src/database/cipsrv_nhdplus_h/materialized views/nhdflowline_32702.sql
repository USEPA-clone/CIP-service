DROP MATERIALIZED VIEW IF EXISTS cipsrv_nhdplus_h.nhdflowline_32702 CASCADE;

CREATE MATERIALIZED VIEW cipsrv_nhdplus_h.nhdflowline_32702(
    permanent_identifier
   ,fdate
   ,resolution
   ,gnis_id
   ,gnis_name
   ,lengthkm
   ,reachcode
   ,flowdir
   ,wbarea_permanent_identifier
   ,ftype
   ,fcode
   ,mainpath
   ,innetwork
   ,visibilityfilter
   ,nhdplusid
   ,vpuid
   ,enabled
   ,fmeasure
   ,tmeasure
   ,shape
)
AS
SELECT
 a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.reachcode
,a.flowdir
,a.wbarea_permanent_identifier
,a.ftype
,a.fcode
,a.mainpath
,a.innetwork
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.enabled
,a.fmeasure
,a.tmeasure
,ST_Transform(a.shape,32702) AS shape
FROM
cipsrv_nhdplus_h.nhdflowline a
WHERE
SUBSTR(a.vpuid,1,4) = '2203';

ALTER TABLE cipsrv_nhdplus_h.nhdflowline_32702 OWNER TO cipsrv;
GRANT SELECT ON cipsrv_nhdplus_h.nhdflowline_32702 TO public;

CREATE UNIQUE INDEX nhdflowline_32702_01u
ON cipsrv_nhdplus_h.nhdflowline_32702(nhdplusid);

CREATE INDEX nhdflowline_32702_02i
ON cipsrv_nhdplus_h.nhdflowline_32702(fcode);

CREATE INDEX nhdflowline_32702_spx
ON cipsrv_nhdplus_h.nhdflowline_32702 USING GIST(shape);

ANALYZE cipsrv_nhdplus_h.nhdflowline_32702;

--VACUUM FREEZE ANALYZE cipsrv_nhdplus_h.nhdflowline_32702;

