
##Loading the necessary packages that  contain several useful functions for k-means clustering in R.
install.packages("stats")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")
## Stats package is used for k means Cluster analysis
## dplyr package is used for Data manipulation
## ggplot2 package and ggfortify package has functions that help to build cluster plot 
library(stats)
library(dplyr)
library(ggplot2)
library(ggforify)
## unsupervised learning -Hence converting iris data into unlabelled 
Loading the data and viewing the first four coulmns of iris datasets

view(iris)
mydata= select(iris,c(1,2,3,4))


## Finding  the optimum number of Clusters.


# Standardize the data
  df <- scale(iris3)
> head(df)
# Elbow method
> fviz_nbclust(df, kmeans, method = "wss") +
  +     geom_vline(xintercept = 4, linetype = 2)+
  +     labs(subtitle = "Elbow method")
> # Silhouette method
  > fviz_nbclust(df, kmeans, method = "silhouette")+
  +     labs(subtitle = "Silhouette method")
> # Gap statistic
  ## Calculating the gap statistics based on the no of clusters.
  > # nboot = 50 to keep the function speedy. 
  > # recommended value: nboot= 500 for your analysis.
  > # Use verbose = FALSE to hide computing progression.
  > set.seed(123)
> fviz_nbclust(df, kmeans, nstart = 25,  method = "gap_stat", nboot = 50)+
  +     labs(subtitle = "Gap statistic method")


  

##Performing k means clustering with optimal K.

> set.seed(1)
> ##Perform k means clustering with k=4 clusters
    km <- kmeans(df, centers = 4, nstart = 25)
> ##View results
    km
## 16 observations  were assigned to first cluster
## 6 observations were assigned to Second cluster
  ## 8 observations were assigned to Third Cluster.
  ## 9 observations were assigned to fourth cluster.
  
 
  ##Adding cluster assignment to original data
  ## View final data.
> final_data <- cbind(iris, cluster = km$cluster)
> head(final_data)


