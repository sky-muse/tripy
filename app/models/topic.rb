class Topic < ApplicationRecord
  # validates :user_id, presence: true
  # validates :image_id, presence: true
  validates :description, presence: true
  validates :action, presence: true
  validates :price, presence: true
  validates :area, presence: true

  belongs_to :user
  has_many :images
  # mount_uploader :image, ImageUploader

  enum action: { eat: 0, go_around: 1, stay: 2 }

  enum area: { hokkaido: 0, aomori: 1, iwate: 2, miyagi: 3, akita: 4, yamagata: 5, fukushima: 6, ibaraki: 7,
    tochigi: 8, gunma: 9, saitama: 10, chiba: 11, tokyo: 12, kanagawa: 13, niigata: 14, toyama: 15, ishikawa: 16,
    fukui: 17, yamanashi: 18, nagano: 19, gihu: 20, shizuoka: 21, aichi: 22, mie: 23, shiga: 24, kyoto: 25,
    osaka: 26, hyogo: 27, nara: 28, wakayama: 29, tottori: 30, shimane: 31, okayama: 32, hiroshima: 33,
    yamaguchi: 34, tokushima: 35, kagawa: 36, ehime: 37, kouchi: 38, fukuoka: 39, saga: 40, nagasaki: 41,
    kumamoto: 42, ooita: 43, miyazaki: 44, kagoshima: 45, okinawa: 46 }

  enum price: { less_than_1000: 0, less_than_3000: 1, less_than_5000: 2, less_than_10000: 3, less_than_30000: 4, more_than_30000: 5}

end
