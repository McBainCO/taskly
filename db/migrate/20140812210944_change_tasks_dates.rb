class ChangeTasksDates < ActiveRecord::Migration
  def change
    remove_column :tasks, :date
    add_column :tasks, :time, :date
  end

end
