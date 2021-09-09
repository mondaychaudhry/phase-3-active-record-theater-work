class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |x|
      x.string :name
      x.integer :members
    end  
  end
end
