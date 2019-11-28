class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plans, dependent: :destroy
  has_many :activities, through: :plans
  has_one :preference, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  accepts_nested_attributes_for :preference

  before_save :create_preference

  def create_preference
    self.preference ||= build_preference
  end
end
