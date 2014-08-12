class Task < ActiveRecord::Base

  validates_presence_of :task
  # validates_presence_of :title


  private

  def self.format_date(date_hash)
    p date_hash
    Date.new(date_hash["year"].to_i,date_hash["month"].to_i,date_hash["day"].to_i)
  end

end