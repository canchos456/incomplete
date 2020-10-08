class HomeController < ApplicationController
    def index
        @posts = Post.all
    end

    def write
 
    end

    def create
        url = Post.new
        url.title = params[:title]
        url.content = value = "http://lms.kr/"; 8.times{value << ((rand(2)==1?65:97) + rand(25)).chr}
        url.save
        redirect_to '/index'
    end
end
