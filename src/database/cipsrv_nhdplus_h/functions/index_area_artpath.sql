CREATE OR REPLACE FUNCTION cipsrv_nhdplus_h.index_area_artpath(
    IN  p_geometry             GEOMETRY
   ,IN  p_geometry_areasqkm    NUMERIC
   ,IN  p_known_region         VARCHAR
   ,IN  p_cat_threshold_perc   NUMERIC
   ,IN  p_evt_threshold_perc   NUMERIC
   ,OUT out_return_code        INTEGER
   ,OUT out_status_message     VARCHAR
)
VOLATILE
AS $BODY$
DECLARE
   rec                   RECORD;
   str_known_region      VARCHAR;
   int_srid              INTEGER;
   int_count             INTEGER;
   geom_input            GEOMETRY;
   num_cat_threshold     NUMERIC;
   num_evt_threshold     NUMERIC;
   num_geometry_areasqkm NUMERIC;

BEGIN

   IF p_cat_threshold_perc IS NULL
   THEN
      num_cat_threshold := 0;
   
   ELSE
      num_cat_threshold := p_cat_threshold_perc / 100;
      
   END IF;
   
   IF p_evt_threshold_perc IS NULL
   THEN
      num_evt_threshold := 0;
   
   ELSE
      num_evt_threshold := p_evt_threshold_perc / 100;
      
   END IF;

   str_known_region := p_known_region;

   rec := cipsrv_nhdplus_h.determine_grid_srid(
       p_geometry       := p_geometry
      ,p_known_region   := p_known_region
   );
   int_srid           := rec.out_srid;
   out_return_code    := rec.out_return_code;
   out_status_message := rec.out_status_message;
   
   IF out_return_code != 0
   THEN
      RETURN;
      
   END IF;
   
   str_known_region := int_srid::VARCHAR;
   
   IF p_geometry_areasqkm IS NULL
   THEN
      num_geometry_areasqkm := ROUND(ST_Area(ST_Transform(
          p_geometry
         ,int_srid
      ))::NUMERIC / 1000000,8);
      
   ELSE
      num_geometry_areasqkm := p_geometry_areasqkm;
      
   END IF;
   
   IF str_known_region = '5070'
   THEN
      geom_input := ST_Transform(p_geometry,5070);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_5070 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
   
   ELSIF str_known_region = '3338'
   THEN
      geom_input := ST_Transform(p_geometry,3338);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_3338 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
   
   ELSIF str_known_region = '26904'
   THEN
      geom_input := ST_Transform(p_geometry,26904);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_26904 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
      
   ELSIF str_known_region = '32161'
   THEN
      geom_input := ST_Transform(p_geometry,32161);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_32161 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
      
   ELSIF str_known_region = '32655'
   THEN
      geom_input := ST_Transform(p_geometry,32655);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_32655 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
      
   ELSIF str_known_region = '32702'
   THEN
      geom_input := ST_Transform(p_geometry,32702);
      
      INSERT INTO tmp_cip(
         nhdplusid
      ) 
      SELECT 
      a.nhdplusid
      FROM (
         SELECT
          aa.nhdplusid
         ,aa.overlapmeasure
         ,ROUND(aa.overlapmeasure / aa.areasqkm,8) AS nhdpercentage
         ,CASE
          WHEN num_geometry_areasqkm = 0
          THEN
            0
          ELSE
            ROUND(aa.overlapmeasure / num_geometry_areasqkm,8)
          END AS eventpercentage
         ,aa.fcode
         FROM (
            SELECT
             aaa.nhdplusid
            ,aaa.areasqkm
            ,aaa.fcode
            ,ROUND(ST_Area(aaa.geom_overlap)::NUMERIC / 1000000,8) AS overlapmeasure
            FROM (
               SELECT
                aaaa.nhdplusid
               ,aaaa.areasqkm
               ,aaaa.fcode
               ,ST_CollectionExtract(
                  ST_Intersection(
                      aaaa.shape
                     ,geom_input
                   )
                  ,3
                ) AS geom_overlap
               FROM
               cipsrv_nhdplus_h.catchment_32702 aaaa
               WHERE
               ST_Intersects(
                   aaaa.shape
                  ,geom_input
               )
            ) aaa
            WHERE 
            aaa.geom_overlap IS NOT NULL
         ) aa 
      ) a
      WHERE
          a.fcode = 55800
      OR (num_cat_threshold IS NULL OR a.nhdpercentage   >= num_cat_threshold)
      OR (num_evt_threshold IS NULL OR a.eventpercentage >= num_evt_threshold)
      ON CONFLICT DO NOTHING;
   
   ELSE
      out_return_code    := -10;
      out_status_message := 'err ' || str_known_region;
      
   END IF;
   
   RETURN;
   
END;
$BODY$
LANGUAGE plpgsql;

ALTER FUNCTION cipsrv_nhdplus_h.index_area_artpath(
    GEOMETRY
   ,NUMERIC
   ,VARCHAR
   ,NUMERIC
   ,NUMERIC
) OWNER TO cipsrv;

GRANT EXECUTE ON FUNCTION cipsrv_nhdplus_h.index_area_artpath(
    GEOMETRY
   ,NUMERIC
   ,VARCHAR
   ,NUMERIC
   ,NUMERIC
) TO PUBLIC;

