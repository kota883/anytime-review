class Facility < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'とても薦めたい' },
    { id: 3, name: 'まぁ薦めたい' },
    { id: 4, name: 'あまり薦めたくない' },
    { id: 5, name: '全く薦めたくない' }
  ]

	include ActiveHash::Associations
  has_many :reviews

end