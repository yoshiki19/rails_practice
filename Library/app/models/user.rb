class User < ApplicationRecord
    has_many :rentals
    has_many :books, through: :rentals
    has_many :pictures, as: :imageable
    #has_and_belongs_to_many :books
    validate :email_check
    #valudate :email, email_address:true
    #これはvaludatorクラスで共通の独自ヘルパーを使用する場合

    private
    def email_check
        email_pattern = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
        unless email_pattern.match(self.email)
            errors.add(:email, "正しいメールアドレスを入力してください")
        end
    end
end
