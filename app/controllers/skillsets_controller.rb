class SkillsetsController < ApplicationController
    before_action :find_skillset, only: [:show, :edit, :update, :destroy]
    def index
        @skillsets = Skillset.all.order(:name)
    end
    
    def show
    end
    
    def new
        @skillset = Skillset.new
    end
    
    def create
        @skillset = Skillset.new(skillset_params)
        if @skillset.save
            redirect_to @skillset
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @skillset.update(skillset_params)
            redirect_to @skillset
        else
            render 'edit'
        end
    end
    
    def destroy
        @skillset.destroy
        redirect_to root_path
    end
    
    
    private
    
    def skillset_params
        params.require(:skillset).permit(:name, :group)
    end
    
    def find_skillset
        @skillset = Skillset.find(params[:id])
    end

end