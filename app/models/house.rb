class House < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
end