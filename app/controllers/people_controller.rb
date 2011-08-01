class PeopleController  < ActionController::Base
  layout "application.html.haml"
  
  def index
    @search = Person.search(params[:search])
    @people = @search.all
  end

end