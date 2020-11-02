module Haskell.Model.Consulta where
import Haskell.View.Utils (split) 

import Data.Dates

data Consulta = Consulta {
    id :: Int,
    idPaciente :: Int,
    idMedico :: Int,
    idUBS :: Int,
    dia :: DateTime
} deriving (Show)

instance Read Consulta where 
    readsPrec _ str = do 
    let l = split str ';' ""
    let id = read (l !! 0) :: Int
    let idPaciente = read (l !! 1) :: Int
    let idMedico = read (l !! 2) :: Int
    let idUBS = read (l !! 3) :: Int
    let dia = DateTime 2020 11 01 00 00 00
    
    [(Consulta id idPaciente idMedico idUBS dia, "")]