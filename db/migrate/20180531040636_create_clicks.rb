class CreateClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :clicks do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :user_agent

      t.timestamps
    end
  end
end
