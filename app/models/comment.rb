class Comment < ActiveRecord::Base
  belongs_to :post

  def self.approved
    where(approved: true)
  end
end
