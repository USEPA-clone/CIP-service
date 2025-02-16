DROP VIEW IF EXISTS cipsrv_gis.nhdplus_m_nhdpluscatchment;

DO $$DECLARE 
BEGIN

   IF EXISTS(
      SELECT 1 FROM information_schema.tables a
      WHERE a.table_schema = 'cipsrv_nhdplus_m'
      AND   a.table_name   = 'nhdpluscatchment'
   ) 
   THEN 

      EXECUTE $q$
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
      ,a.shape
      FROM
      cipsrv_nhdplus_m.nhdpluscatchment a;
      $q$;                                                                                                                          

      EXECUTE $q$
      ALTER TABLE cipsrv_gis.nhdplus_m_nhdpluscatchment OWNER TO cipsrv_gis;
      $q$;                                                                                                                          

      EXECUTE $q$
      GRANT SELECT ON cipsrv_gis.nhdplus_m_nhdpluscatchment TO public;
      $q$;
      
   ELSE
      RAISE WARNING 'skipping cipsrv_gis.nhdpluscatchment';
   
   END IF;

END$$;
