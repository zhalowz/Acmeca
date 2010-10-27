class Iphoto < ActiveRecord::Base
  belongs_to :installation

  has_attached_file :data, :styles => { :small => "100x100>", :medium => "300x300>" }
  validates :data,  :presence => true
  def self.destroy_pics(installation, iphotos)
    Iphoto.find(iphotos, :conditions => {:installation_id => installation}).each(&:destroy)
  end
end
 
