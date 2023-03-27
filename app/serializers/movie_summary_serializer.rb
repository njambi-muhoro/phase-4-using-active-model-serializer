class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary

  #Explicitly Specifying a Serializer
  def summarIES
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end
