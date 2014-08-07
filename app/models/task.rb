class Task < ActiveRecord::Base

  validates_presence_of :task
  validates_presence_of :title

end