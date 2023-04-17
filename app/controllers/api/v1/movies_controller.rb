class Api::V1::MoviesController < ApplicationController
  
  def read_csv
    csv_text = File.read('netflix_titles.csv')
    csv = CSV.parse(csv_text, headers: true)

    csv.each do |row|
      Movie.find_or_create_by(
        id: SecureRandom.hex(16),
        title: row['title'],
        genre: row['listed_in'],
        year: row['release_year'],
        country: row['country'],
        published_at: row['date_added'],
        description: row['description']
      )
    end

    render json: { message: "Dados do CSV importados com sucesso!" }
  end

  def index
  end
end