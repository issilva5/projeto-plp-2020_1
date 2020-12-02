:- module(persistence, [lePaciente/0, leUBS/0, leMedico/0, leMedico/0, leReceita/0, leMedicamento/0,
                        leLaudo/0, leExame/0, leLogins/0, leConsulta/0, leId/0, escrevePaciente/0, escreveUBS/0,
                        escreveMedico/0, escreveReceita/0, escreveReceitaRem/0, escreveMedicamento/0, escreveLaudo/0,
                        escreveConsulta/0, escreveExame/0, escreveLogins/0, escreveId/0]).
:- use_module('../Models/model.pro').

/*
Verifica se o arquivo 'paciente.bd' existe, se existir o lê,
c.c. chama model:iniciaPaciente.
*/
lePaciente :- consult('bd/paciente.bd').


/*
Verifica se o arquivo 'ubs.bd' existe, se existir o lê,
c.c. chama model:iniciaUBS.
*/
leUBS :- consult('bd/ubs.bd').

/*
Verifica se o arquivo 'medico.bd' existe, se existir o lê,
c.c. chama model:iniciaMedico.
*/
leMedico :- consult('bd/medico.bd').

/*
Verifica se o arquivo 'paciente.bd' existe, se existir o lê,
c.c. chama model:iniciaPaciente.
*/
leConsulta :- consult('bd/consulta.bd').

/*
Verifica se o arquivo 'receita.bd' existe, se existir o lê,
c.c. chama model:iniciaReceita.
*/
leReceita :- consult('bd/receita.bd').

/*
Verifica se o arquivo 'medicamento.bd' existe, se existir o lê,
c.c. chama model:iniciaMedicamento.
*/
leMedicamento :- consult('bd/medicamento.bd').

/*
Verifica se o arquivo 'laudo.bd' existe, se existir o lê,
c.c. chama model:iniciaLaudo.
*/
leLaudo :- consult('bd/laudo.bd').

/*
Verifica se o arquivo 'exame.bd' existe, se existir o lê,
c.c. chama model:iniciaExame.
*/
leExame :- consult('bd/exame.bd').

/*
Verifica se o arquivo 'logins.bd' existe, se existir o lê,
c.c. chama model:iniciaLogin.
*/
leLogins :- consult('bd/logins.bd').

/*
Verifica se o arquivo 'id.bd' existe, se existir o lê,
c.c. chama model:iniciaId.
*/
leId :- consult('bd/id.bd').

/* Persiste a tabela paciente no arquivo 'paciente.bd'. */
escrevePaciente :- tell('bd/paciente.bd'), listing(model:paciente), told.

/* Persiste a tabela UBS no arquivo 'ubs.bd'. */
escreveUBS :- tell('bd/ubs.bd'), listing(model:ubs), told.

/* Persiste as tabelas medico e medico_horarios no arquivo 'medico.bd'. */
escreveMedico :- tell('bd/medico.bd'), listing(model:medico), told.

/* Persiste a tabela receita no arquivo 'receita.bd'. */
escreveReceita :- tell('bd/receita.bd'), listing(model:receita), told.

/* Persiste a tabela receita no arquivo 'receita.bd'. */
escreveReceitaRem :- tell('bd/receita_rem.bd'), listing(model:receita_remedio), told.

/* Persiste a tabela medicamento no arquivo 'medicamento.bd'. */
escreveMedicamento :- tell('bd/medicamento.bd'), listing(model:medicamento), told.

/* Persiste a tabela laudo no arquivo 'laudo.bd'. */
escreveLaudo :- tell('bd/laudo.bd'), listing(model:laudo), told.

/* Persiste a tabela consulta no arquivo 'consulta.bd'. */
escreveConsulta :- tell('bd/consulta.bd'), listing(model:consulta), told.

/* Persiste a tabela exame no arquivo 'exame.bd'. */
escreveExame :- tell('bd/exame.bd'), listing(model:exame), told.

/* Persiste a tabela logins no arquivo 'logins.bd'. */
escreveLogins :- tell('bd/logins.bd'), listing(model:logins), told.

/* Persiste a tabela id no arquivo 'id.bd'. */
escreveId :- tell('bd/id.bd'), listing(model:id), told.