#' Possible places of interest
#'
#' @return A couple of categories (keys) and features (values) to be used in conjunction with semabroadmap().
#' @export
#'
#' @examples
#' semabroadhelp()
semabroadhelp <- function () {

  help <- c(
    "aerialway: station",
    "aeroway: aerodrome, terminal",
    "amenity: bar, biergarten, cafe, fast_food, food_court, ice_cream, pub, restaurant, dancing_school, university, language_school, library, surf_school, bicycle_rental, car_rental, atm, bank, hospital, dentist, pharmacy, cinema, nightclub, theatre, marketplace",
    "building: hotel, commercial, kiosk, supermarket, religious, museum, castle, pagoda",
    "historic: archaeological_site, memorial, church",
    "leisure: bathing_place, dance, fitness_centre",
    "shop: alcohol, bakery, butcher, cheese, chocolate, convenience, seafood, wine, boutique, shoes, second_hand, cosmetics, tattoo, furniture, kitchen, electronics, books, laundry",
    "tourism: attraction, gallery, viewpoint"
  )

  print("Places of interest for students abroad may include:")
  print(help)
}
