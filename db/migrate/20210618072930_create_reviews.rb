class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user,                foreign_key: true
      t.text       :store_name,          null: false
      t.text       :facility,            null: false
      t.integer    :customer_base_id,    null: false
      t.integer    :access_id,           null: false
      t.integer    :prefectures_id,      null: false
      t.integer    :bicycle_parking_id,  null: false
      t.integer    :parking_lot_id,      null: false
      t.integer    :crowded_time_id
      t.integer    :staff_id
      t.text       :text
      t.timestamps
    end
  end
end
