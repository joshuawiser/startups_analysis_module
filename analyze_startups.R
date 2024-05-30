# Set the path to the uploaded CSV file
file_path <- "/mnt/data/50_Startups.csv"

# Read the CSV file
startups_data <- read.csv(file_path)

# Display the first few rows of the data
print("First few rows of the data:")
print(head(startups_data))

# Display summary statistics of the data
print("Summary statistics of the data:")
print(summary(startups_data))

# Check the structure of the dataset
str(startups_data)

# Plot a simple scatter plot
# Scatter plot of R&D Spend vs Profit
ggplot(startups_data, aes(x = R.D.Spend, y = Profit)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of R&D Spend vs Profit", x = "R&D Spend", y = "Profit")

# Fit a linear regression model
model <- lm(Profit ~ R.D.Spend + Administration + Marketing.Spend + State, data = startups_data)

# Display model summary
print("Linear Model Summary:")
print(summary(model))

# Plot regression results
ggplot(startups_data, aes(x = R.D.Spend, y = Profit)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Linear Regression: R&D Spend vs Profit", x = "R&D Spend", y = "Profit")
