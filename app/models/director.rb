# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  validates(:name, presence: true)

  has_many(:get_films, foreign_key: "director_id", class_name: "Movie")

  # def get_films
  #   Movie.where({ :director_id => self.id})
  # end
end
