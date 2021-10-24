class PeopleController < ApplicationController
  layout 'people'

  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end

  def new
    @msg = "add new data."
    @person = Person.new
  end

  def create
    if request.post? then
     Person.create(person_params)
    end
    redirect_to '/people'
  end

  def edit
    @msg = " edit data.[id = " + params[:id] + "] "
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    if obj.save
      redirect_to '/people'
    end
  end

  def find
    @msg = 'please type search word...'
    @people = Array.new
    if request.post? then
      obj = Person.find params['find']
      @people.push obj
    end
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
