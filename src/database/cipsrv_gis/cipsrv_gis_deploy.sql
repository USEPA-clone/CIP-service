--******************************--
----- views/epageofab_h_catchment_fabric.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_h_catchment_fabric
AS
SELECT
 a.objectid
,a.catchmentstatecode
,a.nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.areasqkm_geo
,a.isnavigable
,a.hasvaa
,a.issink
,a.isheadwater
,a.iscoastal
,a.isocean
,a.isalaskan
,a.h3hexagonaddr
,a.state_count
,a.vpuid
,a.sourcedataset
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_h.catchment_fabric a;

ALTER TABLE cipsrv_gis.epageofab_h_catchment_fabric OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_h_catchment_fabric TO public;
--******************************--
----- views/epageofab_h_catchment_fabric_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_h_catchment_fabric_esri
AS
SELECT
 a.objectid
,a.catchmentstatecode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.areasqkm_geo
,a.isnavigable
,a.hasvaa
,a.issink
,a.isheadwater
,a.iscoastal
,a.isocean
,a.isalaskan
,a.h3hexagonaddr
,CAST(a.state_count AS SMALLINT) AS state_count
,a.vpuid
,a.sourcedataset
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_h.catchment_fabric a;

ALTER TABLE cipsrv_gis.epageofab_h_catchment_fabric_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_h_catchment_fabric_esri TO public;
--******************************--
----- views/epageofab_h_catchment_fabric_huc12.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_m_catchment_fabric_huc12
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_huc12_version
,a.areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_m.catchment_fabric_huc12 a;

ALTER TABLE cipsrv_gis.epageofab_m_catchment_fabric_huc12 OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_m_catchment_fabric_huc12 TO public;
--******************************--
----- views/epageofab_h_catchment_fabric_huc12_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_h_catchment_fabric_huc12_esri
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_huc12_version
,a.areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_h.catchment_fabric_huc12 a;

ALTER TABLE cipsrv_gis.epageofab_h_catchment_fabric_huc12_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_h_catchment_fabric_huc12_esri TO public;
--******************************--
----- views/epageofab_m_catchment_fabric.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_m_catchment_fabric
AS
SELECT
 a.objectid
,a.catchmentstatecode
,a.nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.areasqkm_geo
,a.isnavigable
,a.hasvaa
,a.issink
,a.isheadwater
,a.iscoastal
,a.isocean
,a.isalaskan
,a.h3hexagonaddr
,a.state_count
,a.vpuid
,a.sourcedataset
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_m.catchment_fabric a;

ALTER TABLE cipsrv_gis.epageofab_m_catchment_fabric OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_m_catchment_fabric TO public;
--******************************--
----- views/epageofab_m_catchment_fabric_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_m_catchment_fabric_esri
AS
SELECT
 a.objectid
,a.catchmentstatecode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.areasqkm_geo
,a.isnavigable
,a.hasvaa
,a.issink
,a.isheadwater
,a.iscoastal
,a.isocean
,a.isalaskan
,a.h3hexagonaddr
,CAST(a.state_count AS SMALLINT) AS state_count
,a.vpuid
,a.sourcedataset
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_m.catchment_fabric a;

ALTER TABLE cipsrv_gis.epageofab_m_catchment_fabric_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_m_catchment_fabric_esri TO public;
--******************************--
----- views/epageofab_m_catchment_fabric_huc12.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_m_catchment_fabric_huc12
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_huc12_version
,a.areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_m.catchment_fabric_huc12 a;

ALTER TABLE cipsrv_gis.epageofab_m_catchment_fabric_huc12 OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_m_catchment_fabric_huc12 TO public;
--******************************--
----- views/epageofab_m_catchment_fabric_huc12_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.epageofab_m_catchment_fabric_huc12_esri
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_huc12_version
,a.areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_epageofab_m.catchment_fabric_huc12 a;

