class Payment < ActiveRecord::Base
  belongs_to :student

  def self.month_columns
    [:january, :february, :march, :april, 
    :may, :june, :july, :august, 
    :september, :october, :november, :december]
  end
end
