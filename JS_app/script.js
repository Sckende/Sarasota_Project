console.log("Hello world!");

// Récupérer la valeur "Nom du cheval"
let nomCheval = document.getElementById("nomCheval");
console.log(nomCheval.value);

// Ajouter un EventListener pour mettre à jour si modification
nomCheval.addEventListener("change", () => {
    console.log(nomCheval.value);
});

// Récupérer la date des frais
let dateFrais = document.querySelector('input[type="date"]')
console.log(dateFrais.value)

// Ajouter un EventListener pour mettre à jour si modification
dateFrais.addEventListener("change", () => {
    console.log(dateFrais.value);
});


// Récupérer la catégorie de frais
let catFrais = document.getElementById("catFrais");
console.log(catFrais.value);

// Ajouter un EventListener pour mettre à jour si modification
catFrais.addEventListener("change", () => {
    console.log(catFrais.value);
});

// Récupérer le libellé de frais
let libelFrais = document.getElementById("libelFrais");
console.log(libelFrais.value);

// Ajouter un EventListener pour mettre à jour si modification
libelFrais.addEventListener("change", () => {
    console.log(libelFrais.value);
});

// Récupérer les frais
let frais = document.querySelectorAll(".divTarifFrais input");
for(let i =0; i < frais.length; i ++) {
    console.log(frais[i].value)
};


// Récupérer les remarques
let remarques = document.getElementById("remarque");
console.log(remarques.value);

// Ajouter un EventListener pour mettre à jour si modification
remarques.addEventListener("change", () => {
    console.log(remarques.value);
});