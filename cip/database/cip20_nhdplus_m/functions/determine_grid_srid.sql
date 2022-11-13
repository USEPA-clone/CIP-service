CREATE OR REPLACE FUNCTION cip20_nhdplus_m.determine_grid_srid(
    IN  p_geometry          GEOMETRY
   ,IN  p_known_region      VARCHAR
   ,OUT out_srid            INTEGER
   ,OUT out_grid_size       NUMERIC
   ,OUT out_return_code     INTEGER
   ,OUT out_status_message  VARCHAR
)
STABLE
AS $BODY$ 
DECLARE
   sdo_results        GEOMETRY;
   str_region         VARCHAR(255) := p_known_region;
   
BEGIN

   ----------------------------------------------------------------------------
   -- Step 10
   -- Check over incoming parameters
   ----------------------------------------------------------------------------
   IF  p_geometry IS NULL
   AND str_region IS NULL
   THEN
      RAISE EXCEPTION 'input geometry and known region cannot both be null';
      
   END IF;
   
   ----------------------------------------------------------------------------
   -- Step 20
   -- Determine the region from geometry if known region value not provided
   ----------------------------------------------------------------------------
   IF str_region IS NULL
   THEN
      str_region := cip20_nhdplus_m.query_generic_common_mbr(
         p_input := p_geometry
      );
   
   END IF;
   
   ----------------------------------------------------------------------------
   -- Step 30
   -- Validate region and determine srid
   ----------------------------------------------------------------------------
   IF str_region IS NULL
   THEN
      out_return_code    := -1;
      out_status_message := 'Geometry is outside nhdplus_h coverage.';
      RETURN;

   ELSIF str_region IN ('5070','CONUS','USA',
   'AL','AR','AZ','CA','CO','CT','DC','DE','FL','GA',
   'IA','ID','IL','IN','KS','KY','LA','MA','MD','ME',
   'MI','MN','MO','MS','MT','NC','ND','NE','NH','NJ',
   'NM','NV','NY','OH','OK','OR','PA','RI','SC','SD',
   'TN','TX','UT','VA','VT','WA','WI','WV','WY')
   THEN
      out_srid       := 5070;
      out_grid_size  := 30;
      
   ELSIF str_region IN ('3338','AK')
   THEN  
      out_srid       := 3338;
      out_grid_size  := NULL;
   
   ELSIF str_region IN ('32702','SAMOA','AS')
   THEN
      out_srid       := 32702;
      out_grid_size  := 10;
      
   ELSIF str_region IN ('32655','GUMP','GU','MP')
   THEN
      out_srid       := 32655;
      out_grid_size  := 10;
      
   ELSIF str_region IN ('26904','HI')
   THEN
      out_srid       := 26904;
      out_grid_size  := 10;
      
   ELSIF str_region IN ('32161','PRVI','PR','VI')
   THEN
      out_srid       := 32161;
      out_grid_size  := 10;
      
   END IF;
   
   ----------------------------------------------------------------------------
   -- Step 40
   -- Return what we got
   ----------------------------------------------------------------------------
   out_return_code := 0;
   
END;
$BODY$
LANGUAGE plpgsql;

ALTER FUNCTION cip20_nhdplus_m.determine_grid_srid(
    GEOMETRY
   ,VARCHAR
) OWNER TO cip20;

GRANT EXECUTE ON FUNCTION cip20_nhdplus_m.determine_grid_srid(
    GEOMETRY
   ,VARCHAR
) TO PUBLIC;

