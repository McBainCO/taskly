class TaskList < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :title

end