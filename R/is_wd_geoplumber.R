#' Helper function to determin if working dir is a geoplumber app.
#'
#' Conditions for a geoplumber app (at least initiated with)
#' 1. An 'R' directory with R/plumber.R file
#' 2. A 'src' directory
#' 3. A 'package.json' file at root.
#'
#'  TODO: what else?
#'
#' @param path check particular path
#' @return true or false
#'
#' @examples {
#' gp_is_wd_geoplumber()
#' }
#'
#' @export
gp_is_wd_geoplumber <- function(path = ".") {
  # be functional
  the_path <- path

  if(identical(path, ".")) {
    # just remove it
    the_path <- ""
  }
  dir_r <- dir.exists(paste0(the_path, "R"))
  dir_src <- dir.exists(paste0(the_path, "src"))
  package.json <- file.exists(paste0(the_path, "package.json"))
  if(dir_r && dir_src && package.json) {
    return(TRUE)
  }
  FALSE
}
