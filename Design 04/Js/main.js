const countdown = () => {
    const countDate = new Date("August 17, 2023 00:00:00").getTime();

    const currentTime = new Date().getTime();

    const gap = countDate - currentTime;

    const millisecond = 1;
    const second = millisecond * 1000;
    const minutes = second * 60;
    const hour = minutes * 60;
    const day = hour * 24;

    const textHour = Math.floor((gap % day) / hour);
    const textMinutes = Math.floor((gap % hour) / minutes);
    const textSecond = Math.floor((gap % minutes) / second);
    const textMillisecond = Math.floor((gap % second) / millisecond);

    console.log(textHour);
    console.log(textMillisecond);
    document.querySelector(".hour").innerText = textHour;
    document.querySelector(".minutes").innerText = textMinutes;
    document.querySelector(".seconds").innerText = textSecond;
    document.querySelector(".miliSeconds").innerText = textMillisecond;
};

setInterval(countdown, 250);