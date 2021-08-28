var MainIMG = document.getElementById('mainIMG');
var SmallIMG = document.getElementsByClassName('small-img');

for (let i = 0; i < 4; i++) {
    SmallIMG[i].onclick = function() {
        MainIMG.src = SmallIMG[i].src;
    }
}



async function getdata() {
    const res = await fetch("https://asos2.p.rapidapi.com/products/v2/list?store=US&offset=0&categoryId=4209&limit=48&country=US&sort=freshness&currency=USD&sizeSchema=US&lang=en-US", {
        "method": "GET",
        "headers": {
            "x-rapidapi-host": "asos2.p.rapidapi.com",
            "x-rapidapi-key": "4f8234a62amsh42185b0b78f249cp12e57ajsnb401d01fcbbf"
        }
    })

    const data = await res.json();
    // const varientimages = new Array(data.variantImages)
    document.getElementById('productName').innerText = data.products[1].name;
    document.getElementById('price').innerText = data.products[1].price.current.text;
    document.getElementById('mainIMG').src = "https://images.asos-media.com/products/buffalo-vegan-cloud-chai-chunky-sneakers-in-white/22163116-1-white";
    // document.getElementById('description').innerText = data.feature_bullets;
    document.getElementById('smallIMGOne').src = "https://images.asos-media.com/products/buffalo-vegan-friendly-chunky-sandals-in-white/22163742-1-white";
    document.getElementById('smallIMGTwo').src = "https://images.asos-media.com/products/buffalo-london-chunky-sneakers-in-white-and-black/22163100-1-white";
    document.getElementById('smallIMGThree').src = "https://images.asos-media.com/products/nike-court-vision-low-leather-sneakers-in-white-black/23701799-1-whiteblack";
    document.getElementById('smallIMGFour').src = "https://images.asos-media.com/products/nike-vapormax-2021-flyknit-sneakers-in-white/23119075-1-white";

    console.log(data.products[0].name)
}
getdata()