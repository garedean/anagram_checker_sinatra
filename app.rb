require('sinatra')
require('sinatra/reloader')
require('./lib/anagram_checker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/finished_product') do
    target = params.fetch('target')
    arg_1 = params.fetch('arg1')
    arg_2 = params.fetch('arg2')
    arg_3 = params.fetch('arg3')
    @anagrams = target.get_anagrams(arg_1, arg_2, arg_3)
    erb(:finished_product)
end
