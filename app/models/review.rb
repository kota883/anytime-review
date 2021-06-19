class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :facility
  belongs_to :customer_base
  belongs_to :access
  belongs_to :prefectures
  belongs_to :bicycle_parking
  belongs_to :parking_lot
  belongs_to :crowded_time
  belongs_to :staff

  belongs_to :user
  has_many :comments, dependent: :destroy

  with_options numericality: { other_than: 1 } do
    validates :facility_id, :customer_base_id, :access_id, :prefectures_id, :bicycle_parking_id, :parking_lot_id
  end

  validates :store_name, presence: true
end
