class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
end

  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups
  has_many :posts
end
