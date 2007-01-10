class Comment < ActiveRecord::Base
  belongs_to :verse
  belongs_to :person
  has_many :actions
  
  acts_as_logger LogItem
  
  def admin?(person)
    person.admin? or self.person == person
  end
end
