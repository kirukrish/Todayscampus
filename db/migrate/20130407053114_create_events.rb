class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :external_url
      t.text :description
      t.date :event_from
      t.date :event_to
      t.decimal :event_fee
      t.decimal :fee_for_per_workshop
      t.boolean :online_event
      t.string :event_address
      t.boolean :active, :default =>  true

      t.timestamps
    end
  end
end
