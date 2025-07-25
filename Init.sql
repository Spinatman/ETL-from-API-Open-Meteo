-- Создание базы данных
CREATE DATABASE weather_forecast;

-- Подключение к базе данных
\c weather_forecast;

-- Создание таблицы для хранения прогноза погоды
CREATE TABLE weather_data (
    date DATE PRIMARY KEY,
    avg_temperature_2m_24h FLOAT,
    avg_relative_humidity_2m_24h FLOAT,
    avg_dew_point_2m_24h FLOAT,
    avg_apparent_temperature_24h FLOAT,
    avg_temperature_80m_24h FLOAT,
    avg_temperature_120m_24h FLOAT,
    avg_wind_speed_10m_24h FLOAT,
    avg_wind_speed_80m_24h FLOAT,
    avg_visibility_24h FLOAT,
    total_rain_24h FLOAT,
    total_showers_24h FLOAT,
    total_snowfall_24h FLOAT,
    avg_temperature_2m_daylight FLOAT,
    avg_relative_humidity_2m_daylight FLOAT,
    avg_dew_point_2m_daylight FLOAT,
    avg_apparent_temperature_daylight FLOAT,
    avg_temperature_80m_daylight FLOAT,
    avg_temperature_120m_daylight FLOAT,
    avg_wind_speed_10m_daylight FLOAT,
    avg_wind_speed_80m_daylight FLOAT,
    avg_visibility_daylight FLOAT,
    total_rain_daylight FLOAT,
    total_showers_daylight FLOAT,
    total_snowfall_daylight FLOAT,
    daylight_hours FLOAT,
    sunrise_iso TIMESTAMP WITH TIME ZONE,
    sunset_iso TIMESTAMP WITH TIME ZONE
);

-- Индекс для ускорения поиска по дате
CREATE INDEX idx_weather_data_date ON weather_data (date);