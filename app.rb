require('sinatra')
require('sinatra/reloader')
require('.lib/triangle_class')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle_class') do
  side1 = params.fetch('side1')
  side2 = params.fetch('side2')
  side3 = params.fetch('side3')
  @MyTriangle = MyTriangle.new(side1, side2, side3)
  erb(:triangle_class)
end
