#' The city you will study in, for you to explore
#'
#' @param city The city you're going to study in.
#' @param category A category of places. See semabroadhelp().
#' @param type A type of place included in the category. See semabroadhelp().
#'
#' @return A map showing places of interest as indicated within the given city.
#' @export
#'
#' @examples
#' semabroadmap("cape town", "tourism", "attraction")
semabroadmap <- function(city, category, type) {

  query <- opq(bbox = city) %>%
    add_osm_feature(key = category,
                    value = type) %>%
    osmdata_sf()

  tmap_mode(mode = "view")

  query$osm_points %>%
    tm_shape() +
      tm_dots(id = "name", col = "blue3")
}
