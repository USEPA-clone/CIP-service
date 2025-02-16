DROP VIEW IF EXISTS cipsrv_gis.owld_wqp_cip_geo_esri;

DO $$DECLARE 
BEGIN

   IF EXISTS(
      SELECT 1 FROM information_schema.tables a
      WHERE a.table_schema = 'cipsrv_owld'
      AND   a.table_name   = 'wqp_cip_geo'
   ) 
   THEN 

      EXECUTE $q$
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
      ,a.shape
      FROM
      cipsrv_owld.wqp_cip_geo a;
      $q$;                                                                                                                          

      EXECUTE $q$
      ALTER TABLE cipsrv_gis.owld_wqp_cip_geo_esri OWNER TO cipsrv_gis;
      $q$;                                                                                                                          

      EXECUTE $q$
      GRANT SELECT ON cipsrv_gis.owld_wqp_cip_geo_esri TO public;
      $q$;
      
   ELSE
      RAISE WARNING 'skipping cipsrv_gis.owld_wqp_cip_geo_esri';
   
   END IF;

END$$;

