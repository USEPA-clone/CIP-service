DROP VIEW IF EXISTS cipsrv_gis.owld_wqp_rad_evt2meta_h;

DO $$DECLARE 
BEGIN

   IF EXISTS(
      SELECT 1 FROM information_schema.tables a
      WHERE a.table_schema = 'cipsrv_owld'
      AND   a.table_name   = 'wqp_rad_evt2meta'
   ) 
   THEN 

      EXECUTE $q$
      CREATE OR REPLACE VIEW cipsrv_gis.owld_wqp_rad_evt2meta_h
      AS
      SELECT
       a.objectid
      ,a.permanent_identifier
      ,a.meta_processid
      ,a.globalid
      FROM
      cipsrv_owld.wqp_rad_evt2meta a
      WHERE
      a.reachresolution = 'HR';
      $q$;                                                                                                                          

      EXECUTE $q$
      ALTER TABLE cipsrv_gis.owld_wqp_rad_evt2meta_h OWNER TO cipsrv_gis;
      $q$;                                                                                                                          

      EXECUTE $q$
      GRANT SELECT ON cipsrv_gis.owld_wqp_rad_evt2meta_h TO public;
      $q$;
      
   ELSE
      RAISE WARNING 'skipping cipsrv_gis.owld_wqp_rad_evt2meta_h';
   
   END IF;

END$$;
