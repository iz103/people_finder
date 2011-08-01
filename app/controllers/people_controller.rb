class PeopleController  < ActionController::Base
  layout "application.html.haml"
  
  def index
    @search = Person.search(params[:search])
    @people = @search.all
  end

  # def show
  #   @property = Property.find(params[:id])
  # end
  # 
  # def new
  #   @property = Property.new
  # end
  # 
  # def edit
  #   @property = Property.find(params[:id])
  # end
  # 
  # def create
  #   @property = Property.new(params[:property])
  #   if @property.save
  #     redirect_to(properties_path, :notice => 'Property was successfully created.')
  #   else
  #     render :action => "new"
  #   end
  # end
  # 
  # def update
  #   @property = Property.find(params[:id])
  #   if @property.update_attributes(params[:property])
  #      redirect_to(@property, :notice => 'Property was successfully updated.')
  #    else
  #      render :action => "edit"
  #    end
  # end
  # 
  # def destory
  #   @property = Property.find(params[:id])
  #   @property.destroy
  #   redirect_to properties_path
  # end

end