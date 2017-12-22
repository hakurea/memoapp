class PostsController < ApplicationController
	# Create
	## 1. 사용자가 글을 작성하는 화면
	def new
		#포스트 객체 생성해서 post에 담음
		@post = Post.new
	end

	# action
	## 글 저장, 다시 리다이렉트
	def create
	#params['post']
	@post = Post.new
	@post.title = params['post'][:title]
	@post.content = params['post']['content']
	@post.save
	redirect_to @post
	#정보받아서 저장

	end

	# Read	
	##2. 사용자에게 글 목록을 보여주는 화면
	def index
		@posts = Post.order(created_at: :DESC).page(params[:page]).per(20)
	end

	## 사용자가 글을 보는 화면
	def show
		@id = params[:id]
		@post = Post.find(@id)
	end

	#Update
	#사용자가 글을 수정하는 화면
	def edit
		@post = Post.find params[:id]
	end

	def update
		@post = Post.find params[:id]
		@post.title = params['post'][:title]
		@post.content = params['post']['content']
		@post.save
		redirect_to @post
	end

	#Destroy
	def destroy
		@post = Post.find params[:id]
		@post.destroy
		redirect_to root_path
	end	

end
