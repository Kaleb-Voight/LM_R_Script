args <- commandArgs(trailingOnly = TRUE)
data = read.csv(args[1])

cat("Example R Script \n \n")

cat("Data Head \n \n")

print(head(data))

Dependent_Variable = data$x
Independent_Variable = data$y

cat("Generating Scatter Plot \n \n")

png(file = paste0("Scatter Plot of ", basename(args[1]), ".png"))
plot(Dependent_Variable, Independent_Variable, main = "Cool Data")

dev.off()

cat("Generating Statistics \n")

LM = lm(data)
summary(LM)
y_predict = predict(LM, data)

cat("Generating Linear Regression \n \n")

png(file = paste0("Regression Plot of ", basename(args[1]), ".png"))
plot(Dependent_Variable, Independent_Variable, main = "Cool Data")
lines(Dependent_Variable, y_predict)

dev.off()