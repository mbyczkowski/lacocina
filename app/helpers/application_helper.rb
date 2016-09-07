module ApplicationHelper
  def responsive_image_tag(default_name, options={})
    large_name = default_name.gsub(%r{\.\w+$}, '_large\0')
    medium_name = default_name.gsub(%r{\.\w+$}, '_medium\0')
    small_name = default_name.gsub(%r{\.\w+$}, '_small\0')
    image_tag "","data-interchange" => "[#{asset_path(large_name)}, large],[#{asset_path(medium_name)}, only screen and (min-width: 40.063em) and (max-width: 64em)],[#{asset_path(small_name)}, only screen and (max-width: 40em)]"
  end

  def menu_items
    [
      {
        name: 'About us',
        url: '#',
        submenu: [
          {
            name: 'Mission',
            url: '/mission',
          },
          {
            name: 'People',
            url: '/people',
          },
          {
            name: 'Press',
            url: '/press',
          }
        ]
      },
      {
        name: 'Get Involved',
        url: '#',
        submenu: [
          {
            name: 'Donate',
            url: '/donate'
          },
          {
            name: 'Volunteer',
            url: '/volunteer'
          },
          {
            name: 'Other Ways',
            url: '/other_ways_to_help'
          }
        ]
      },
      {
        name: 'Events',
        url: '/events'
      },
      {
        name: 'Start A Business',
        url: '#',
        submenu: [
          {
            name: 'Learn More & Apply',
            url: '/coming_soon'
          },
          {
            name: 'Resources For Business Owners',
            url: '/coming_soon'
          }
        ]
      },
      {
        name: 'Cater With Us',
        url: '/catering'
      },
      {
        name: 'Shop',
        url: 'http://lacocinastore.mybigcommerce.com'
      }
    ]
  end

  def businesses
      @businesses ||= [
      {
          name: "Aedan Fermented Foods",
          logo: "aedan_fermented_foods.png",
          info: "The mission of La Cocina is to cultivate low income food entrepreneurs as they formalize and grow their by providing affordable commercial kitchen space, industry-specific technical assistance and access to market opportunities."
      },
      #      {
      #        name: "Alicia’s Tamales Los Mayas",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      #      {
      #        name: "AйDa Piroshki",
      #        logo: "business_placeholder_logo.png",,
      #        info: "Basic Info"
      #        address: "331 Cortland St, SF",
      #        coordinates: [[37.739307, -122.418002]]
      #      },
      {
          name: "Bini’s Kitchen",
          logo: "binis_kitchen.png",
          info: "Basic Info"
      },
      #      {
      #        name: "Chiefo's Kitchen",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      {
          name: "Crumble & Whisk",
          logo: "crumble_whisk_patisserie.png",
          info: "Basic Info"
      },
      {
          name: "D’Maize",
          logo: "d_maize.png",
          info: "Basic Info"
      },
      {
          name: "Delicioso Creperie",
          logo: "delicioso_creperie.png",
          info: "Basic Info"
      },
      {
          name: "Don Bugito, Prehispanic Snackeria",
          logo: "don_bugito.png",
          info: "Basic Info"
      },
      #      {
      #        name: "Eji’s Ethiopian",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      {
          name: "El Buen Comer",
          logo: "el_buen_comer.png",
          info: "Basic Info"
      },
      {
          name: "El Pipila",
          logo: "el_pipila.png",
          info: "Basic Info"
      },
      {
          name: "Estrellita’s Snacks",
          logo: "estrellitas_snacks.png",
          info: "Basic Info"
      },
      #      {
      #        name: "Hella Vegan Eats",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      #      {
      #        name: "Kaleidoscope Living Foods",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      #      {
      #        name: "Love and Hummus",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      {
          name: "La Luna Cupcakes",
          logo: "la_luna_cupcakes.png",
          info: "Basic Info"
      },
      {
          name: "Mama Lamees",
          logo: "mama_lamees.png",
          info: "Basic Info"
      },
      {
          name: "Mi Morena",
          logo: "mi_morena.png",
          info: "Basic Info"
      },
      {
          name: "Minnie Bell's Soul Movement",
          logo: "minnie_bells_soul_movement.png",
          info: "Basic Info"
      },
      {
          name: "Nyum Bai",
          logo: "nyum_bai.png",
          info: "Basic Info"
      },
      {
          name: "Peaches Patties",
          logo: "peaches_patties.png",
          info: "Basic Info"
      },
      {
          name: "Rasoi",
          logo: "rasoi.png",
          info: "Basic Info"
      },
      {
          name: "Reem's",
          logo: "reems.png",
          info: "Basic Info"
      },
      #      {
      #        name: "Saint & Olive",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      {
          name: "Sal De Vida",
          logo: "sal_de_vida.png",
          info: "Basic Info"
      },
      {
          name: "Señora Maritza",
          logo: "senora_maritza.png",
          info: "Basic Info"
      },
      {
          name: "Sugarfoot Grits",
          logo: "sugarfoot_grits.png",
          info: "Basic Info"
      },
      {
          name: "Sweets Collection",
          logo: "sweets_collection.png",
          info: "Basic Info"
      },
      #      {
      #        name: "Taino’s Puerto Rican Food",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      },
      {
          name: "Teranga",
          logo: "teranga.png",
          info: "Basic Info"
      }#,
      #      {
      #        name: "Zepeda Foods",
      #        logo: "business_placeholder_logo.png",
      #        info: "Basic Info"
      #      }
      ]
  end

  def businesses_with_locations
      businesses.select{ |b| b[:coordinates].present? }
  end
end
