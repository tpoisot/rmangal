<!--
%\VignetteEngine{knitr::knitr}
%\VignetteIndexEntry{Basics of rmangal}
-->


```r
library(rmangal)
```

```
## Error: there is no package called 'rmangal'
```


# rmangal - R access to hosted MANGAL API

The `mangal` project is a [data specification][dataspec] and [API][api],
desgined to facilitate the retrieval, archival, and re-use of data on
ecological interactions.

# An overview of the mangal format

%%TODO the replicated-web paradigm

%%TODO general statement about the philosophy

## Informations about interactions

## Informations about network nodes

# Getting to know the API

The only information needed to start working is the URL of the database you want to interact with. By default, `rmangal` will connect you to the main database (at the *Université du Québec à Rimouski*) - you can access the [website] to know more.


```r
netdb <- mangalapi()
```

```
## Error: impossible de trouver la fonction "mangalapi"
```


The `netdb` object is used by all other functions to know where to connect to do a particular operation. We can see the list of methods that are available to work with:


```r
names(netdb)
```

```
## Error: objet 'netdb' introuvable
```


As an user, you won't have to use this information yourself, but it's important for the `rmangal` package to know which URL to use to retrieve information. The first thing one might want to do, is get a list of all datasets available, and print their name:


```r
all_datasets <- listDataset(netdb)
```

```
## Error: impossible de trouver la fonction "listDataset"
```

```r
laply(all_datasets, function(x) x$name)
```

```
## Error: impossible de trouver la fonction "laply"
```


In other situations, you may know the `id` of the dataset you want to work with. You can use the `getDataset` function to access it directly, see its name, and how many networks are in it.


```r
first_dataset <- getDataset(netdb, 1)
```

```
## Error: impossible de trouver la fonction "getDataset"
```

```r
first_dataset$name
```

```
## Error: objet 'first_dataset' introuvable
```

```r
length(first_dataset$networks)
```

```
## Error: objet 'first_dataset' introuvable
```


All functions to access information within `rmangal` follow the same naming convention: `get*` will retrieve a *single* object identified by its `id`, and `list*` will retrieve a list of *all* objects of this type. The type of object to retrieve is the *singular* of the object name with its first letter capitalized (*e.g.* networks are `*Network`, taxa are `*Taxa`, ...).

# My first network

In this section, we'll reconstruct a network and plot it using `igraph`.


```r
plot(network_as_graph(netdb, 1))
```

```
## Error: impossible de trouver la fonction "network_as_graph"
```


Done!

The `network_as_graph` function

[dataspec]: https://github.com/mangal-wg/mangal-schemes
[website]: http://mangal.uqar.ca/