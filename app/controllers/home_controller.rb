class HomeController < ApplicationController

  helper_method :businesses, :businesses_with_locations

  private

  def businesses
    @businesses ||= [
      {
        name: "Aedan Fermented Foods",
      },
      {
        name: "Alicia’s Tamales Los Mayas",
      },
      {
        name: "AйDa Piroshki",
        address: "331 Cortland St, SF",
        coordinates: [[37.739307, -122.418002]]
      },
      {
        name: "Bini’s Kitchen",
      },
      {
        name: "Chiefo's Kitchen",
      },
      {
        name: "Crumble & Whisk",
      },
      {
        name: "D’Maize",
      },
      {
        name: "Delicioso Creperie",
      },
      {
        name: "Don Bugito, Prehispanic Snackeria",
      },
      {
        name: "Eji’s Ethiopian",
      },
      {
        name: "El Buen Comer",
      },
      {
        name: "El Pipila",
      },
      {
        name: "Estrellita’s Snacks",
      },
      {
        name: "Hella Vegan Eats",
      },
      {
        name: "Kaleidoscope Living Foods",
      },
      {
        name: "Love and Hummus",
      },
      {
        name: "Minnie Bell's Soul Movement",
      },
      {
        name: "Nyum Bai",
      },
      {
        name: "Peaches Patties",
      },
      {
        name: "Reem's",
      },
      {
        name: "Saint & Olive",
      },
      {
        name: "Sal De Vida",
      },
      {
        name: "Sugarfoot Grits",
      },
      {
        name: "Sweets Collection",
      },
      {
        name: "Taino’s Puerto Rican Food",
      },
      {
        name: "Zepeda Foods"
      }
    ]
  end

  def businesses_with_locations
    businesses.select{ |b| b[:coordinates].present? }
  end
end
