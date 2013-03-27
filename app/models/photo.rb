class Photo < ActiveRecord::Base
  attr_accessible :content, :name, :image, :aperture, :iso, :speed
  has_attached_file :image,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :styles => { :medium => "300x300" },
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{image.original_filename}" }
    }
end
