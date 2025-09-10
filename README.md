# Statistical-kit

A comprehensive R toolkit for statistical analysis and data science workflows.  
This repository provides modular scripts, utilities, RMarkdown notebooks, and a Shiny app to support learning and practice in applied statistics.

## Features

- **Regression**: Linear, Logistic, Ridge, and Lasso
- **Classification**: LDA, QDA, k-Nearest Neighbors
- **Clustering**: K-means, Hierarchical
- **Dimension Reduction**: Principal Component Analysis (PCA)
- **Time Series**: ARIMA, ETS forecasting
- **Hypothesis Testing**: t-test, ANOVA, Chi-square
- **Resampling**: Cross-validation with caret
- **Feature Engineering**: Encoding and scaling
- **Utilities**: Data loading, plotting helpers, and metrics
- **Notebooks**: RMarkdown templates for EDA, modeling, and forecasting
- **Shiny App**: Interactive data explorer

## Getting Started

### 1. Install Required Packages
```bash
Rscript install_packages.R
```

### 2. Run Example Algorithms
```bash
Rscript scripts/algorithms/regression/linear_regression.R
Rscript scripts/algorithms/classification/lda_qda.R
Rscript scripts/algorithms/time_series/arima.R
```

### 3. Render RMarkdown Notebooks
```bash
Rscript -e "rmarkdown::render('notebooks/01_eda_template.Rmd')"
```

### 4. Launch Shiny App
```bash
Rscript -e "shiny::runApp('shiny')"
```

### Repository Structure
```bash
statistical-kit/
  data/                  # Sample datasets
  scripts/algorithms/    # Statistical methods
  utils/                 # Helper functions
  notebooks/             # RMarkdown templates
  docs/                  # Cheatsheets and documentation
  shiny/                 # Shiny application
  install_packages.R     # Dependency installer
  README.md
  LICENSE
```

## License
This project is licensed under the MIT License. See the LICENSE file for details.
