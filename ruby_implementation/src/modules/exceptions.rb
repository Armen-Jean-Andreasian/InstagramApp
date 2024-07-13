class CustomException < StandardError
  @@default_message = nil

  def initialize(message = nil)
    @message = message.nil? ? @@default_message : message
  end

  def to_s
    @message
  end

end

class IncorrectUrlException < CustomException
  @@default_message = "Enter a valid url! \nThe url should start with https://www.instagram.com/p/"
end

class PrivateProfileException < CustomException
  @@default_message = "Can not download media from private profiles."
end

# begin
#   raise IncorrectUrlException.new("wow")
# rescue Exception => exception
#   puts exception.message
# end