# ============================================
# MedRisk AI — Análisis de Supervivencia
# ============================================

library(survival)
library(survminer)
library(ggplot2)
library(dplyr)

# Cargar datos
df <- read.csv("../data/framingham_clean.csv")
cat("✅ Datos cargados:", nrow(df), "filas\n")

# Kaplan-Meier por sexo
km_fit <- survfit(Surv(age, TenYearCHD) ~ male, data = df)

png("../reports/kaplan_meier.png", width=800, height=600, res=120)
ggsurvplot(km_fit,
           data = df,
           pval = TRUE,
           conf.int = TRUE,
           legend.labs = c("Mujer", "Hombre"),
           title = "MedRisk AI — Curvas de Supervivencia por Sexo",
           xlab = "Edad",
           ylab = "Probabilidad sin evento",
           palette = c("#e74c3c", "#3498db"))
dev.off()
cat("✅ Kaplan-Meier guardado\n")

# Modelo Cox
cox_model <- coxph(Surv(age, TenYearCHD) ~ male + sysBP + glucose + 
                   cigsPerDay + BMI + diabetes, data = df)
cat("\n=== MODELO COX ===\n")
print(summary(cox_model))