class HomeController < ApplicationController

  helper_method :businesses, :businesses_with_locations

  private

  def businesses
    @businesses ||= [
      {
        name: "Aedan Fermented Foods",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Alicia’s Tamales Los Mayas",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "AйDa Piroshki",
        logo: "business_placeholder_logo.png",
        address: "331 Cortland St, SF",
        coordinates: [[37.739307, -122.418002]]
      },
      {
        name: "Bini’s Kitchen",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Chiefo's Kitchen",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Crumble & Whisk",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "D’Maize",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Delicioso Creperie",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Don Bugito, Prehispanic Snackeria",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Eji’s Ethiopian",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "El Buen Comer",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "El Pipila",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Estrellita’s Snacks",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Hella Vegan Eats",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Kaleidoscope Living Foods",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Love and Hummus",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Minnie Bell's Soul Movement",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Nyum Bai",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Peaches Patties",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Reem's",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Saint & Olive",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Sal De Vida",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Sugarfoot Grits",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Sweets Collection",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Taino’s Puerto Rican Food",
        logo: "business_placeholder_logo.png"
      },
      {
        name: "Zepeda Foods",
        logo: "business_placeholder_logo.png"
      }
    ]
  end

  def businesses_with_locations
    businesses.select{ |b| b[:coordinates].present? }
  end
end
