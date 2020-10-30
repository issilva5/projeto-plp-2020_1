import qualified Haskell.Model.BD as BD
import qualified Haskell.Controller.MedicoController as MC
import qualified Haskell.Controller.AutenticacaoController as Autenticador
import Haskell.View.Utils

import Data.Char ( toUpper )

main :: IO()
main = do
    login (BD.BD [] [] [] [] [] [] [] [] [] [1..])

login :: BD.BD -> IO()
login dados  = do
    menuMedico 0 dados

menuMedico :: Int -> BD.BD -> IO()
menuMedico idMed dados = do
    putStrLn medicoMenu
    op <- prompt "Opção > "

    putStrLn ""

    if toUpper (head op) == 'I' then do
        horario <- prompt "Horário > "
        putStrLn (show (MC.informarHorario idMed horario (BD.medicos dados)))
        menuMedico idMed dados
    
    else if toUpper (head op) == 'A' then do
        putStrLn medicoAcessarDados
        acessarOp <- prompt "Opção > "

        if toUpper (head acessarOp) == 'P' then do
            idPac <- prompt "ID do Paciente > "
            putStrLn (show (MC.acessarDadosPaciente (BD.pacientes dados) (read idPac)))
            menuMedico idMed dados

        else if toUpper (head acessarOp) == 'E' then do
            idExame <- prompt "ID do Exame > " 
            putStrLn (show (MC.acessarExame idMed (read idExame) (BD.exames dados)))
            menuMedico idMed dados

        else if toUpper (head acessarOp) == 'A' then do
            date <- prompt "Data > "
            putStrLn (show (MC.acessarConsultasData idMed date (BD.consultas dados)))
            menuMedico idMed dados

        else do
            clear
    
    else if toUpper (head op) == 'E' then do
        putStrLn medicoEmitir
        emitirOp <- prompt "Opção > "

        if toUpper (head emitirOp) == 'R' then do
            idPac <- prompt "ID do Paciente > "
            informacoes <- prompt "Informações > "
            menuMedico idMed dados {BD.receitas = (BD.receitas dados) ++ [(MC.emitirReceita idMed (read idPac) (read informacoes))]}

        else if toUpper (head emitirOp) == 'S' then do
            idPac <- prompt "ID do Paciente > "
            informacoes <- prompt "Informações > "
            menuMedico idMed dados {BD.exames = (BD.exames dados) ++ [(MC.emitirExame idMed (read idPac) (read informacoes))]}

        else if toUpper (head emitirOp) == 'L' then do
            idPac <- prompt "ID do Paciente > "
            informacoes <- prompt "Informações > "
            menuMedico idMed dados {BD.laudos = (BD.laudos dados) ++ [(MC.emitirLaudo idMed (read idPac) (read informacoes))]}

        else do
            clear

    else if toUpper (head op) == 'T' then do
        input <- prompt "ID da UBS > "
        let idUBS = read input ::Int 
        putStrLn (show (MC.solicitarTransferencia idMed idUBS))
        menuMedico idMed dados

    else do
        clear
