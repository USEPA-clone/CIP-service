DO $$DECLARE 
   a VARCHAR;b VARCHAR;
BEGIN
   SELECT p.oid::regproc,pg_get_function_identity_arguments(p.oid)
   INTO a,b FROM pg_catalog.pg_proc p LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace
   WHERE p.oid::regproc::text = 'cipsrv_nhdplus_h.index_point_simple';
   IF b IS NOT NULL THEN EXECUTE FORMAT('DROP FUNCTION IF EXISTS %s(%s)',a,b);END IF;
END$$;

CREATE OR REPLACE FUNCTION cipsrv_nhdplus_h.index_point_simple(
    IN  p_geometry                GEOMETRY
   ,IN  p_known_region            VARCHAR
   ,IN  p_permid_joinkey          UUID
   ,IN  p_permid_geometry         GEOMETRY
   ,OUT out_return_code           INTEGER
   ,OUT out_status_message        VARCHAR
)
VOLATILE
AS $BODY$
DECLARE
   rec                    RECORD;
   str_known_region       VARCHAR;
   int_srid               INTEGER;
   geom_input             GEOMETRY;
   permid_geometry        GEOMETRY;

BEGIN

   str_known_region := p_known_region;

   rec := cipsrv_nhdplus_h.determine_grid_srid(
       p_geometry      := p_geometry
      ,p_known_region  := p_known_region
   );
   int_srid           := rec.out_srid;
   out_return_code    := rec.out_return_code;
   out_status_message := rec.out_status_message;

   IF out_return_code != 0
   THEN
      RETURN;

   END IF;

   str_known_region := int_srid::VARCHAR;

   IF str_known_region = '5070'
   THEN
      geom_input      := ST_Transform(p_geometry,5070);
      permid_geometry := ST_Transform(p_permid_geometry,5070);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_5070 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSIF str_known_region = '3338'
   THEN
      geom_input      := ST_Transform(p_geometry,3338);
      permid_geometry := ST_Transform(p_permid_geometry,3338);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_3338 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSIF str_known_region = '26904'
   THEN
      geom_input      := ST_Transform(p_geometry,26904);
      permid_geometry := ST_Transform(p_permid_geometry,26904);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_26904 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSIF str_known_region = '32161'
   THEN
      geom_input      := ST_Transform(p_geometry,32161);
      permid_geometry := ST_Transform(p_permid_geometry,32161);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_32161 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSIF str_known_region = '32655'
   THEN
      geom_input      := ST_Transform(p_geometry,32655);
      permid_geometry := ST_Transform(p_permid_geometry,32655);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_32655 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSIF str_known_region = '32702'
   THEN
      geom_input      := ST_Transform(p_geometry,32702);
      permid_geometry := ST_Transform(p_permid_geometry,32702);

      INSERT INTO tmp_cip(
          permid_joinkey
         ,nhdplusid
         ,overlap_measure
      )
      SELECT
       p_permid_joinkey
      ,a.nhdplusid
      ,NULL
      FROM
      cipsrv_nhdplus_h.catchment_32702 a
      WHERE
      ST_Intersects(
          a.shape
         ,geom_input
      )
      ON CONFLICT DO NOTHING;

   ELSE
      out_return_code    := -10;
      out_status_message := 'err ' || str_known_region;

   END IF;

   RETURN;

END;
$BODY$
LANGUAGE plpgsql;

ALTER FUNCTION cipsrv_nhdplus_h.index_point_simple(
    GEOMETRY
   ,VARCHAR
   ,UUID
   ,GEOMETRY
) OWNER TO cipsrv;

GRANT EXECUTE ON FUNCTION cipsrv_nhdplus_h.index_point_simple(
    GEOMETRY
   ,VARCHAR
   ,UUID
   ,GEOMETRY
) TO PUBLIC;

