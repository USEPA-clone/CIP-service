DROP MATERIALIZED VIEW IF EXISTS cipsrv_nhdplus_h.nhdflowline_3338 CASCADE;

CREATE MATERIALIZED VIEW cipsrv_nhdplus_h.nhdflowline_3338(
    objectid
   ,permanent_identifier
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
   ,hasvaa
   ,isnavigable
   ,hydroseq
   ,shape
)
AS
SELECT
 CAST(a.objectid AS INTEGER) AS objectid
,a.permanent_identifier
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
,CASE 
 WHEN b.nhdplusid IS NOT NULL
 THEN
   TRUE
 ELSE
   FALSE
 END AS hasvaa
,CASE
 WHEN b.nhdplusid IS NOT NULL
 AND a.fcode NOT IN (56600)
 THEN
   TRUE
 ELSE
   FALSE
 END AS isnavigable
,b.hydroseq
,ST_Transform(a.shape,3338) AS shape
FROM
cipsrv_nhdplus_h.nhdflowline a
LEFT JOIN
cipsrv_nhdplus_h.nhdplusflowlinevaa b
ON
a.nhdplusid = b.nhdplusid
WHERE
SUBSTR(a.vpuid,1,2) IN ('19');

ALTER TABLE cipsrv_nhdplus_h.nhdflowline_3338 OWNER TO cipsrv;
GRANT SELECT ON cipsrv_nhdplus_h.nhdflowline_3338 TO public;

CREATE UNIQUE INDEX nhdflowline_3338_01u
ON cipsrv_nhdplus_h.nhdflowline_3338(nhdplusid);

CREATE UNIQUE INDEX nhdflowline_3338_02u
ON cipsrv_nhdplus_h.nhdflowline_3338(objectid);

CREATE INDEX nhdflowline_3338_02i
ON cipsrv_nhdplus_h.nhdflowline_3338(fcode);

CREATE INDEX nhdflowline_3338_03i
ON cipsrv_nhdplus_h.nhdflowline_3338(hasvaa);

CREATE INDEX nhdflowline_3338_04i
ON cipsrv_nhdplus_h.nhdflowline_3338(isnavigable);

CREATE INDEX nhdflowline_3338_05i
ON cipsrv_nhdplus_h.nhdflowline_3338(hydroseq);

CREATE INDEX nhdflowline_3338_spx
ON cipsrv_nhdplus_h.nhdflowline_3338 USING GIST(shape);

ANALYZE cipsrv_nhdplus_h.nhdflowline_3338;

--VACUUM FREEZE ANALYZE cipsrv_nhdplus_h.nhdflowline_3338;

