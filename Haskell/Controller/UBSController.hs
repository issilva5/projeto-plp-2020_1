module Haskell.Controller.UBSController (
  criaUBS,
  cadastraMedico,
  visualizaAgendamentos,
  visualizaPacientes,
  visualizaMedicos,
  visualizaMedico,
  adicionaMedicamento,
  adicionaMedicamentoEstoque,
  removerMedicamento,
  visualizaMedicamentos,
  visualizaMedicamento
) where

import Haskell.View.Utils (split) 
import Data.List ( intercalate ) 
import Haskell.Model.Medico
import Haskell.Model.Consulta
import Haskell.Model.Paciente
import Haskell.Model.Medicamento
import Haskell.Model.UBS
import Haskell.Model.DateCycle

criaUBS :: Int -> [String] -> UBS
criaUBS idUBS infos = read (intercalate ";" ([show (idUBS)] ++ infos)) :: UBS

-- descricao: cadastra médico passando as informações
-- retorno: booleano confirmando o cadastro
cadastraMedico :: Int -> [String] -> Medico
cadastraMedico idUBS informs = read (intercalate ";" ([show (idUBS)] ++ informs)) :: Medico

visualizaAgendamentos :: Int -> [Consulta] -> [Consulta]
visualizaAgendamentos idUBS consultas = []

-- visualizaPacientes com consulta marcada na UBS
-- recebe: pacientes, consultas da ubs
visualizaPacientes :: [Paciente] -> [Consulta] -> [Paciente]
visualizaPacientes pacientes consultasUBS = []

visualizaMedicos :: Int -> [Medico] -> [Medico]
visualizaMedicos idUBS medicos = []

visualizaMedico :: Int -> Int -> [Medico] -> Medico
visualizaMedico idUBS idMed medicos = (Medico 1 "" "" 1 "" empty)

-- descricao: passa as informações do medicamento
adicionaMedicamento :: Int -> [String] -> Medicamento
adicionaMedicamento idUBS informs = read (intercalate ";" ([show (idUBS)] ++ informs)) :: Medicamento

-- descricao: adiciona quantidade ao medicamento
-- busca pelo medicamento requisitado altera sua quantidade e retorna a lista dos medicamentos
adicionaMedicamentoEstoque :: Int -> Int -> Int -> [Medicamento] -> [Medicamento]
adicionaMedicamentoEstoque idUBS idMed qtd medicamentos = []

-- descricao: deduz do estoque
-- busca pelo medicamento requisitado altera sua quantidade e retorna a lista dos medicamento
removerMedicamento :: Int -> Int -> Int -> [Medicamento] -> [Medicamento]
removerMedicamento idUBS idMedicamento qtd medicamentos = []

visualizaMedicamentos :: Int -> [Medicamento] -> [Medicamento]
visualizaMedicamentos idUBS medicamentos = []

visualizaMedicamento :: Int -> [Medicamento] -> Medicamento
visualizaMedicamento idMedic medicamentos = (Medicamento 1 1 "" 0 "")
