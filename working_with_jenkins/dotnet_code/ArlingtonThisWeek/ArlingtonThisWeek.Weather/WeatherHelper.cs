namespace ArlingtonThisWeek.Weather
{
    public static class WeatherHelper
    {
        public static decimal CelsiusToFahrenheit(decimal celsiusTemp)
        {
            return celsiusTemp * 9 / 5 + 32;
        }

        public static decimal FahrenheitToCelsius(decimal fahrenheitTemp)
        {
            return (fahrenheitTemp - 32) * 5 / 9;
        }
    }
}