ALTER TABLE cipsrv_gis.epageofab_m_catchment_fabric_huc12_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.epageofab_m_catchment_fabric_huc12_esri TO public;
--******************************--
----- views/nhdplus_h_networknhdflowline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_networknhdflowline
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.totma
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
,a.streamleve
,a.streamorde
,a.streamcalc
,a.fromnode
,a.tonode
,a.hydroseq
,a.levelpathi
,a.pathlength
,a.pathtimema
,a.terminalpa
,a.arbolatesu
,a.divergence
,a.startflag
,a.terminalfl
,a.uplevelpat
,a.uphydroseq
,a.dnlevel
,a.dnlevelpat
,a.dnhydroseq
,a.dnminorhyd
,a.dndraincou
,a.frommeas
,a.tomeas
,a.rtndiv
,a.thinner
,a.vpuin
,a.vpuout
,a.areasqkm
,a.totdasqkm
,a.divdasqkm
,a.maxelevraw
,a.minelevraw
,a.maxelevsmo
,a.minelevsmo
,a.slope
,a.slopelenkm
,a.elevfixed
,a.hwtype
,a.hwnodesqkm
,a.statusflag
,a.qama
,a.vama
,a.qincrama
,a.qbma
,a.vbma
,a.qincrbma
,a.qcma
,a.vcma
,a.qincrcma
,a.qdma
,a.vdma
,a.qincrdma
,a.qema
,a.vema
,a.qincrema
,a.qfma
,a.qincrfma
,a.arqnavma
,a.petma
,a.qlossma
,a.qgadjma
,a.qgnavma
,a.gageadjma
,a.avgqadjma
,a.gageidma
,a.gageqma
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_h.networknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_h_networknhdflowline OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_networknhdflowline TO public;
--******************************--
----- views/nhdplus_h_networknhdflowline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_networknhdflowline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.totma
,a.reachcode
,a.flowdir
,a.wbarea_permanent_identifier
,CAST(a.ftype      AS INTEGER)  AS ftype
,CAST(a.fcode      AS INTEGER)  AS fcode
,a.mainpath
,CAST(a.innetwork  AS SMALLINT) AS innetwork
,a.visibilityfilter
,CAST(a.nhdplusid  AS NUMERIC) AS nhdplusid
,a.vpuid
,CAST(a.streamleve AS SMALLINT) AS streamleve
,CAST(a.streamorde AS SMALLINT) AS streamorde
,CAST(a.streamcalc AS SMALLINT) AS streamcalc
,CAST(a.fromnode   AS NUMERIC)  AS fromnode
,CAST(a.tonode     AS NUMERIC)  AS tonode
,CAST(a.hydroseq   AS NUMERIC)  AS hydroseq
,CAST(a.levelpathi AS NUMERIC)  AS levelpathi
,a.pathlength
,a.pathtimema
,CAST(a.terminalpa AS NUMERIC)  AS terminalpa
,a.arbolatesu
,CAST(a.divergence AS SMALLINT) AS divergence
,CAST(a.startflag  AS SMALLINT) AS startflag
,CAST(a.terminalfl AS SMALLINT) AS terminalfl
,CAST(a.uplevelpat AS NUMERIC)  AS uplevelpat
,CAST(a.uphydroseq AS NUMERIC)  AS uphydroseq
,CAST(a.dnlevel    AS SMALLINT) AS dnlevel
,CAST(a.dnlevelpat AS NUMERIC)  AS dnlevelpat
,CAST(a.dnhydroseq AS NUMERIC)  AS dnhydroseq
,CAST(a.dnminorhyd AS NUMERIC)  AS dnminorhyd
,CAST(a.dndraincou AS SMALLINT) AS dndraincou
,a.frommeas
,a.tomeas
,CAST(a.rtndiv     AS SMALLINT) AS rtndiv
,CAST(a.thinner    AS SMALLINT) AS thinner
,CAST(a.vpuin      AS SMALLINT) AS vpuin
,CAST(a.vpuout     AS SMALLINT) AS vpuout
,a.areasqkm
,a.totdasqkm
,a.divdasqkm
,a.maxelevraw
,a.minelevraw
,a.maxelevsmo
,a.minelevsmo
,a.slope
,a.slopelenkm
,CAST(a.elevfixed  AS SMALLINT) AS elevfixed
,CAST(a.hwtype     AS SMALLINT) AS hwtype
,a.hwnodesqkm
,a.statusflag
,a.qama
,a.vama
,a.qincrama
,a.qbma
,a.vbma
,a.qincrbma
,a.qcma
,a.vcma
,a.qincrcma
,a.qdma
,a.vdma
,a.qincrdma
,a.qema
,a.vema
,a.qincrema
,a.qfma
,a.qincrfma
,a.arqnavma
,a.petma
,a.qlossma
,a.qgadjma
,a.qgnavma
,CAST(a.gageadjma  AS SMALLINT) AS gageadjma
,a.avgqadjma
,a.gageidma
,a.gageqma
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_h.networknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_h_networknhdflowline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_networknhdflowline_esri TO public;
--******************************--
----- views/nhdplus_h_nhdarea.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdarea
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdarea a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdarea OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdarea TO public;
--******************************--
----- views/nhdplus_h_nhdarea_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdarea_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdarea a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdarea_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdarea_esri TO public;
--******************************--
----- views/nhdplus_h_nhdline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdline
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdline a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdline OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdline TO public;
--******************************--
----- views/nhdplus_h_nhdline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdline a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdline_esri TO public;
--******************************--
----- views/nhdplus_h_nhdpluscatchment.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdpluscatchment
AS
SELECT
 a.objectid
,a.nhdplusid
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdpluscatchment a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdpluscatchment OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdpluscatchment TO public;
--******************************--
----- views/nhdplus_h_nhdpluscatchment_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdpluscatchment_esri
AS
SELECT
 a.objectid
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdpluscatchment a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdpluscatchment_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdpluscatchment_esri TO public;
--******************************--
----- views/nhdplus_h_nhdplusflow.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplusflow
AS
SELECT
 a.objectid
,a.fromnhdpid
,a.tonhdpid
,a.nodenumber
,a.deltalevel
,a.direction
,a.gapdistkm
,a.hasgeo
,a.fromvpuid
,a.tovpuid
,a.frompermid
,a.topermid
,a.fromhydroseq
,a.tohydroseq
,a.globalid
FROM
cipsrv_nhdplus_h.nhdplusflow a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplusflow OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplusflow TO public;
--******************************--
----- views/nhdplus_h_nhdplusflow_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplusflow_esri
AS
SELECT
 a.objectid
