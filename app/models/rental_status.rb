class RentalStatus < ActiveHash::Base
  self.data = [
    {id: 0, name: '利用中'},
    {id: 1, name: '返却済'},
  ]
end
