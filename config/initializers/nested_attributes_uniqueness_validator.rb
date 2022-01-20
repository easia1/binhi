
class NestedAttributesUniquenessValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    value = value.reject(&:_destroy) # let's ignore the items to be destroyed here
    unless value.map(&options[:field]).uniq.size == value.size
      record.errors[attribute] << "must be unique"
      duplicates = value - Hash[value.map{|obj| [obj[options[:field]], obj]}].values
      duplicates.each { |obj| obj.errors[options[:field]] << "has already been taken" }
    end
  end
end
