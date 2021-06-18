class Access < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '行きやすい' },
    { id: 3, name: 'まぁ行きやすいやすい' },
    { id: 4, name: 'あまり行きやすくない' },
    { id: 5, name: '行きづらい' }
  ]

  include ActiveHash::Associations
  has_many :reviews
end
