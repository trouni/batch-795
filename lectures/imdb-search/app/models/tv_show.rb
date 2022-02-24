class TvShow < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[title synopsis]
end
