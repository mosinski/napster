class Fortune < ActiveRecord::Base
  validates :tekst, length: { maximum: 5000 }
  validates :wykonawca, length: { in: 2..20 }, allow_blank: true
  validates :tytul, length: { in: 2..20 }, allow_blank: true
  validates :album, length: { maximum: 20 }
end
