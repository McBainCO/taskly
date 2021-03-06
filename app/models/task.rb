class Task < ActiveRecord::Base
  belongs_to :task_list

  validates :task, presence: { message: "Your task could not be created"}



  private

  def self.format_date(date_hash)
    p date_hash
    Date.new(date_hash["year"].to_i,date_hash["month"].to_i,date_hash["day"].to_i)
  end

end