class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable
  has_one :payment
  # Разделяет несколько атрибутов с моделью Payment
  accepts_nested_attributes_for :payment
  has_many :images
end
