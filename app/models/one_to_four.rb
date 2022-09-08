class OneToFour < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '全くそう思わない' },
    { id: 2, name: 'あまりそう思わない' },
    { id: 3, name: 'そう思うことが多い' },
    { id: 4, name: '全くその通りだと思う' },
  ]
  include ActiveHash::Associations
  has_many :career_anchors

  end