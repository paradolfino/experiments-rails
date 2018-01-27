class SentencesController < ApplicationController
    
    before_action :set_sentence, only: [:show, :update, :destroy]

  # GET /sentences
  def index
    @sentences = Sentence.all
    json_response(@sentences)
  end

  # POST /sentences
  def create
    @sentence = Sentence.create!(sentence_params)
    json_response(@sentence, :created)
  end

  # GET /sentences/:id
  def show
    json_response(@sentence)
  end

  # PUT /sentences/:id
  def update
    @sentence.update(sentence_params)
    head :no_content
  end

  # DELETE /sentences/:id
  def destroy
    @sentence.destroy
    head :no_content
  end

  private

    def sentence_params
        # whitelist params
        params.permit(:english, :single, :plural, :definite, :definite_plural)
    end

    def set_sentence
        @sentence = Sentence.find(params[:id])
    end
end
