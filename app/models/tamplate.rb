class Tamplate < ApplicationRecord
  validates :templ_type, presence: true, length: { minimum: 1 }
  validates :koef,presence: true, length: { minimum: 1 }
  validates :name,presence: true, length: { minimum: 2 }
  validates :chernovik,presence: true, length: { minimum: 2 }
  validates :opisanie,presence: true, length: { minimum: 2 }
  

end
