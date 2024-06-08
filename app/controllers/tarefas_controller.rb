class TarefasController < ApplicationController
  before_action :set_tarefa, only: %i[ show edit update destroy ]

  # GET /tarefas or /tarefas.json
  def index
    @tarefas = Tarefa.all
  end

  # GET /tarefas/1 or /tarefas/1.json
  def show
  end

  # GET /tarefas/new
  def new
    @tarefa = Tarefa.new
  end

  # GET /tarefas/1/edit
  def edit
  end

  # POST /tarefas or /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)
    @tarefa.prioridade ||= 'Baixa'

      if @tarefa.save
        redirect_to @tarefa, notice: "Tarefa criada com sucesso!"
      else
        render :new
      end
  end

  # PATCH/PUT /tarefas/1 or /tarefas/1.json
  def update
    if @tarefa.update(tarefa_params.except(:data_de_termino))
      redirect_to @tarefa, notice: 'Tarefa foi atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /tarefas/1 or /tarefas/1.json
  def destroy
    @tarefa.destroy

    respond_to do |format|
      format.html { redirect_to tarefas_url, notice: "Tarefa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:nome, :descricao, :finalizada, :data_de_termino, :prioridade, :membro_id)
    end
 end