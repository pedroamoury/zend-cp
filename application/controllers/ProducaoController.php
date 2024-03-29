<?php

class ProducaoController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function designAction()
    {
        $repositorio = new App_Repository_Layouts();
        $this->view->layouts = $repositorio->GetAll();
    }

    public function fotolitoAction()
    {
        $repositorio = new App_Repository_Fotolitos();
        $this->view->fotolitos = $repositorio->GetAll();
        $this->view->fotolitos_producao = $repositorio->GetAllIsNullFimDeProducao();
    }

    public function revelacaoAction()
    {
        $repositorio = new App_Repository_Revelacao();
        $this->view->telas = $repositorio->GetAll();
    }

    public function impressaoAction()
    {
        $repositorio = new App_Repository_Impressao();
        $this->view->papeis = $repositorio->GetAll();
    }

    public function transferenciaAction()
    {
        
    }

    public function cortecosturaAction()
    {
        $repositorio = new App_Repository_CorteCostura();
        $this->view->pecas = $repositorio->GetAll();
    }

    public function acabamentoembalagemAction()
    {
        $repositorio = new App_Repository_AcabamentoEmbalagem();
        $this->view->pecas = $repositorio->GetAll();
    }


}















