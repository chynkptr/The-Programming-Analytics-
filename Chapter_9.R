#1 Load data
data <- read.csv("~/Programming Analytics/csvchap9.csv")

# Install & load ggplot2
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Remove missing values
data <- na.omit(data)

# Scatter plot
ggplot(data, aes(x = Item_Visibility, y = Item_MRP)) +
  geom_point() +
  labs(title = "Scatter plot: Item Visibility vs Item MRP",
       x = "Item Visibility",
       y = "Item MRP")

#2  Histogram
binsize <- (max(data$Item_MRP) - min(data$Item_MRP)) / 5



ggplot(data, aes(x = Item_MRP)) +
  geom_histogram(binwidth = binsize, fill = "pink", color = "black") +
  labs(title = "Histogram of Item MRP", x = "Item MRP", y = "Frequency")

#3
#Bar chart
ggplot(data, aes(x = Outlet_Type, y = Item_Weight, fill = Outlet_Location_Type)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Tier 1" = "red", "Tier 2" = "navy", "Tier 3" = "lightblue")) +
  labs(title = "Item Weight by Outlet Type",
       x = "Outlet Type",
       y = "Item Weight",
       fill = "Outlet Location Type") +
  theme_minimal()


ggplot(data, aes(x = Outlet_Type, fill = Outlet_Location_Type)) +
  geom_bar() +
  scale_fill_manual(values = c("Tier 1" = "black", "Tier 2" = "pink", "Tier 3" = "lightblue")) +
  labs(title = "Count of Outlets by Outlet Type and Location Type",
       x = "Outlet Type",
       y = "Count",
       fill = "Outlet Location Type") +
  theme_minimal()

#4
ggplot(data, aes(x = Outlet_Type, y = Item_Outlet_Sales, fill = Outlet_Type)) +
  geom_boxplot() +
  scale_fill_manual(values = c("Grocery Store" = "darkred", "Supermarket Type1" = "navy", "Supermarket Type2" = "lightblue")) +
  labs(title = "Box Plot of Item Sales by Outlet Type",
       x = "Outlet Type",
       y = "Item Sales",
       fill = "Outlet Type") +
  theme_minimal()

#5
data <- iris
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width, color = Species, shape = Species)) +
  geom_point(size = 3) +  
  scale_color_manual(values = c("setosa" = "darkred", "versicolor" = "navy", "virginica" = "lightblue")) +
  labs(title = "Scatter Plot: Sepal Length vs Sepal Width",
       x = "Sepal Length",
       y = "Sepal Width",
       color = "Species",
       shape = "Species") +
  theme_minimal()

#6 
ggplot(data, aes(x = Species, y = Sepal.Length, color = Species)) +
  geom_boxplot(outlier.shape = NA) +   # Exclude outliers from the box plot to avoid overlapping with jittered points
  geom_jitter(width = 0.2, alpha = 0.5) +
  theme_minimal() +
  labs(title = "Parallel Box Plot with Jittered Points",
       x = "Species",
       y = "Sepal Length")

