#' Essential places of your semester abroad
#'
#' @param city The place you are going to study in. Names may have to be written completely in small letters.
#'
#' @return A map of that place with essential amenities.
#' @export
#'
#' @examples
#' semabroadessential("cape town")
#'
semabroadessential <- function (city) {

  query1 <- opq(bb = city) %>%
    add_osm_feature(key = "amenity",
                    value = "university") %>%
    osmdata_sf()

  query2 <- opq(bb = city) %>%
    add_osm_feature(key = "amenity",
                    value = "library") %>%
    osmdata_sf()

  query3 <- opq(bb = city) %>%
    add_osm_feature(key = "amenity",
                    value = "nightclub") %>%
    osmdata_sf()

  essential1 <- query1$osm_points %>% mutate(semester_abroad_essentials = "university building")

  essential2 <- query2$osm_points %>% mutate(semester_abroad_essentials = "library")

  essential3 <- query3$osm_points %>% mutate(semester_abroad_essentials = "nightclub")

  essentials <- essential1 %>% bind_rows(essential2) %>% bind_rows(essential3)

  tmap_mode(mode = "view")

  essentials %>%
    tm_shape() +
    tm_dots(id = "name", col = "semester_abroad_essentials")

}
