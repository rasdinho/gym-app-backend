class ApplicationController < ActionController::API

    def secret_key #this our key noy anyone can code a token
        "hello" # could be anything
    end


    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
      end
      #given a token "abc.123" => payload {user_id: ?}
      def decode(token)
        JWT.decode(token, secret_key, true, {algorithm: "HS256"})[0]
      end
end