,CAST(a.fromnhdpid AS NUMERIC)  AS fromnhdpid
,CAST(a.tonhdpid   AS NUMERIC)  AS tonhdpid
,CAST(a.nodenumber AS NUMERIC)  AS nodenumber
,CAST(a.deltalevel AS SMALLINT) AS deltalevel
,CAST(a.direction  AS SMALLINT) AS direction
,a.gapdistkm
,CAST(a.hasgeo     AS SMALLINT) AS hasgeo
,a.fromvpuid
,a.tovpuid
,a.frompermid
,a.topermid
,CAST(a.fromhydroseq AS NUMERIC) AS fromhydroseq
,CAST(a.tohydroseq AS NUMERIC)   AS tohydroseq
,a.globalid
FROM
cipsrv_nhdplus_h.nhdplusflow a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplusflow_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplusflow_esri TO public;
--******************************--
----- views/nhdplus_h_nhdplusgage.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplusgage
AS
SELECT
 a.objectid
,a.hydroaddressid
,a.addressdate
,a.featuretype
,a.onnetwork
,a.sourceid
,a.sourceagency
,a.sourcedataset
,a.sourcefeatureurl
,a.catchment
,a.hu
,a.reachcode
,a.measure
,a.reachsmdate
,a.nhdplusid
,a.vpuid
,a.station_nm
,a.state_cd
,a.state
,a.latsite
,a.lonsite
,a.dasqmi
,a.referencegage
,a.class
,a.classmod
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdplusgage a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplusgage OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplusgage TO public;
--******************************--
----- views/nhdplus_h_nhdplusgage_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplusgage_esri
AS
SELECT
 a.objectid
,a.hydroaddressid
,a.addressdate
,a.featuretype
,a.onnetwork
,a.sourceid
,a.sourceagency
,a.sourcedataset
,a.sourcefeatureurl
,CAST(a.catchment AS NUMERIC) AS catchment
,a.hu
,a.reachcode
,a.measure
,a.reachsmdate
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.station_nm
,a.state_cd
,a.state
,a.latsite
,a.lonsite
,a.dasqmi
,a.referencegage
,a.class
,a.classmod
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdplusgage a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplusgage_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplusgage_esri TO public;
--******************************--
----- views/nhdplus_h_nhdplussink.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdplussink
AS
SELECT
 a.objectid
,a.nhdplusid
,a.gridcode
,a.purpcode
,a.featureid
,a.sourcefc
,a.rpuid
,a.statusflag
,a.catchment
,a.burn
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdplussink a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdplussink OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdplussink TO public;
--******************************--
----- views/nhdplus_h_nhdplussink_esri.sql 

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
--******************************--
----- views/nhdplus_h_nhdpoint.sql 

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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdpoint a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdpoint OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdpoint TO public;
--******************************--
----- views/nhdplus_h_nhdpoint_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdpoint_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.reachcode
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdpoint a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdpoint_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdpoint_esri TO public;
--******************************--
----- views/nhdplus_h_nhdwaterbody.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdwaterbody
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.reachcode
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdwaterbody a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdwaterbody OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdwaterbody TO public;
--******************************--
----- views/nhdplus_h_nhdwaterbody_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nhdwaterbody_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.reachcode
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.nhdwaterbody a;

