class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  scope :agents, -> { where role: "agent" }
  scope :customers, -> { where role: "customer" }
  has_one :profile, dependent: :destroy
  has_many :properties, dependent: :destroy
  after_create_commit { broadcast_append_to "users" }
  has_many :messages
end
