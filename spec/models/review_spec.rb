require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end

  describe '投稿機能' do
    context '投稿できる時' do
      it '適切な情報が入力されていれば商品出品できる' do
        expect(@review).to be_valid
      end
    end
    context '投稿できない時' do
      it '店舗名がなければ投稿できない' do
        @review.store_name = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Store name can't be blank")
      end
      it '設備充実度の情報がなければ投稿できない' do
        @review.facility_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Facility must be other than 1')
      end
      it '客層についての情報がなければ投稿できない' do
        @review.customer_base_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Customer base must be other than 1')
      end
      it 'アクセス情報がなければ投稿できない' do
        @review.access_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Access must be other than 1')
      end
      it '都道府県の情報がなければ投稿できない' do
        @review.prefectures_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Prefectures must be other than 1')
      end
      it '駐輪場の情報がなければ投稿できない' do
        @review.bicycle_parking_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Bicycle parking must be other than 1')
      end
      it '駐車場の情報がなければ投稿できない' do
        @review.parking_lot_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include('Parking lot must be other than 1')
      end
    end
  end
end
