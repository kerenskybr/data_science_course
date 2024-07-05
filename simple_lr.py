import numpy as np
import pandas as pd
from matplotlib.pyplot import subplots
import statsmodels.api as sm
import statsmodels.api as sm
from statsmodels.stats.outliers_influence import variance_inflation_factor as VIF
from statsmodels.stats.anova import anova_lm
from ISLP import load_data
from ISLP.models import (ModelSpec as MS, summarize, poly)

Boston = load_data("Boston")

X = pd.DataFrame({'intercept' : np.ones(Boston.shape[0]), 'lstat' : Boston['lstat']})
y = Boston['medv']

model = sm.OLS(y, X)
results = model.fit()

print(summarize(results))

# Using transforms
design = MS(['lstat'])
X = design.fit_transform(Boston)

print(results.summary())
print(results.params)

def abline(ax, b, m):
    xlim = ax.get_xlim()
    ylim = [m * xlim[0] + b, m * xlim[1] + b]
    ax.plot(xlim, ylim, *args, **kwargs)