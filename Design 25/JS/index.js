// set the date and time
function realTime() {
  let dt = new Date();
  document.getElementById("date-time").innerHTML = dt.toLocaleString();
}
setInterval(realTime, 1000);

btn.addEventListener("click", () => {
  searchItem = document.getElementById("search").value;
  window.location.href = `https://www.google.com/search?q=${searchItem}`;
});
