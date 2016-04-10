class HomeController < ApplicationController
  def show
    @businesses = [
      "Aedan Fermented Foods", "Alicia’s Tamales Los Mayas", "AйDa Piroshki",
      "Bini’s Kitchen", "Chiefo's Kitchen", "Crumble & Whisk", "D’Maize",
      "Delicioso Creperie", "Don Bugito, Prehispanic Snackeria", "Eji’s Ethiopian",
      "El Buen Comer", "El Pipila", "Estrellita’s Snacks", "Hella Vegan Eats",
      "Kaleidoscope Living Foods", "Love and Hummus", "Minnie Bell's Soul Movement",
      "Nyum Bai", "Peaches Patties", "Reem's", "Saint & Olive", "Sal De Vida",
      "Sugarfoot Grits", "Sweets Collection", "Taino’s Puerto Rican Food", "Zepeda Foods"
    ]
  end
end
