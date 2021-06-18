class CustomerBase < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ガチ勢' },
    { id: 3, name: '普通' },
    { id: 4, name: '女性' },
    { id: 5, name: '男性' },
    { id: 6, name: '若い方' },
    { id: 7, name: '年配の方' }
  ]

	include ActiveHash::Associations
  has_many :reviews

end