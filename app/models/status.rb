class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '未設定' },
    { id: 2, name: '妊活中' },
    { id: 3, name: 'マタニティ' },
    { id: 4, name: '保活中' },
    { id: 5, name: '育児中' },
    { id: 6, name: 'ママ' },
    { id: 7, name: 'シングルママ' },
    { id: 8, name: '働くママ' }
  ]
end
