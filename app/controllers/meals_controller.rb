class MealsController < ApplicationController

def index
	@meals = Meal.all
end

def new
end

def create
	newmeal = Meal.new
	newmeal.name = params[:name]
	newmeal.restaurant = params[:rest_name]
	year = params[:meal_date][:year].to_f
	month = params[:meal_date][:month].to_f
	day = params[:meal_date][:day].to_f
	if params[:No_date] == "1"
		newmeal.date=nil
	else
		newmeal.date = Date.new(year, month, day)
	end
	newmeal.notes = params[:notes]
	newmeal.link = params[:link_meal]
	
	newmeal.save

	redirect_to new_meal_path
end

end