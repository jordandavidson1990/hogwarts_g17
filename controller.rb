require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')
also_reload('./models/*')

get '/' do
  erb(:'students/home')
end

get '/students' do
  @students = Student.all()
  erb(:'/students/index')
end

get '/students/new' do
  erb(:'/students/new')
end

post '/students' do
  student = Student.new(params)
  student.save()
  redirect(:'/students')
end


get '/students/:id' do
  @student = Student.find_by_id(params[:id])
  erb(:'/students/show')
end
