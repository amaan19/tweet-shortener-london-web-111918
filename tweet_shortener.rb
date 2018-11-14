# Write your code here.
require 'pry'
def dictionary
  dictionary = {"hello" => "hi",
                "to" => 2,
                "too" => 2,
                "two" => 2,
                "four" => 4,
                "for" => 4,
                "be" => "b",
                "you" => "u",
                "at" => "@",
                "and" => "&"
}
end

def word_substituter(tweets)
  x = tweets.split()
  y = dictionary.keys.flatten
  z = dictionary.values
  w = []
  x.each do |word|
if dictionary[word.downcase]
   w << dictionary[word.downcase]
else
  w << word


    end
  end
      w.join(" ")
  end

def bulk_tweet_shortener(tweets)
 tweets.each do |x|
   puts word_substituter(x)
end
end

def selective_tweet_shortener(tweet)
   if tweet.length > 140

     return word_substituter(tweet)
   else
     return tweet
 end
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  if tweet.length > 140
  return tweet[0..136] + "..."
else
  return tweet
end
end