ALTER TABLE cipsrv_gis.nhdplus_h_nhdwaterbody_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nhdwaterbody_esri TO public;
--******************************--
----- views/nhdplus_h_nonnetworknhdflowline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nonnetworknhdflowline
AS
SELECT
 a.objectid
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
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_h.nonnetworknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_h_nonnetworknhdflowline OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nonnetworknhdflowline TO public;
--******************************--
----- views/nhdplus_h_nonnetworknhdflowline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_nonnetworknhdflowline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.reachcode
,a.flowdir
,a.wbarea_permanent_identifier
,CAST(a.ftype      AS INTEGER)  AS ftype
,CAST(a.fcode      AS INTEGER)  AS fcode
,a.mainpath
,CAST(a.innetwork  AS SMALLINT) AS innetwork
,a.visibilityfilter
,CAST(a.nhdplusid  AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_h.nonnetworknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_h_nonnetworknhdflowline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_nonnetworknhdflowline_esri TO public;
--******************************--
----- views/nhdplus_h_wbdhu12.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_wbdhu12
AS
SELECT
 a.objectid
,a.tnmid
,a.metasourceid
,a.sourcedatadesc
,a.sourceoriginator
,a.sourcefeatureid
,a.loaddate
,a.referencegnis_ids
,a.areaacres
,a.areasqkm
,a.states
,a.huc12
,a.name
,a.hutype
,a.humod
,a.tohuc
,a.noncontributingareaacres
,a.noncontributingareasqkm
,a.nhdplusid
,a.vpuid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.wbdhu12 a;

ALTER TABLE cipsrv_gis.nhdplus_h_wbdhu12 OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_wbdhu12 TO public;
--******************************--
----- views/nhdplus_h_wbdhu12_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_h_wbdhu12_esri
AS
SELECT
 a.objectid
,a.tnmid
,a.metasourceid
,a.sourcedatadesc
,a.sourceoriginator
,a.sourcefeatureid
,a.loaddate
,a.referencegnis_ids
,a.areaacres
,a.areasqkm
,a.states
,a.huc12
,a.name
,a.hutype
,a.humod
,a.tohuc
,a.noncontributingareaacres
,a.noncontributingareasqkm
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_h.wbdhu12 a;

ALTER TABLE cipsrv_gis.nhdplus_h_wbdhu12_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_h_wbdhu12_esri TO public;
--******************************--
----- views/nhdplus_m_networknhdflowline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_networknhdflowline
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.totma
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
,a.streamleve
,a.streamorde
,a.streamcalc
,a.fromnode
,a.tonode
,a.hydroseq
,a.levelpathi
,a.pathlength
,a.pathtimema
,a.terminalpa
,a.arbolatesu
,a.divergence
,a.startflag
,a.terminalfl
,a.uplevelpat
,a.uphydroseq
,a.dnlevel
,a.dnlevelpat
,a.dnhydroseq
,a.dnminorhyd
,a.dndraincou
,a.frommeas
,a.tomeas
,a.rtndiv
,a.thinner
,a.vpuin
,a.vpuout
,a.areasqkm
,a.totdasqkm
,a.divdasqkm
,a.maxelevraw
,a.minelevraw
,a.maxelevsmo
,a.minelevsmo
,a.slope
,a.slopelenkm
,a.elevfixed
,a.hwtype
,a.hwnodesqkm
,a.statusflag
,a.qama
,a.vama
,a.qincrama
,a.qbma
,a.vbma
,a.qincrbma
,a.qcma
,a.vcma
,a.qincrcma
,a.qdma
,a.vdma
,a.qincrdma
,a.qema
,a.vema
,a.qincrema
,a.qfma
,a.qincrfma
,a.arqnavma
,a.petma
,a.qlossma
,a.qgadjma
,a.qgnavma
,a.gageadjma
,a.avgqadjma
,a.gageidma
,a.gageqma
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_m.networknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_m_networknhdflowline OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_networknhdflowline TO public;
--******************************--
----- views/nhdplus_m_networknhdflowline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_networknhdflowline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.totma
,a.reachcode
,a.flowdir
,a.wbarea_permanent_identifier
,CAST(a.ftype      AS INTEGER)  AS ftype
,CAST(a.fcode      AS INTEGER)  AS fcode
,a.mainpath
,CAST(a.innetwork  AS SMALLINT) AS innetwork
,a.visibilityfilter
,CAST(a.nhdplusid  AS NUMERIC) AS nhdplusid
,a.vpuid
,CAST(a.streamleve AS SMALLINT) AS streamleve
,CAST(a.streamorde AS SMALLINT) AS streamorde
,CAST(a.streamcalc AS SMALLINT) AS streamcalc
,CAST(a.fromnode   AS NUMERIC)  AS fromnode
,CAST(a.tonode     AS NUMERIC)  AS tonode
,CAST(a.hydroseq   AS NUMERIC)  AS hydroseq
,CAST(a.levelpathi AS NUMERIC)  AS levelpathi
,a.pathlength
,a.pathtimema
,CAST(a.terminalpa AS NUMERIC)  AS terminalpa
,a.arbolatesu
,CAST(a.divergence AS SMALLINT) AS divergence
,CAST(a.startflag  AS SMALLINT) AS startflag
,CAST(a.terminalfl AS SMALLINT) AS terminalfl
,CAST(a.uplevelpat AS NUMERIC)  AS uplevelpat
,CAST(a.uphydroseq AS NUMERIC)  AS uphydroseq
,CAST(a.dnlevel    AS SMALLINT) AS dnlevel
,CAST(a.dnlevelpat AS NUMERIC)  AS dnlevelpat
,CAST(a.dnhydroseq AS NUMERIC)  AS dnhydroseq
,CAST(a.dnminorhyd AS NUMERIC)  AS dnminorhyd
,CAST(a.dndraincou AS SMALLINT) AS dndraincou
,a.frommeas
,a.tomeas
,CAST(a.rtndiv     AS SMALLINT) AS rtndiv
,CAST(a.thinner    AS SMALLINT) AS thinner
,CAST(a.vpuin      AS SMALLINT) AS vpuin
,CAST(a.vpuout     AS SMALLINT) AS vpuout
,a.areasqkm
,a.totdasqkm
,a.divdasqkm
,a.maxelevraw
,a.minelevraw
,a.maxelevsmo
,a.minelevsmo
,a.slope
,a.slopelenkm
,CAST(a.elevfixed  AS SMALLINT) AS elevfixed
,CAST(a.hwtype     AS SMALLINT) AS hwtype
,a.hwnodesqkm
,a.statusflag
,a.qama
,a.vama
,a.qincrama
,a.qbma
,a.vbma
,a.qincrbma
,a.qcma
,a.vcma
,a.qincrcma
,a.qdma
,a.vdma
,a.qincrdma
,a.qema
,a.vema
,a.qincrema
,a.qfma
,a.qincrfma
,a.arqnavma
,a.petma
,a.qlossma
,a.qgadjma
,a.qgnavma
,CAST(a.gageadjma  AS SMALLINT) AS gageadjma
,a.avgqadjma
,a.gageidma
,a.gageqma
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_m.networknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_m_networknhdflowline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_networknhdflowline_esri TO public;
--******************************--
----- views/nhdplus_m_nhdarea.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdarea
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdarea a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdarea OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdarea TO public;
--******************************--
----- views/nhdplus_m_nhdarea_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdarea_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdarea a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdarea_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdarea_esri TO public;
--******************************--
----- views/nhdplus_m_nhdline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdline
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdarea a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdarea OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdarea TO public;
--******************************--
----- views/nhdplus_m_nhdline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdline a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdline_esri TO public;
--******************************--
----- views/nhdplus_m_nhdpluscatchment.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdpluscatchment
AS
SELECT
 a.objectid
,a.nhdplusid
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdpluscatchment a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdpluscatchment OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdpluscatchment TO public;
--******************************--
----- views/nhdplus_m_nhdpluscatchment_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdpluscatchment_esri
AS
SELECT
 a.objectid
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.sourcefc
,a.gridcode
,a.areasqkm
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdpluscatchment a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdpluscatchment_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdpluscatchment_esri TO public;
--******************************--
----- views/nhdplus_m_nhdplusflow.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplusflow
AS
SELECT
 a.objectid
,a.fromnhdpid
,a.tonhdpid
,a.nodenumber
,a.deltalevel
,a.direction
,a.gapdistkm
,a.hasgeo
,a.fromvpuid
,a.tovpuid
,a.frompermid
,a.topermid
,a.fromhydroseq
,a.tohydroseq
,a.globalid
FROM
cipsrv_nhdplus_m.nhdplusflow a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplusflow OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplusflow TO public;
--******************************--
----- views/nhdplus_m_nhdplusflow_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplusflow_esri
AS
SELECT
 a.objectid
,CAST(a.fromnhdpid AS NUMERIC)  AS fromnhdpid
,CAST(a.tonhdpid   AS NUMERIC)  AS tonhdpid
,CAST(a.nodenumber AS NUMERIC)  AS nodenumber
,CAST(a.deltalevel AS SMALLINT) AS deltalevel
,CAST(a.direction  AS SMALLINT) AS direction
,a.gapdistkm
,CAST(a.hasgeo     AS SMALLINT) AS hasgeo
,a.fromvpuid
,a.tovpuid
,a.frompermid
,a.topermid
,CAST(a.fromhydroseq AS NUMERIC)  AS fromhydroseq
,CAST(a.tohydroseq   AS NUMERIC)  AS tohydroseq
,a.globalid
FROM
cipsrv_nhdplus_m.nhdplusflow a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplusflow_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplusflow_esri TO public;
--******************************--
----- views/nhdplus_m_nhdplusgage.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplusgage
AS
SELECT
 a.objectid
,a.hydroaddressid
,a.addressdate
,a.featuretype
,a.onnetwork
,a.sourceid
,a.sourceagency
,a.sourcedataset
,a.sourcefeatureurl
,a.catchment
,a.hu
,a.reachcode
,a.measure
,a.reachsmdate
,a.nhdplusid
,a.vpuid
,a.station_nm
,a.state_cd
,a.state
,a.latsite
,a.lonsite
,a.dasqmi
,a.referencegage
,a.class
,a.classmod
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdplusgage a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplusgage OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplusgage TO public;
--******************************--
----- views/nhdplus_m_nhdplusgage_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplusgage_esri
AS
SELECT
 a.objectid
,a.hydroaddressid
,a.addressdate
,a.featuretype
,a.onnetwork
,a.sourceid
,a.sourceagency
,a.sourcedataset
,a.sourcefeatureurl
,CAST(a.catchment AS NUMERIC) AS catchment
,a.hu
,a.reachcode
,a.measure
,a.reachsmdate
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.station_nm
,a.state_cd
,a.state
,a.latsite
,a.lonsite
,a.dasqmi
,a.referencegage
,a.class
,a.classmod
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdplusgage a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplusgage_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplusgage_esri TO public;
--******************************--
----- views/nhdplus_m_nhdplussink.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplussink
AS
SELECT
 a.objectid
,a.nhdplusid
,a.gridcode
,a.purpcode
,a.featureid
,a.sourcefc
,a.rpuid
,a.statusflag
,a.catchment
,a.burn
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdplussink a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplussink OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplussink TO public;
--******************************--
----- views/nhdplus_m_nhdplussink_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdplussink_esri
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
cipsrv_nhdplus_m.nhdplussink a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdplussink_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdplussink_esri TO public;
--******************************--
----- views/nhdplus_m_nhdpoint.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdpoint
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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdpoint a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdpoint OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdpoint TO public;
--******************************--
----- views/nhdplus_m_nhdpoint_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdpoint_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.reachcode
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdpoint a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdpoint_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdpoint_esri TO public;
--******************************--
----- views/nhdplus_m_nhdwaterbody.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdwaterbody
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.reachcode
,a.ftype
,a.fcode
,a.visibilityfilter
,a.nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdwaterbody a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdwaterbody OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdwaterbody TO public;
--******************************--
----- views/nhdplus_m_nhdwaterbody_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nhdwaterbody_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.areasqkm
,a.elevation
,a.reachcode
,CAST(a.ftype AS INTEGER)  AS ftype
,CAST(a.fcode AS INTEGER)  AS fcode
,a.visibilityfilter
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,a.onoffnet
,a.purpcode
,a.burn
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.nhdwaterbody a;

ALTER TABLE cipsrv_gis.nhdplus_m_nhdwaterbody_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdwaterbody_esri TO public;
--******************************--
----- views/nhdplus_m_nonnetworknhdflowline.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nonnetworknhdflowline
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.totma
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
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_m.nonnetworknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_m_nonnetworknhdflowline OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nonnetworknhdflowline TO public;
--******************************--
----- views/nhdplus_m_nonnetworknhdflowline_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_nonnetworknhdflowline_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.fdate
,a.resolution
,a.gnis_id
,a.gnis_name
,a.lengthkm
,a.reachcode
,a.flowdir
,a.wbarea_permanent_identifier
,CAST(a.ftype      AS INTEGER)  AS ftype
,CAST(a.fcode      AS INTEGER)  AS fcode
,a.mainpath
,CAST(a.innetwork  AS SMALLINT) AS innetwork
,a.visibilityfilter
,CAST(a.nhdplusid  AS NUMERIC) AS nhdplusid
,a.vpuid
,a.globalid
,ST_Transform(ST_Force2D(a.shape),3857) AS shape
FROM
cipsrv_nhdplus_m.nonnetworknhdflowline a;

ALTER TABLE cipsrv_gis.nhdplus_m_nonnetworknhdflowline_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_nonnetworknhdflowline_esri TO public;
--******************************--
----- views/nhdplus_m_wbdhu12.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_wbdhu12
AS
SELECT
 a.objectid
,a.tnmid
,a.metasourceid
,a.sourcedatadesc
,a.sourceoriginator
,a.sourcefeatureid
,a.loaddate
,a.referencegnis_ids
,a.areaacres
,a.areasqkm
,a.states
,a.huc12
,a.name
,a.hutype
,a.humod
,a.tohuc
,a.noncontributingareaacres
,a.noncontributingareasqkm
,a.nhdplusid
,a.vpuid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.wbdhu12 a;

ALTER TABLE cipsrv_gis.nhdplus_m_wbdhu12 OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_wbdhu12 TO public;
--******************************--
----- views/nhdplus_m_wbdhu12_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.nhdplus_m_wbdhu12_esri
AS
SELECT
 a.objectid
,a.tnmid
,a.metasourceid
,a.sourcedatadesc
,a.sourceoriginator
,a.sourcefeatureid
,a.loaddate
,a.referencegnis_ids
,a.areaacres
,a.areasqkm
,a.states
,a.huc12
,a.name
,a.hutype
,a.humod
,a.tohuc
,a.noncontributingareaacres
,a.noncontributingareasqkm
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.vpuid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_nhdplus_m.wbdhu12 a;

ALTER TABLE cipsrv_gis.nhdplus_m_wbdhu12_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.nhdplus_m_wbdhu12_esri TO public;
--******************************--
----- views/owld_wqp_attr.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_attr
AS
SELECT
 a.objectid
,a.source_joinkey
,a.organizationidentifier
,a.organizationformalname
,a.monitoringlocationidentifier
,a.monitoringlocationname
,a.monitoringlocationtypename
,a.monitoringlocationdescription
,a.huceightdigitcode
,a.drainageareameasure_measureval
,a.drainageareameasure_measureunt
,a.contributingdrainageareameasva
,a.contributingdrainageareameasun
,a.latitudemeasure
,a.longitudemeasure
,a.sourcemapscalenumeric
,a.horizontalaccuracymeasureval
,a.horizontalaccuracymeasureunit
,a.horizontalcollectionmethodname
,a.horizontalcoordinatereferences
,a.verticalmeasure_measurevalue
,a.verticalmeasure_measureunit
,a.verticalaccuracymeasurevalue
,a.verticalaccuracymeasureunit
,a.verticalcollectionmethodname
,a.verticalcoordinatereferencesys
,a.countrycode
,a.statecode
,a.countycode
,a.aquifername
,a.formationtypetext
,a.aquifertypename
,a.localaqfrname
,a.constructiondatetext
,a.welldepthmeasure_measurevalue
,a.welldepthmeasure_measureunit
,a.wellholedepthmeasure_measureva
,a.wellholedepthmeasure_measureun
,a.providername
,a.globalid
FROM
cipsrv_owld.wqp_attr a;

ALTER TABLE cipsrv_gis.owld_wqp_attr OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_attr TO public;
--******************************--
----- views/owld_wqp_attr_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_attr_esri
AS
SELECT
 a.objectid
,a.source_joinkey
,a.organizationidentifier
,a.organizationformalname
,a.monitoringlocationidentifier
,a.monitoringlocationname
,a.monitoringlocationtypename
,a.monitoringlocationdescription
,a.huceightdigitcode
,a.drainageareameasure_measureval
,a.drainageareameasure_measureunt
,a.contributingdrainageareameasva
,a.contributingdrainageareameasun
,a.latitudemeasure
,a.longitudemeasure
,a.sourcemapscalenumeric
,a.horizontalaccuracymeasureval
,a.horizontalaccuracymeasureunit
,a.horizontalcollectionmethodname
,a.horizontalcoordinatereferences
,a.verticalmeasure_measurevalue
,a.verticalmeasure_measureunit
,a.verticalaccuracymeasurevalue
,a.verticalaccuracymeasureunit
,a.verticalcollectionmethodname
,a.verticalcoordinatereferencesys
,a.countrycode
,a.statecode
,a.countycode
,a.aquifername
,a.formationtypetext
,a.aquifertypename
,a.localaqfrname
,a.constructiondatetext
,a.welldepthmeasure_measurevalue
,a.welldepthmeasure_measureunit
,a.wellholedepthmeasure_measureva
,a.wellholedepthmeasure_measureun
,a.providername
,a.globalid
FROM
cipsrv_owld.wqp_attr a;

ALTER TABLE cipsrv_gis.owld_wqp_attr_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_attr_esri TO public;
--******************************--
----- views/owld_wqp_cip.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_cip
AS
SELECT
 a.objectid
,a.cip_joinkey
,a.permid_joinkey
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.start_date
,a.end_date
,a.cat_joinkey
,a.catchmentstatecode
,a.nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.catchmentresolution
,a.catchmentareasqkm
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
FROM
cipsrv_owld.wqp_cip a;

ALTER TABLE cipsrv_gis.owld_wqp_cip OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_cip TO public;
--******************************--
----- views/owld_wqp_cip_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_cip_esri
AS
SELECT
 a.objectid
,a.cip_joinkey
,a.permid_joinkey
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.start_date
,a.end_date
,a.cat_joinkey
,a.catchmentstatecode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.istribal
,a.istribal_areasqkm
,a.catchmentresolution
,a.catchmentareasqkm
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
FROM
cipsrv_owld.wqp_cip a;

ALTER TABLE cipsrv_gis.owld_wqp_cip_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_cip_esri TO public;
--******************************--
----- views/owld_wqp_cip_geo.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_cip_geo
AS
SELECT
 a.objectid
,a.cat_joinkey
,a.catchmentstatecode
,a.nhdplusid
,a.catchmentresolution
,a.catchmentareasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_cip_geo a;

ALTER TABLE cipsrv_gis.owld_wqp_cip_geo OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_cip_geo TO public;
--******************************--
----- views/owld_wqp_cip_geo_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_cip_geo_esri
AS
SELECT
 a.objectid
,a.cat_joinkey
,a.catchmentstatecode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.catchmentresolution
,a.catchmentareasqkm
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_cip_geo a;

ALTER TABLE cipsrv_gis.owld_wqp_cip_geo_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_cip_geo_esri TO public;
--******************************--
----- views/owld_wqp_huc12.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_huc12
AS
SELECT
 a.objectid
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.permid_joinkey
,a.start_date
,a.end_date
,a.xwalk_huc12
,a.xwalk_catresolution
,a.xwalk_huc12_version
,a.xwalk_huc12_areasqkm
,a.globalid
FROM
cipsrv_owld.wqp_huc12 a;

ALTER TABLE cipsrv_gis.owld_wqp_huc12 OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_huc12 TO public;
--******************************--
----- views/owld_wqp_huc12_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_huc12_esri
AS
SELECT
 a.objectid
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.permid_joinkey
,a.start_date
,a.end_date
,a.xwalk_huc12
,a.xwalk_catresolution
,a.xwalk_huc12_version
,a.xwalk_huc12_areasqkm
,a.globalid
FROM
cipsrv_owld.wqp_huc12 a;

ALTER TABLE cipsrv_gis.owld_wqp_huc12_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_huc12_esri TO public;
--******************************--
----- views/owld_wqp_huc12_geo.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_huc12_geo
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_catresolution
,a.xwalk_huc12_version
,a.xwalk_huc12_areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_huc12_geo a;

ALTER TABLE cipsrv_gis.owld_wqp_huc12_geo OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_huc12_geo TO public;
--******************************--
----- views/owld_wqp_huc12_geo_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_huc12_geo_esri
AS
SELECT
 a.objectid
,a.xwalk_huc12
,a.xwalk_catresolution
,a.xwalk_huc12_version
,a.xwalk_huc12_areasqkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_huc12_geo a;

ALTER TABLE cipsrv_gis.owld_wqp_huc12_geo_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_huc12_geo_esri TO public;
--******************************--
----- views/owld_wqp_rad_a.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_a
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
,a.eventtype
,a.event_areasqkm
,a.geogstate
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_a a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_a OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_a TO public;
--******************************--
----- views/owld_wqp_rad_a_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_a_esri
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
,a.eventtype
,a.event_areasqkm
,a.geogstate
,a.xwalk_huc12
,a.xwalk_method
,a.xwalk_huc12_version
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_a a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_a_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_a_esri TO public;
--******************************--
----- views/owld_wqp_rad_evt2meta.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_evt2meta
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.meta_processid
,a.globalid
FROM
cipsrv_owld.wqp_rad_evt2meta a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_evt2meta OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_evt2meta TO public;
--******************************--
----- views/owld_wqp_rad_evt2meta_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_evt2meta_esri
AS
SELECT
 a.objectid
,a.permanent_identifier
,a.meta_processid
,a.globalid
FROM
cipsrv_owld.wqp_rad_evt2meta a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_evt2meta_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_evt2meta_esri TO public;
--******************************--
----- views/owld_wqp_rad_l.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_l
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
,a.fmeasure
,a.tmeasure
,a.eventtype
,a.eventoffset
,a.event_lengthkm
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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_l a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_l OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_l TO public;
--******************************--
----- views/owld_wqp_rad_l_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_l_esri
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
,a.fmeasure
,a.tmeasure
,a.eventtype
,a.eventoffset
,a.event_lengthkm
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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_l a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_l_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_l_esri TO public;
--******************************--
----- views/owld_wqp_rad_metadata.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_metadata
AS
SELECT
 a.objectid
,a.meta_processid
,a.processdescription
,a.processdate
,a.attributeaccuracyreport
,a.logicalconsistencyreport
,a.completenessreport
,a.horizpositionalaccuracyreport
,a.vertpositionalaccuracyreport
,a.metadatastandardname
,a.metadatastandardversion
,a.metadatadate
,a.datasetcredit
,a.contactorganization
,a.addresstype
,a.address
,a.city
,a.stateorprovince
,a.postalcode
,a.contactvoicetelephone
,a.contactinstructions
,a.contactemailaddress
,a.globalid
FROM
cipsrv_owld.wqp_rad_metadata a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_metadata OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_metadata TO public;
--******************************--
----- views/owld_wqp_rad_metadata_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_metadata_esri
AS
SELECT
 a.objectid
,a.meta_processid
,a.processdescription
,a.processdate
,a.attributeaccuracyreport
,a.logicalconsistencyreport
,a.completenessreport
,a.horizpositionalaccuracyreport
,a.vertpositionalaccuracyreport
,a.metadatastandardname
,a.metadatastandardversion
,a.metadatadate
,a.datasetcredit
,a.contactorganization
,a.addresstype
,a.address
,a.city
,a.stateorprovince
,a.postalcode
,a.contactvoicetelephone
,a.contactinstructions
,a.contactemailaddress
,a.globalid
FROM
cipsrv_owld.wqp_rad_metadata a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_metadata_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_metadata_esri TO public;
--******************************--
----- views/owld_wqp_rad_p.sql 

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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_p a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_p OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_p TO public;
--******************************--
----- views/owld_wqp_rad_p_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_p_esri
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
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_rad_p a;

ALTER TABLE cipsrv_gis.owld_wqp_rad_p_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_p_esri TO public;
--******************************--
----- views/owld_wqp_rad_srccit.sql 

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
--******************************--
----- views/owld_wqp_rad_srccit_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_srccit_esri
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

ALTER TABLE cipsrv_gis.owld_wqp_rad_srccit_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_rad_srccit_esri TO public;
--******************************--
----- views/owld_wqp_sfid.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_sfid
AS
SELECT
 a.objectid
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.start_date
,a.end_date
,a.sfiddetailurl
,a.load_id
,a.load_date
,a.src_event_count
,a.src_point_count
,a.src_line_count
,a.src_area_count
,a.cat_mr_count
,a.cat_hr_count
,a.xwalk_huc12_mr_count
,a.rad_mr_event_count
,a.rad_hr_event_count
,a.rad_mr_point_count
,a.rad_hr_point_count
,a.rad_mr_line_count
,a.rad_hr_line_count
,a.rad_mr_area_count
,a.rad_hr_area_count
,a.globalid
FROM
cipsrv_owld.wqp_sfid a;

ALTER TABLE cipsrv_gis.owld_wqp_sfid OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_sfid TO public;
--******************************--
----- views/owld_wqp_sfid_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_sfid_esri
AS
SELECT
 a.objectid
,a.source_originator
,a.source_featureid
,a.source_featureid2
,a.source_series
,a.source_subdivision
,a.source_joinkey
,a.start_date
,a.end_date
,a.sfiddetailurl
,a.load_id
,a.load_date
,a.src_event_count
,a.src_point_count
,a.src_line_count
,a.src_area_count
,a.cat_mr_count
,a.cat_hr_count
,a.xwalk_huc12_mr_count
,a.rad_mr_event_count
,a.rad_hr_event_count
,a.rad_mr_point_count
,a.rad_hr_point_count
,a.rad_mr_line_count
,a.rad_hr_line_count
,a.rad_mr_area_count
,a.rad_hr_area_count
,a.globalid
FROM
cipsrv_owld.wqp_sfid a;

ALTER TABLE cipsrv_gis.owld_wqp_sfid_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_sfid_esri TO public;
--******************************--
----- views/owld_wqp_src2cip.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src2cip
AS
SELECT
 a.objectid
,a.src2cip_joinkey
,a.cip_joinkey
,a.source_joinkey
,a.permid_joinkey
,a.cat_joinkey
,a.catchmentstatecode
,a.nhdplusid
,a.catchmentresolution
,a.cip_action
,a.overlap_measure
,a.cip_method
,a.cip_parms
,a.cip_date
,a.cip_version
,a.globalid
FROM
cipsrv_owld.wqp_src2cip a;

ALTER TABLE cipsrv_gis.owld_wqp_src2cip OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src2cip TO public;
--******************************--
----- views/owld_wqp_src2cip_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src2cip_esri
AS
SELECT
 a.objectid
,a.src2cip_joinkey
,a.cip_joinkey
,a.source_joinkey
,a.permid_joinkey
,a.cat_joinkey
,a.catchmentstatecode
,CAST(a.nhdplusid AS NUMERIC) AS nhdplusid
,a.catchmentresolution
,a.cip_action
,a.overlap_measure
,a.cip_method
,a.cip_parms
,a.cip_date
,a.cip_version
,a.globalid
FROM
cipsrv_owld.wqp_src2cip a;

ALTER TABLE cipsrv_gis.owld_wqp_src2cip_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src2cip_esri TO public;
--******************************--
----- views/owld_wqp_src_a.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_a
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

ALTER TABLE cipsrv_gis.owld_wqp_src_a OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_a TO public;
--******************************--
----- views/owld_wqp_src_a_esri.sql 

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
--******************************--
----- views/owld_wqp_src_l.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_l
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
,a.lengthkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_src_l a;

ALTER TABLE cipsrv_gis.owld_wqp_src_l OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_l TO public;
--******************************--
----- views/owld_wqp_src_l_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_l_esri
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
,a.lengthkm
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_src_l a;

ALTER TABLE cipsrv_gis.owld_wqp_src_l_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_l_esri TO public;
--******************************--
----- views/owld_wqp_src_p.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_p
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
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_src_p a;

ALTER TABLE cipsrv_gis.owld_wqp_src_p OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_p TO public;
--******************************--
----- views/owld_wqp_src_p_esri.sql 

CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_src_p_esri
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
,a.globalid
,ST_Transform(a.shape,3857) AS shape
FROM
cipsrv_owld.wqp_src_p a;

ALTER TABLE cipsrv_gis.owld_wqp_src_p_esri OWNER TO cipsrv_gis;
GRANT SELECT ON cipsrv_gis.owld_wqp_src_p_esri TO public;
