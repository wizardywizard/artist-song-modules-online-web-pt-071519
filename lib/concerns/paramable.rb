module Paramable
  module ClassMethod
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
end