require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateRosters < ActiveRecord::Migration
  
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :rosters do |t|
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end

end
