class IdeasController < ApplicationController
    def create
        @topic = Topic.find(params[:topic_id])
        @idea = @topic.ideas.create(idea_params)
        @idea.user=current_user
        @idea.save
        redirect_to topic_path(@topic)
    end

    def destroy
        @topic = Topic.find(params[:topic_id])
        @idea = @topic.ideas.find(params[:id])
        @idea.destroy
        redirect_to article_path(@topic)
    end

    private
     def idea_params
        params.require(:idea).permit(:description)
     end

end
