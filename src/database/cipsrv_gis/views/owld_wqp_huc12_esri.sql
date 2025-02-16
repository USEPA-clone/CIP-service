DROP VIEW IF EXISTS cipsrv_gis.owld_wqp_huc12_esri;

DO $$DECLARE 
BEGIN

   IF EXISTS(
      SELECT 1 FROM information_schema.tables a
      WHERE a.table_schema = 'cipsrv_owld'
      AND   a.table_name   = 'wqp_huc12'
   ) 
   THEN 

      EXECUTE $q$
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
      $q$;                                                                                                                          

      EXECUTE $q$
      ALTER TABLE cipsrv_gis.owld_wqp_huc12_esri OWNER TO cipsrv_gis;
      $q$;                                                                                                                          

      EXECUTE $q$
      GRANT SELECT ON cipsrv_gis.owld_wqp_huc12_esri TO public;
      $q$;
      
   ELSE
      RAISE WARNING 'skipping cipsrv_gis.wqp_huc12_esri';
   
   END IF;

END$$;

