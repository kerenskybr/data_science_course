import pandas as pd
import numpy as np
import matplotlib
import matplotlib.pyplot as plt

matplotlib.use('qt5agg')

df = pd.read_csv("dataframe_saved_v1.csv", parse_dates = ["Data"])

#print(df.head())

cols = ["Data", "Distancia", "Tempo"]
df.columns = cols

#print(df.head())

df.rename(columns = {df.columns[0]:"Data"}, inplace=True)
df.set_index("Data", inplace = True)

print(df.head())

df.plot()
#plt.show()

tempo_idx_0 = df.Tempo.iloc[0]

def calcula_total_segundos(time):
    if time is np.nan:
        return np.nan
    hrs, mins, secs = str(time).split(":")
    secs = int(secs) + 60 * int(mins) + 60 * 60 * int(hrs)
    return secs

print(calcula_total_segundos(tempo_idx_0))

df["Segundos"] = df.Tempo.map(calcula_total_segundos)

print(df.head(10))

df.fillna(0).describe()

df["Minutos"] = df["Segundos"].map(lambda x:x / 60)

df.fillna(0).describe()
print(df.head(10))


df.plot(x = "Distancia", y = "Minutos", kind = "scatter")
#plt.show()

print("DF", df.head(10))
df.drop("Tempo", axis=1, inplace=True)

print(df.corr())
print(df.corr(method="spearman"))
print(df.corr(method="kendall"))

df["Min_Por_Km"] = df["Minutos"] / df["Distancia"]
df.fillna(0).describe()

df.plot(x = "Distancia", y="Min_Por_Km", kind = "scatter")
plt.ylabel("Minutos / Km")

df.hist("Min_Por_Km")

#df["Distancia"].plot()
#pd.rolling_mean(df["Distancia"], 7).plot()
rolling_mean = df["Distancia"].rolling(window=7).mean()
rolling_mean.plot()
plt.show()
