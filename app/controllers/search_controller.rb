class SearchController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  auto_complete_for :course, :name
  def index
    
  end
  def search_list
    value = params[:course][:name]
    @courses = Course.find(:all,
      :conditions => ['LOWER(courses.name) LIKE ?',"%#{value.downcase}%"],:include=>[:activities,{:activities=>:resources}],
      :order => 'courses.name ASC')
    render :partial => 'search_list'
  end
end
