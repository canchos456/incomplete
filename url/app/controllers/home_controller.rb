class HomeController < ApplicationController
    def index
        @posts = Post.page(params[:page]).per(5)

    end

    def write
 
    end

    def create
        a = Post.new
        a.title = params[:title]  
        a.content = value = "http://lms.kr/"; 8.times{value << ((rand(2)==1?65:97) + rand(25)).chr}
        a.save
        redirect_to '/index'
    end

    def del
        Post.destroy(params[:post_id])

        redirect_back(fallback_location:"/")

    end
    
  

    #def write2

    #end

    #def create2  
        #url = Post.new
       # url.content3 = params[:content3]
      #  url.save
     #   redirect_to '/index'
    #end  

    def show
        
    end
end
