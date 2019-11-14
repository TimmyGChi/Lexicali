require 'sinatra'
require './special_lexicon.rb'

set :haml, :format => :html5

configure do
  set :lexicon, SpecialLexicon.new
end

get '/' do
	p 'This is the home page'
  haml :index
end

get '/anagrams/:word' do
  list = settings.lexicon.get_anagrams(params[:word])
  if list == nil
  	list = []
  end
  haml :output, :locals => {:list => list}
end

get '/prefixed/:pre' do
  list = settings.lexicon.get_prefixed_words(params[:pre])
  if list == nil
  	list = []
  end
  haml :output, :locals => {:list => list}
end

get '/word_ladder/:start/:end' do
  list = settings.lexicon.get_word_ladder(params[:start], params[:end])
  if list == nil
  	list = []
  end
  haml :output, :locals => {:list => list}
end
