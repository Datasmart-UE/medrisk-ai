# 🫀 MedRisk AI — Predicción Multimodal de Riesgo Cardiovascular

> Proyecto de ciencia de datos que combina ML clásico, análisis de supervivencia y NLP  
> para predecir riesgo cardiovascular a 10 años usando el dataset Framingham Heart Study.

---

## 🎯 Objetivo
Predecir la probabilidad de enfermedad coronaria a 10 años (`TenYearCHD`) aplicando
múltiples métodos y comparando su rendimiento de forma rigurosa.

---

## 🔬 Métodos aplicados

| Módulo | Método | Lenguaje |
|--------|--------|----------|
| EDA | Estadística descriptiva, correlaciones, visualizaciones | Python |
| Preprocesamiento | Imputación, SMOTE, normalización | Python |
| ML Clásico | Logistic Regression, Random Forest, XGBoost, SVM | Python |
| Supervivencia | Cox PH, Kaplan-Meier, Random Survival Forest | R |
| Explicabilidad | SHAP, LIME, Partial Dependence Plots | Python |

---

## 📁 Estructura del proyecto

    medrisk-ai/
    ├── data/                  
    ├── notebooks/
    │   ├── 01_EDA.ipynb         ✅ Análisis exploratorio
    │   ├── 02_features.ipynb    🔄 Feature Engineering
    │   ├── 03_models.ipynb      🔄 Modelos ML
    │   └── 04_survival.R        🔄 Análisis de supervivencia
    ├── reports/
    │   └── EDA_visualizaciones.png
    └── src/
---

## 📊 Dataset
- **Fuente**: Framingham Heart Study (Kaggle)
- **Tamaño**: 4,240 pacientes, 16 variables clínicas
- **Variable objetivo**: `TenYearCHD` (riesgo coronario a 10 años)
- **Desbalance**: 85% sin riesgo / 15% con riesgo

---

## 🚀 Cómo ejecutar

```bash
git clone https://github.com/Datasmart-UE/medrisk-ai.git
cd medrisk-ai
conda create -n medrisk python=3.11 -y
conda activate medrisk
pip install -r requirements.txt
jupyter notebook
```

---

## 📈 Resultados (en progreso)

| Modelo | AUC-ROC |
|--------|---------|
| Logistic Regression | 🔄 |
| Random Forest | 🔄 |
| XGBoost | 🔄 |
| Ensemble | 🔄 |

---

## 👤 Autor
**Datasmart-UE** · [GitHub](https://github.com/Datasmart-UE)

---

## 📜 Licencia
MIT