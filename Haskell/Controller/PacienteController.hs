module Haskell.Controller.PacienteController ( 
  buscarUnidades,
  requisitarConsulta,
  requisitarExame,
  requisitarMedicamento,
  consultarLaudos,
  consultarLaudo,
  consultarReceitasMed,
  consultarReceitaMed,
  consultarReceitasEx,
  consultarReceitaEx,
  emergencia
) where 

import Haskell.Model.Receita
import Haskell.Model.Exame
import Haskell.Model.UBS
import Haskell.Model.Laudo

-- Buscar as unidades que tem determinada especialidade
-- ubsLista = [UBS {indice = 1, idUBS = ""} ]
buscarUnidades :: Int -> String -> [UBS]
buscarUnidades idPac str = [(UBS 1 "" "")]

-- Recebe a especialidade e a unidade de saúde
requisitarConsulta :: Int -> String -> UBS -> String
requisitarConsulta idPac str ubs = "" 

-- Recebe o código do exame e a unidade de saúde
requisitarExame :: Int -> String -> UBS -> String
requisitarExame idPac str ubs = ""

-- Recebe o nome do medicamento e a unidade de saúde
requisitarMedicamento :: Int -> String -> UBS -> String
requisitarMedicamento idPac str ubs = ""

-- Ver todos os laudos do paciente (a partir do nome do paciente)
-- laudosLista = [Laudos {indice = 1, idPac = "", codigo1 = "", laudo1 = ""} ]
consultarLaudos :: Int -> [Laudo]
consultarLaudos idPac = [(Laudo 1 1 "")]

-- Ver um laudo a partir do código (a partir do código do laudo)
-- laudosLista = [Laudos {indice = 1, idPac = "", codigo1 = "", laudo1 = ""} ]
consultarLaudo :: Int -> Laudo
consultarLaudo idPac  = (Laudo 1 1 "")

-- Ver todas as receitas de medicamento
-- receitasLista = [Receitas {indice = 1, idPac = "", receita1 = ""}]
consultarReceitasMed :: Int -> [Receita]
consultarReceitasMed idPac = [(Receita 1 1 1 1 [(1, "")])]

-- Ver um receita de medicamento a partir do nome do medicamento
-- receitasLista = [Receitas {indice = 1, idPac = "", receita1 = ""}]
consultarReceitaMed :: Int -> Receita
consultarReceitaMed idPac = (Receita 1 1 1 1 [(1, "")])

-- Consultar lista de receitas de exames a partir do idPac
-- examesLista = [Exames {indice = 1, idPac = "", exame = ""}]
consultarReceitasEx :: Int -> [Exame]
consultarReceitasEx idPac = [(Exame 1 1 1 1 "" "" "")]

-- Consultar receita de exame a partir do nome do exame
-- examesLista = [Exames {indice = 1, idPac = "", exame = ""}]
consultarReceitaEx :: Int -> Exame
consultarReceitaEx idPac = (Exame 1 1 1 1 "" "" "")

-- Pede atendimento de emergencia passando o endereço
-- Retorna a desc da ambulancia
emergencia :: Int -> String -> String
emergencia idPac endereco = ""