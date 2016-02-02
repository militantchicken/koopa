class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.references :user, index: true
      t.references :event, index: true
      t.timestamp :alert_time

      t.timestamps
    end
  end
end
