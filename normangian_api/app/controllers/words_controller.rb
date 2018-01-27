class WordsController < ApplicationController

    before_action :set_word, only: [:show, :update, :destroy]

  # GET /words
  def index
    @words = word.all
    json_response(@words)
  end

  # POST /words
  def create
    @word = word.create!(word_params)
    json_response(@word, :created)
  end

  # GET /words/:id
  def show
    json_response(@word)
  end

  # PUT /words/:id
  def update
    @word.update(word_params)
    head :no_content
  end

  # DELETE /words/:id
  def destroy
    @word.destroy
    head :no_content
  end

  private

  def word_params
    # whitelist params
    params.permit(:english, :single, :plural, :definite, :definite_plural)
  end

  def set_word
    @word = word.find(params[:id])
  end
end
