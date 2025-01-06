CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_flow_direction_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,CAST(DEGREES(
    ST_Azimuth(
       a.penul_point
      ,a.final_point
    )
 ) AS NUMERIC) AS angle_direction
,CAST(ROUND(DEGREES(
    ST_Azimuth(
       a.penul_point
      ,a.final_point
    )
 ) / 5 ) * 5 AS NUMERIC ) AS angle_rounded
,CAST(a.ftype      AS INTEGER)  AS ftype
,CAST(a.fcode      AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid  AS NUMERIC) AS nhdplusid
,ST_Transform(a.final_point,3857) AS shape
FROM (
   SELECT  
    aa.objectid
   ,aa.permanent_identifier
   ,aa.ftype
   ,aa.fcode
   ,aa.visibilityfilter
   ,aa.nhdplusid
   ,ST_PointN(aa.shape,-2) AS penul_point
   ,ST_PointN(aa.shape,-1) AS final_point
   FROM (
      SELECT
       aaa.objectid
      ,aaa.permanent_identifier
      ,aaa.ftype
      ,aaa.fcode
      ,aaa.visibilityfilter
      ,aaa.nhdplusid
      ,ST_Force2D(aaa.shape) AS shape
      FROM
      cipsrv_nhdplus_m.networknhdflowline aaa
   ) aa
) a;

ALTER TABLE cipsrv_gis.nhdplus_m_flow_direction_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_flow_direction_esri TO public;
