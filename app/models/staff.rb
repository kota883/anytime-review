class Staff < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'とても良い' },
    { id: 3, name: '良い' },
    { id: 4, name: 'あまり良くない' },
    { id: 5, name: '全く良くない' }
  ]

  include ActiveHash::Associations
  has_many :reviews
end
