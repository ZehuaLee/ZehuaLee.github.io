---
category: Machine Learning
title: 'Feature Engineering Summary'

---

# Feature Engineering 
Feature engineering costs even more time/energy than building models. According to experience of reading/coding Kaggle's tasks, here's some experience on feature engineering.

## Categorical Features
- difficult to fill missing value. 不易填充
- one-hot encoding.
  One-hot 编码
- give up the whole data row/column( if many missing data exist (> 50% )).
直接舍去缺省过多的行或列(>50%)，
- hash coding. 取哈希值
- label encoding. 对列取编号
- Count encoding. 对取计数
- target encoding (by ratio of y, only for binary classification and regression.)
- Category Embedding (NN to get)
- Nan encoding (treat Nan as a type)
- Polynomial encoding (take features combination instead of feature itself)
- Expend one features to multiple.
- Classifier feature values to a certain categories

## Numerical Features
- easier to fill missing data compared to categories.
- rounding, turn precisions to integers,  削减精度
- Binning, 将数值变量变成类别变量（桶处理）
- Scaling, minmax, sqrt, log.. 
- Imputation, 填充, 将missing value 转为Median, Mean, Ignore, Linear...
- Interactions, +-*/, PCA, create a better feature.

## Timing/Temporal Features
- date, timg...
- turn date into multiple features. date => day_of_week, day_of_month, hour_of_day...

## Spatial Variables
- GPS coordinates, cities, country, address (turn address to latitude, longitude.)
- do clustering on coordinates and then turn to categories.

## Label Engineering
- data transformation, 
- log
- square 
- box-cox 
- turn categories to regression