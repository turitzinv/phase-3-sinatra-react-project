class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #get "/" do
  #  { message: "Good luck with your project!" }.to_json
  #end

  #Select drop down to see all libraries? 
  #Or general page showing all libraries and books?
  get '/libraries' do
    libraries = Library.all
    libraries.to_json
  end

  post '/libraries' do
    libraries = Library.new(params[:library])
  end

  get '/books' do
    books = Book.all
    books.to_json
  end

  post '/books' do
    book = Book.new(params[:book])
    book.to_json
  end

  delete '/books' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end

  patch'/books/:id' do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      author: params[:author],
      genre: params[:genre],
      year: params[:year],
      read: params[:read]
      library_id: params[:library_id]
    )
    book.to_json
  end
  

end
