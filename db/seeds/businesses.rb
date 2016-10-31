Business.delete_all

businesses = [
  {
    name: "A Girl Named Pinky",
    catering: true,
  },
  {
    name: "Aedan Fermented Foods",
    logo: "aedan_fermented_foods.png",
  },
  {
    name: "Alicia’s Tamales Los Mayas",
    catering: true,
  },
  {
    name: "Azalina’s",
    catering: true,
  },
  {
    name: "Bini’s Kitchen",
    logo: "binis_kitchen.png",
    catering: true,
  },
  {
    name: "Chaac Mool",
  },
  {
    name: "Clairesquares",
  },
  {
    name: "D’Maize",
    logo: "d_maize.png",
    catering: true,
  },
  {
    name: "Delicioso Creperie",
    logo: "delicioso_creperie.png",
    catering: true,
  },
  {
    name: "Don Bugito, Prehispanic Snackeria",
    logo: "don_bugito.png",
  },
  {
    name: "El Buen Comer",
    logo: "el_buen_comer.png",
    catering: true,
  },
  {
    name: "El Huarache Loco",
    catering: true,
  },
  {
    name: "El Meson de Violeta",
  },
  {
    name: "El Pipila",
    logo: "el_pipila.png",
    catering: true,
  },
  {
    name: "Endless Summer Sweets",
    catering: true,
  },
  {
    name: "Estrellita’s Snacks",
    logo: "estrellitas_snacks.png",
    catering: true,
  },
  {
    name: "Hella Vegan Eats",
    catering: true,
  },
  {
    name: "Homemade Sabor Latina",
  },
  {
    name: "Inticing Creations",
  },
  {
    name: "Kaleidoscope Living Foods",
  },
  {
    name: "Kika’s Treats",
  },
  {
    name: "La Luna Cupcakes",
    logo: "la_luna_cupcakes.png",
    catering: true,
  },
  {
    name: "Los Cilantros",
    catering: true,
  },
  {
    name: "Love and Hummus Co.",
  },
  {
    name: "Mama Lamees",
    logo: "mama_lamees.png",
    catering: true,
  },
  {
    name: "Mi Morena",
    logo: "mi_morena.png",
    catering: true,
  },
  {
    name: "Minnie Bell’s Soul Movement",
    logo: "minnie_bells_soul_movement.png",
    catering: true,
  },
  {
    name: "Neo Cocoa",
  },
  {
    name: "Noodling",
  },
  {
    name: "Nyum Bai",
    logo: "nyum_bai.png",
    catering: true,
  },
  {
    name: "Onigilly",
    catering: true,
  },
  {
    name: "Origen",
  },
  {
    name: "Oyna Natural Foods",
  },
  {
    name: "Peaches Patties",
    logo: "peaches_patties.png",
    catering: true,
  },
  {
    name: "Peas of Mind",
  },
  {
    name: "Rasoi",
    logo: "rasoi.png",
    catering: true,
  },
  {
    name: "Reem’s",
    logo: "reems.png",
    catering: true,
  },
  {
    name: "Rosies Empanadas",
  },
  {
    name: "Sabores del Sur",
    catering: true,
  },
  {
    name: "Sajen",
  },
  {
    name: "Sal De Vida",
    logo: "sal_de_vida.png",
    catering: true,
  },
  {
    name: "Sariwa",
  },
  {
    name: "Señora Maritza",
    logo: "senora_maritza.png",
  },
  {
    name: "Soul Rosa’s Kitchen",
  },
  {
    name: "Sugarfoot Grits",
    logo: "sugarfoot_grits.png",
    catering: true,
  },
  {
    name: "Super Sauces",
  },
  {
    name: "Sweets Collection",
    logo: "sweets_collection.png",
    catering: true,
  },
  {
    name: "Teranga",
    logo: "teranga.png",
  },
  {
    name: "Zella’s Soulful Kitchen",
    catering: true,
  },
  {
    name: "Zepeda Foods",
  }
]

businesses.each {|b| Business.create!(name: b[:name], logo_url: b[:logo] || "", offers_catering: !!b[:catering])}
