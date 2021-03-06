#' @title List the items
#' @export
#' 
#' @description Returns a list of items
#'
#' @param api a \code{\link{mangalapi}} object
#' @param ... additional parameters (filters) to be passed to \code{\link{mangalList}}
listItem <- function(api, ...) mangalList(api, 'item', ...)

#' @title Get an item
#' @export
#' 
#' @description Returns an item
#'
#' @param api a \code{\link{mangalapi}} object
#' @param id the identifier of the item
getItem <- function(api, id) mangalGet(api, 'item', id)

#' @title Add a new item
#' @export
#' 
#' @description Post a new item to the database
#' 
#' @details
#' Requires authentication
#' 
#' @param api a \code{\link{mangalapi}} object
#' @param data the item in list format
addItem <- function(api, data)
{
	data$taxa <- resToURI(api, data$taxa, 'taxa')
	if(!is.null(data$traits)) data$traits <- multi_resToURI(api, data$traits, 'trait')
	mangalPost(api, 'item', data)
}

#' @title Patch a item
#' @export
#' 
#' @description Modify the informations for a item
#' 
#' @details
#' Requires authentication
#' 
#' @param api a \code{\link{mangalapi}} object
#' @param data the item in list format
patchItem <- function(api, data)
{
	data$taxa <- resToURI(api, data$taxa, 'taxa')
	if(!is.null(data$traits)) data$traits <- multi_resToURI(api, data$traits, 'trait')
	mangalPatch(api, 'item', data)
}
