# Load required libraries
install.packages("readxl")
install.packages("ggplot2")
library(readxl)
library(ggplot2)

# Read the Excel file (replace "path/to/your/file.xlsx" with the actual file path)
data <- read_excel("C:/Users/yashb/OneDrive/Desktop/Individual Project/quast reports/Primary Assemblies summary.xlsx")

# Create the plot
ggplot(data, aes(x = `Length of contigs(>=0bp)`, y = `Length of contigs(>=50000bp)`, color = as.factor(`Kmer Value`))) +
  geom_point(size = 3) +
  geom_text(aes(label = `Assembly`), vjust = -0.5, hjust = 0.5) +
  labs(title = "Comparison of Length of contigs(>=0bp) and Length of contigs(>=50000bp)",
       x = "Length of contigs(>=0bp)",
       y = "Length of contigs(>=50000bp)",
       color = "Kmer Value") +
  theme_minimal()
