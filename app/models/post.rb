class Post < ApplicationRecord
    validates  :title, presence: true
validates :content, length: {minimum: 250}
validates :summary, length: {maximum: 250}
validates :category, inclusion:  {in: ['Fiction', 'Non-Fiction']}
validate :clickbait,
 
# def clickbait
#  if title.exclude?("Won't Believe" && "Secret" && "Top[/\d/]" && "Guess")
#  else
#     errors.add(:title,"Test")
#  end
# end

def clickbait
if title == "True Facts"
    errors.add(:title, "Test")
    end
end


end
