class FilesApp < ActiveRecord::Base
  has_attached_file :avatar, styles: { thumb: ["100x100>", :png] }, default_url: "/images/:style/missing.png"
  validates_attachment :avatar, content_type: { content_type: ["application/pdf", "image/jpeg", "image/gif", "image/png"] }
end
