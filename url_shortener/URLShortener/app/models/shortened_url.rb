class ShortenedUrl < ApplicationRecord

    validates :long_url, presence: true
    validates :user_id, presence: true

    belongs_to :submitter,
        foreign_key: :user_id,
        class_name: :User
        
    def self.random_code(url)
        random_code = nil
        while random_code == nil
         random_code = SecureRandom.urlsafe_base64(16)
            if exists?(:short_url => random_code)
                random_code = nil
            end
        end
        random_code
    end

    def self.create(user, long_url)
        ShortenedUrl.create!(
            long_url: long_url,
            short_url: ShortenedUrl.random_code(long_url),
            user_id: user.id
        )
    end

end