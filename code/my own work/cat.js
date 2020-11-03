console.log("INEFFABLE!")

const catElements = []

const body = document.querySelector("body")

// function renderCats(cats){
//   document.querySelector("body").innerHTML += '<div class="cats-list"></div>'
//   cats.forEach(renderCat)
// }

function renderCats(cats) {
    const catsList = document.createElement("div")
    body.appendChild(catsList)
    catsList.outerHTML = '<div class="cats-list">'
    cats.forEach(renderCat)
}

function renderCat(cat) {
    const catsList = document.querySelector(".cats-list")

    const catCard = document.createElement("div")
    catCard.classList.add("cat-card")

    const img = document.createElement("img")
    img.src = cat.image
    img.alt = cat.name

    const name = document.createElement("p")
    name.innerText = cat.name
    name.style.fontWeight = "bold"

    const description = document.createElement("p")
    description.innerText = cat.description

    const actor = document.createElement("p")
    actor.innerText = "Played by " + cat.actor

    catsList.appendChild(catCard)
    catCard.append(img, name, description, actor)
    catElements.push(catCard)
}


// function renderCat(cat){
//   const catsList = document.querySelector(".cats-list")
//   catsList.innerHTML+= `
//   <div class="cat-card">
//     <img src="${cat.image}" alt=${cat.name}/>
//     <p><strong>${cat.name}</strong></p>
//     <p>${cat.description}</p>
//     <p>Played by ${cat.actor}</p>
//   </div>
//   `
// }

renderCats(cats)