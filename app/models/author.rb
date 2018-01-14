class Author
  include Mongoid::Document
  field :name
  field :_id, default: ->{ name }
  validates_uniqueness_of :name
  has_many :articles
end
