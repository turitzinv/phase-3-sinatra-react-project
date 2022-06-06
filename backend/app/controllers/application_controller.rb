require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get '/libraries' do
    libraries = Library.all
    libraries.to_json(include: [:books])
  end

  get '/libraries/:id' do
    library = Library.find(params[:id])
    library.to_json(include: [:books])
  end

  post '/libraries' do
    libraries = Library.create(
      genre: params[:genre]
    )
    libraries.to_json(include: [:books])
  end

  get '/books' do
    books = Book.all
    books.to_json(include: [:library])
  end

  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json(include: [:library])
  end

  post '/books' do
    library = Library.find_or_create_by(genre: params[:library])
    book = library.books.create(
      title: params[:title],
      author: params[:author],
      year: params[:year],
      read: params[:read]
    )
    book.to_json(include: [:library])
  end

  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end
  
  patch'/books/:id' do
    book = Book.find(params[:id])
    book.update(
      read: params[:read]
    )
    book.to_json(include: [:library])
  end
  

end
