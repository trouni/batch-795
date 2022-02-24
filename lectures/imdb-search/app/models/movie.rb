class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch::Model
  multisearchable against: %i[title synopsis]

  pg_search_scope :search_by_title_and_synopsis,
                  against: %i[title synopsis],
                  associated_against: {
                    director: %i[first_name last_name]
                  },
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
