async function getdata() {
    var inputVal = document.getElementById("searchTxt").value;

    const res = await fetch(
        "https://weatherapi-com.p.rapidapi.com/current.json?q=q=" + inputVal, {
            method: "GET",
            headers: {
                "x-rapidapi-host": "weatherapi-com.p.rapidapi.com",
                "x-rapidapi-key": "4f8234a62amsh42185b0b78f249cp12e57ajsnb401d01fcbbf",
            },
        }
    );
    getWeekDay();
    const data = await res.json();
    document.getElementById("location").innerText = data.location.name;
    document.getElementById("locationParts").innerText =
        data.location.region + " , " + data.location.country;
    document.getElementById("dateTime").innerText =
        data.location.localtime.substr(0, 10);
    document.getElementById("txtWord").innerText = data.current.condition.text;
    document.getElementById("humidity").innerText =
        "Humidity: " + data.current.humidity + "%";
    document.getElementById("precipitation").innerText =
        "Precipitation: " + data.current.precip_mm + "%";
    document.getElementById("wind").innerText =
        "Wind: " + data.current.wind_kph + "km/h";
    document.getElementById("temperatureC").innerText =
        data.current.temp_c + " C";
    document.getElementById("temperatureF").innerText =
        data.current.temp_f + " F";
    document.getElementById("weatherIcon").src =
        "https:" + data.current.condition.icon;
}

function getWeekDay() {
    const weekday = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
    ];
    const d = new Date();
    let day = weekday[d.getDay()];
    document.getElementById("weekDay").innerText = day;
}