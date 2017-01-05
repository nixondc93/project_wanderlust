class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
    
  has_attached_file :avatar,
                    path: ':rails_root/public/system/:attachment/:id/:basename_:style.:extension',
                    default_url: '/assets/missing.png',
                    url: '/system/:attachment/:id/:basename_:style.:extension',
                    styles: {
                        thumb: ['100x100#', :jpg, quality: 70],
                        preview: ['480x480#', :jpg, quality: 70],
                        large: ['600>', :jpg, quality: 70],
                        retina: ['1200>', :jpg, quality: 30]
                    },
                    convert_options: {
                        thumb: '-set colorspace sRGB -strip',
                        preview: '-set colorspace sRGB -strip',
                        large: '-set colorspace sRGB -strip',
                        retina: '-set colorspace sRGB -strip -sharpen 0x0.5'
                    }

  validates_attachment :avatar,
                       size: { in: 0..10.megabytes },
                       content_type: { content_type: /^image\/(jpeg|png|gif|tiff)$/ }
end
