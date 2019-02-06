class CreateSleepCalcs < ActiveRecord::Migration[5.0]
  def change
    create_table :sleep_calcs do |t|

      t.timestamps
    end
  end
end
