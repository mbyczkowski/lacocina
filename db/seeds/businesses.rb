Business.delete_all

businesses = [
  {
    name: "A Girl Named Pinky",
    website_url: "https://www.facebook.com/AGirlNamedPinky/",
    offers_catering: true,
    logo_url: "a_girl_named_pinky.png",
    description: "Bakery specializing in Custom Cakes"
  },
  {
    name: "Aedan Foods",
    website_url: "http://aedansf.com/",
    offers_catering: false,
    logo_url: "aedan_fermented_foods.png",
    description: "Japanese Fermented Products"
  },
  {
    name: "Alicia's Tamales los Mayas",
    website_url: "http://www.aliciatamaleslosmayas.com/",
    offers_catering: true,
    logo_url: "alicia_tameles.png",
    description: "Tamales Stuffed with Love"
  },
  {
    name: "Azalina's",
    website_url: "http://www.azalinas.com/",
    offers_catering: true,
    logo_url: "azalinas.png",
    description: "Malaysian"
  },
  {
    name: "Banquetes Adonai",
    website_url: "https://www.facebook.com/BanquetesadonaiSf/",
    offers_catering: false,
    logo_url: "banquetes_adonai.png",
    description: "Full-Service Latin offers_catering for Special Events"
  },
  {
    name: "Bini's Kitchen",
    website_url: "http://biniskitchen.com/",
    offers_catering: true,
    logo_url: "binis_kitchen.png",
    description: "Nepalese Food from the Soul"
  },
  {
    name: "Crumble & Whisk Pâtisserie",
    website_url: "http://crumbleandwhisk.com/",
    offers_catering: false,
    logo_url: "crumble_whisk.png",
    description: "Artisan Cheesecakes"
  },
  {
    name: "Chaac Mool",
    website_url: "https://www.facebook.com/ChaacMoolSF/",
    offers_catering: false,
    logo_url: "chaac_mool.png",
    description: "Yucatecan Specialties"
  },
  {
    name: "Clairesquares",
    website_url: "http://www.clairesquares.com/",
    offers_catering: false,
    logo_url: "claire_squares.png",
    description: "Irish Shortbread Squares"
  },
  {
    name: "D'Maize",
    website_url: "http://www.dmaize.com/",
    offers_catering: true,
    logo_url: "d_maize.png",
    description: "Salvadoran Pupusa Restaurant & offers_catering Company"
  },
  {
    name: "Delicioso Creperie",
    website_url: "http://www.deliciosocreperie.com/",
    offers_catering: true,
    logo_url: "delicioso_creperie.png",
    description: "Cafe & Bakery"
  },
  {
    name: "Don Bugito",
    website_url: "http://www.donbugito.com/",
    offers_catering: false,
    logo_url: "don_bugito.png",
    description: "Edible Insect Sweet and Savory Snacks"
  },
  {
    name: "El Buen Comer",
    website_url: "http://www.elbuencomersf.com/",
    offers_catering: true,
    logo_url: "el_buen_comer.png",
    description: "Homestyle Mexican Restaurant"
  },
  {
    name: "El Huarache Loco",
    website_url: "http://www.huaracheloco.com/",
    offers_catering: true,
    logo_url: "el_huarache_loco.png",
    description: "Mexican Restaurant focused on Mexico City Street Foods"
  },
  {
    name: "El Meson de Violeta",
    website_url: "https://www.facebook.com/mesondevioleta/",
    offers_catering: false,
    logo_url: "el_meson_de_violeta.png",
    description: "Chilean Empanadas"
  },
  {
    name: "El Pipila",
    website_url: "http://elpipila.com/",
    offers_catering: true,
    logo_url: "el_pipila.png",
    description: "Guanajuato Mexican Food"
  },
  {
    name: "Endless Summer Sweets",
    website_url: "http://endlesssummersweets.com/",
    offers_catering: true,
    logo_url: "endless_summer.png",
    description: "Carnaval Food for Kids of All Ages"
  },
  {
    name: "Estrellita's Snacks",
    website_url: "http://www.estrellitassnackssf.com/",
    offers_catering: true,
    logo_url: "estrellitas_snacks.png",
    description: "Salvadoran Specialties including pupusas and tostadas"
  },
  {
    name: "Hella Vegan Eats",
    website_url: "http://hellaveganeats.com/",
    offers_catering: true,
    logo_url: "hella_vegan_eats.png",
    description: "Festive Vegan Cuisine"
  },
  {
    name: "Inticing Creations",
    website_url: "http://www.inticingcreations.com/",
    offers_catering: false,
    logo_url: "inticing_creations.png",
    description: "Custom Wedding and Occasion Cakes"
  },
  {
    name: "Kaleidoscope",
    website_url: "http://kaleidoscope-foods.myshopify.com/",
    offers_catering: false,
    logo_url: "kaleidoscope_foods.png",
    description: "Kale Chips"
  },
  {
    name: "Kika's Treats",
    website_url: "http://kikastreats.com/",
    offers_catering: false,
    logo_url: "kikas_treats.png",
    description: "Artisanal Chocolate Covered Treats"
  },
  {
    name: "La Luna Cupcakes",
    website_url: "http://www.lalunacupcakes.com/",
    offers_catering: true,
    logo_url: "la_luna_cupcakes.png",
    description: "Cupcake Bakery"
  },
  {
    name: "Los Cilantros",
    website_url: "http://loscilantrosrestaurant.com/",
    offers_catering: true,
    logo_url: "los_cilantros.png",
    description: "Mexican Restaurant focused on local sourcing"
  },
  {
    name: "Love & Hummus Co.",
    website_url: "http://loveandhummus.com/",
    offers_catering: false,
    logo_url: "love_and_hummus.png",
    description: "Local Organic Hummus"
  },
  {
    name: "Mama Lamees",
    website_url: "http://www.mamalamees.com/",
    offers_catering: true,
    logo_url: "mama_lamees.png",
    description: "Middle Eastern offers_catering"
  },
  {
    name: "Mi Comedor",
    website_url: "https://www.facebook.com/homemadesaborlatino/",
    offers_catering: false,
    logo_url: "mi_comedor.png",
    description: ""
  },
  {
    name: "Mi Morena" ,
    website_url: "https://www.facebook.com/mimorenasf/",
    offers_catering: true,
    logo_url: "mi_morena.png",
    description: "Tacos de Guisado"
  },
  {
    name: "Minnie Bell's Soul Movement",
    website_url: "http://minniebellssoul.com/",
    offers_catering: true,
    logo_url: "minnie_bells_soul_movement.png",
    description: "Soul Food"
  },
  {
    name: "Mission Boriqua",
    website_url: "",
    offers_catering: false,
    logo_url: "mission_boriqua.png",
    description: "Puerto Rican Soul Food"
  },
  {
    name: "Mixiotes",
    website_url: "",
    offers_catering: false,
    logo_url: "mixiotes.png",
    description: ""
  },
  {
    name: "Neo Cocoa",
    website_url: "http://neococoastore.com/",
    offers_catering: false,
    logo_url: "neo_cocoa.png",
    description: "Artisanal truffles and brittles"
  },
  {
    name: "Noodle Girl",
    website_url: "",
    offers_catering: false,
    logo_url: "noodle_girl.png",
    description: "Traditional Vietnamese Noodle Soups"
  },
  {
    name: "Nyum Bai",
    website_url: "http://www.nyumbai.com/",
    offers_catering: true,
    logo_url: "nyum_bai.png",
    description: "Cambodian Food"
  },
  {
    name: "Onigilly",
    website_url: "http://www.onigilly.com/",
    offers_catering: true,
    logo_url: "onigilly.png",
    description: "Japanese Gourmet Rice Balls"
  },
  {
    name: "Origen",
    website_url: "",
    offers_catering: false,
    logo_url: "origen.png",
    description: "Oaxacan Moles and more"
  },
  {
    name: "Oyna Natural Foods",
    website_url: "http://www.oynanaturalfoods.com/",
    offers_catering: false,
    logo_url: "oyna_natural_foods.png",
    description: "Persian Kukus"
  },
  {
    name: "Peaches Patties",
    website_url: "http://www.peachespatties.com/",
    offers_catering: true,
    logo_url: "peaches_patties.png",
    description: "Jamaican Food"
  },
  {
    name: "Peas of Mind",
    website_url: "http://www.peasofmind.com/",
    offers_catering: false,
    logo_url: "peas_of_mind.png",
    description: "Frozen Kids Food"
  },
  {
    name: "Rasoi",
    website_url: "http://rasoikitchen.strikingly.com/",
    offers_catering: true,
    logo_url: "rasoi.png",
    description: "Gujurati Indian Food"
  },
  {
    name: "Reem's",
    website_url: "http://reemscalifornia.com/",
    offers_catering: true,
    logo_url: "reems.png",
    description: "Traditional Arab Street food made with California Love"
  },
  {
    name: "Sabores del Sur",
    website_url: "http://www.saboresdelsursf.com/",
    offers_catering: true,
    logo_url: "sabores_del_sur.png",
    description: "Chilean Cafe specializing in Empanadas and Alfajores"
  },
  {
    name: "Sajen",
    website_url: "http://sajen.com.my/",
    offers_catering: false,
    logo_url: "sajen.png",
    description: "Indonesian Beverages"
  },
  {
    name: "Sal de Vida",
    website_url: "http://www.saldevidagourmet.com/",
    offers_catering: true,
    logo_url: "sal_de_vida.png",
    description: "Flavored Gourmet Salts"
  },
  {
    name: "Sariwa",
    website_url: "",
    offers_catering: false,
    logo_url: "sariwa.png",
    description: "Sustainable Filipino Foods"
  },
  {
    name: "Senora Maritza",
    website_url: "http://www.senoramaritzacatering.com/",
    offers_catering: true,
    logo_url: "senora_maritza.png",
    description: "Colombian Specialties"
  },
  {
    name: "Sugarfoot Grits",
    website_url: "http://www.sugarfootkitchen.com/",
    offers_catering: true,
    logo_url: "sugarfoot_grits.png",
    description: "Southern Specialties"
  },
  {
    name: "Super Sauces",
    website_url: "",
    offers_catering: false,
    logo_url: "super_sauces.png",
    description: "Healthy Sauces made mostly of avocado"
  },
  {
    name: "Sweets Collection",
    website_url: "http://www.sweetscollections.com/",
    offers_catering: true,
    logo_url: "sweets_collection.png",
    description: "Traditional Mexican Decorated Gelatin"
  },
  {
    name: "Teranga",
    website_url: "http://www.terangajuice.com/",
    offers_catering: false,
    logo_url: "teranga.png",
    description: "Senegalese Baobab Juices"
  },
  {
    name: "Zella's Soulful Kitchen",
    website_url: "http://www.zellassoulfulkitchen.com/",
    offers_catering: true,
    logo_url: "zellas.png",
    description: "California Fresh Soul Food"
  },
]

businesses.each { |b| Business.create!(b) }
