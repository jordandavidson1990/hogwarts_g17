require( 'sinatra' )
require( 'sinatra/contrib/all' )
# require( 'pry' )
require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/students' do
  @students = Student.all()
  erb(:'/students/index')
end

get '/students/new' do
  @houses = House.all()
  erb(:'/students/new')
end

post '/students' do
  student = Student.new(params)
  student.save()
  redirect(:'/students')
end

get '/students/:id/edit' do
  @student = Student.find_by_id(params[:id])
  @houses = House.all()
  erb(:'/students/edit')
end


get '/students/:id' do
  @student = Student.find_by_id(params[:id])
  erb(:'/students/show')
end


# Houses

get '/houses' do
  @houses = House.all()
  erb(:'/houses/index')
end
