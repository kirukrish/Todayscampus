class ArticlesController < ApplicationController
	
	def show
		@article = Article.find_by_id(params[:id])
		@similar_articles = Article.similar_articles(@article.id.to_i, @article.category_id)
	end
	
	def search
		q = "%#{params[:q]}%"
		
		if params[:topic_id] && params[:topic_id].present?
			topic = Topic.find_by_id(params[:topic_id])
			@articles = topic.articles.page(params[:page]).per(5)
		else
			@articles = Article.search(q).page(params[:page]).per(5)
	  end
	
		feed_list
	end
	
	def feed_list
		@topics = Topic.all
		#@topic = Topic.find_by_id(rand(1..@topics.count))
		@topic = Topic.last
		@similar_articles = @topic.articles.all_active.limit(5) if @topic
	end
	
	def feed
		# this will be the name of the feed displayed on the feed reader
		topic = Topic.find_by_id(params[:id])
		if topic
			@title = "#{topic.title} - Articles"
			@articles =  topic.articles
		else
			@title = "All Articles"
			@articles =  Article.all_active
		end
		# this will be our Feed's update timestamp
		@updated = @articles.first.updated_at unless @articles.empty?

		respond_to do |format|
			format.atom { render :layout => false }
		end

	end
	
end