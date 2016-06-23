class User < ActiveRecord::Base
  has_many :projects, through: :account, foreign_key: :creator_id
  has_one :account

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_create :create_account

  def create_account
  	Account.create(user_id: self.id) 
  end
end