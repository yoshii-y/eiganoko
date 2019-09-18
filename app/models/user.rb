class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :likes, dependent: :destroy
  has_many :like_comments, through: :likes, source: :comment

  has_many :relationships, dependent: :destroy
  # throughは中間テーブルはrelationshipsだよ、sourceはrelationshipsテーブルのfollow_idを参考にして、followingsモデルにアクセスしてね
  has_many :followings, through: :relationships, source: :follow
  # reverse_of_relationshipsは逆方向の記述、foreign_keyはrelaitonshipsテーブルにアクセスする時、follow_idを入口として来てね！
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  # foreign_keyは入り口、sourceは出口
  has_many :followers, through: :reverse_of_relationships, source: :user

  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy



  def following?(other_user)
    self.followings.include?(other_user)
  end


end
