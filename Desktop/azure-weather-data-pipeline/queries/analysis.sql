SELECT *
FROM OPENROWSET(
    BULK 'https://cloudbasedadlsweather.dfs.core.windows.net/gold/weather_summary/*.parquet',
    FORMAT='PARQUET'
) AS data;
