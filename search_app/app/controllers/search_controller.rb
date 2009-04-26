# This Class is used For Searching the List of Data Available in the Database.
# Using the Plugin Auto Complete.
class SearchController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  auto_complete_for :course, :name
  
  #This is the Default Action called.
  def index
    
  end
  
  #This Action used for Finding the list of data available in the database for the Course name With the Value user typed after 3 Character.
  
  def search_list
    value = params[:course][:name]
    @courses = Course.find(:all,
      :conditions => ['LOWER(courses.name) LIKE ?',"%#{value.downcase}%"],:include=>[:activities,{:activities=>:resources}],
      :order => 'courses.name ASC')
    render :partial => 'search_list'
  end
end
