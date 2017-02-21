class Article < ActiveRecord::Base
  belongs_to :category


  # Validations
  validates_presence_of :title, :context

  # Scopes
  scope :active, where('active = ?', true)
  scope :alphabetical, order('caption')

end
