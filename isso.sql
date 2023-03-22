--------------------------------------------------------
--  Arquivo criado - terça-feira-março-21-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CTR_TITULO
--------------------------------------------------------

  CREATE TABLE "CA"."CTR_TITULO" 
   (	"ID_TITULO" NUMBER(15,0), 
	"CD_PERIODO_PROCESSO" NUMBER(3,0), 
	"NR_PROCESSO" NUMBER(7,0), 
	"VL_TITULO" NUMBER(12,2), 
	"VL_DESCONTO_INCONDICIONAL" NUMBER(12,2), 
	"VL_BOLSA" NUMBER(12,2), 
	"VL_TITULO_LIQUIDO" NUMBER(12,2), 
	"VL_DESCONTO_CONDICIONAL" NUMBER(12,2), 
	"PC_MULTA" NUMBER(7,4) DEFAULT 0, 
	"VL_MULTA_CALCULADO" NUMBER(12,2), 
	"PC_JUROS" NUMBER(7,4) DEFAULT 0, 
	"VL_JUROS_CALCULADO" NUMBER(12,2), 
	"CD_DOMINIO_ST_TITULO" NUMBER(4,0), 
	"CD_FAIXA_ST_TITULO" NUMBER(4,0), 
	"ID_NEGOCIACAO_BAIXA" NUMBER(10,0), 
	"ID_NEGOCIACAO_ORIGEM" NUMBER(10,0), 
	"FG_AGRUPA_SACADO" VARCHAR2(1 BYTE), 
	"FG_INSTRUCAO_BANCO" VARCHAR2(1 BYTE), 
	"VL_ORIGINAL" NUMBER(12,2), 
	"FG_CONTABILIZA_RLP" VARCHAR2(1 BYTE), 
	"ID_PESSOA_CLIENTE" NUMBER(10,0), 
	"CD_ESTAB_CLIENTE" NUMBER(3,0), 
	"NR_MATRIC_CLIENTE" NUMBER(7,0), 
	"ID_PESSOA_IRRF" NUMBER(10,0), 
	"ID_PESSOA_COBRANCA" NUMBER(10,0), 
	"FG_MIGRACAO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VL_AJUSTE" NUMBER(12,2) DEFAULT 0, 
	"CD_AGENTE_COBRADOR" NUMBER(5,0), 
	"DS_REFERENCIA" VARCHAR2(1000 BYTE), 
	"ID_FINANCEIRO" NUMBER(15,0), 
	"ID_MODALIDADE_COBRANCA" NUMBER(6,0), 
	"DT_HR_INCLUSAO" DATE, 
	"DT_COMPETENCIA" DATE, 
	"DT_VENCIMENTO" DATE, 
	"DT_LIQUIDACAO" DATE, 
	"DT_PROVISAO" DATE, 
	"DT_BASE_ATUALIZACAO_MONETARIA" DATE, 
	"DT_RECLASSIFICACAO_RLP_AC" DATE, 
	"FG_FATURA" VARCHAR2(1 BYTE) DEFAULT 'S', 
	"ID_TITULO_PAI" NUMBER(15,0), 
	"DS_MENSAGEM_01" VARCHAR2(80 BYTE), 
	"DS_MENSAGEM_02" VARCHAR2(80 BYTE), 
	"DS_MENSAGEM_03" VARCHAR2(80 BYTE), 
	"DS_MENSAGEM_04" VARCHAR2(80 BYTE), 
	"ID_BANCO_AGENCIA_CARTEIRA" NUMBER(3,0), 
	"CD_DOMINIO_ESPECIE_TITULO" NUMBER(4,0), 
	"CD_FAIXA_ESPECIE_TITULO" NUMBER(4,0), 
	"QT_DIAS_ANTECED_GERAR_BOLETO" NUMBER(2,0), 
	"FG_GERAR_BOLETO" VARCHAR2(1 BYTE), 
	"CD_DOMINIO_TP_REGISTRO_BANCO" NUMBER(4,0), 
	"CD_FAIXA_TP_REGISTRO_BANCO" NUMBER(4,0), 
	"FG_POSTAR_BOLETO" VARCHAR2(1 BYTE), 
	"DT_VALIDADE_BOLETO" DATE, 
	"NR_COMPETENCIA" NUMBER(3,0), 
	"ID_BANDEIRA_CARTAO" NUMBER(5,0), 
	"FG_TITULO_OFERTA" VARCHAR2(1 BYTE), 
	"VL_TITULO_MC" NUMBER(12,2), 
	"UN_TITULO" NUMBER(10,4), 
	"ID_VALOR_INDICE" NUMBER(10,0), 
	"FG_AGUARDAR_CONFIRMACAO_BANCO" VARCHAR2(1 BYTE), 
	"DT_VENCIMENTO_LIMITE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;

   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_TITULO" IS 'Id da tabela';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_PERIODO_PROCESSO" IS 'Período do processo. Chave estrangeira da tabela SA.PROCESSO.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."NR_PROCESSO" IS 'Número do processo. Chave estrangeira da tabela SA.PROCESSO.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_TITULO" IS 'Valor do título. Valor cheio';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_DESCONTO_INCONDICIONAL" IS 'Valor total dos descontos incondicionais';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_BOLSA" IS 'Valor total das bolsas';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_TITULO_LIQUIDO" IS 'Valor líquido do título a pagar. VL_TITULO_LIQUIDO = vl_titulo - desconto incondicional - bolsa';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_DESCONTO_CONDICIONAL" IS 'Valor total dos descontos condicionais';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."PC_MULTA" IS 'Percentual da multa';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_MULTA_CALCULADO" IS 'Valor da multa calculado na data da liquidação';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."PC_JUROS" IS 'Percentual de juros';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_JUROS_CALCULADO" IS 'Valor dos juros calculado na data da liquidação';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_DOMINIO_ST_TITULO" IS 'Identifica a origem do título. Dominio "CTR_002"';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_FAIXA_ST_TITULO" IS 'Identifica a origem do título. Dominio "CTR_002"';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_NEGOCIACAO_BAIXA" IS 'Chave estrangeira da tabela de negociação que baixou o título';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_NEGOCIACAO_ORIGEM" IS 'Chave estrangeira da tabela de negociação que deu origem ao título';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_AGRUPA_SACADO" IS 'Agrupa vários títulos da pessoa de cobrança( id_pessoa_cobranca somente de pesoa jurídica ) de sacados em um único boleto. S-Sim ou N-Não';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_INSTRUCAO_BANCO" IS 'Imprime e posta o boleto. S-Sim ou N-Não';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_ORIGINAL" IS 'Valor original do título. A cada atualização monetária o valor do título será modificado e o valor original preservado neste campo';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_CONTABILIZA_RLP" IS 'Indica se o título está contabilizado no realizável a longo prazo ( S-Sim  N-Não ).';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_PESSOA_CLIENTE" IS 'ID da pessoa cliente. ( mensalidade ou processo )';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_ESTAB_CLIENTE" IS 'Estabelecimento da matricula ( mensalidade ou processo )';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."NR_MATRIC_CLIENTE" IS 'Número da matricula ( mensalidade ou processo )';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_PESSOA_IRRF" IS 'ID da pessoa de para geração do IRRF';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_PESSOA_COBRANCA" IS 'ID da pessoa de cobrança do titulo';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_MIGRACAO" IS 'Indicativo se titulo migrado ( S-Sim ou N-Não ). Esta informação indica que pode não ser possível determinar como foi calculado através das tabelas ca.fat_mc_titulo e ca.fat_mc_titulo_modalidade';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_AJUSTE" IS 'Valor do ajuste do título migrado, quando houver. Positivo indica ajuste a maior, negativo ajuste a menor, zero não teve ajuste. Estevalor é preenchido face à impossibilidade de determinar nos dados h';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_AGENTE_COBRADOR" IS 'Código do agente cobrador';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DS_REFERENCIA" IS 'Descrição que identifique a origem o titulo. Documentação para registrar a que se refere.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_FINANCEIRO" IS 'ID do financeiro do aluno. Chave estrangeira com a tabela CA.FAT_FINANCEIRO';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_MODALIDADE_COBRANCA" IS 'ID da modalidade de cobrança. Chave estrangeira com a tabela CA.FAT_MODALIDADE';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_HR_INCLUSAO" IS 'Data hora da inclusão do título';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_COMPETENCIA" IS 'Data da competência CONTABIL/FISCAL do título. Mês/Ano';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_VENCIMENTO" IS 'Data de vencimento do título, para o Contas a Receber e emissão de documento cobrança e cálculo padrão de multa e juros.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_LIQUIDACAO" IS 'Data da liquidação do título';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_PROVISAO" IS 'Data do provisionamento do título';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_BASE_ATUALIZACAO_MONETARIA" IS 'Data base do título para efeito de atualização monetária';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_RECLASSIFICACAO_RLP_AC" IS 'Data da reclassificação do título, do realizável a longo prazo para o circulante.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_FATURA" IS 'Indica se o titulo gera NF';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_TITULO_PAI" IS 'Título que originou o título de cobrança. Cartão Unifor e Cartão de Crédito';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DS_MENSAGEM_01" IS 'Primeira mensagem a ser exibida no boleto. Será enviado nas posições 2 à 81, no registro de transação tipo 2, do arquivo de remessa.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DS_MENSAGEM_02" IS 'Segunda mensagem a ser exibida no boleto. Será enviado nas posições 82 à 161, no registro de transação tipo 2, do arquivo de remessa.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DS_MENSAGEM_03" IS 'Terceira mensagem a ser exibida no boleto. Será enviado nas posições 162 à 241, no registro de transação tipo 2, do arquivo de remessa.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DS_MENSAGEM_04" IS 'Quarta mensagem a ser exibida no boleto. Será enviado nas posições 242 à 321, no registro de transação tipo 2, do arquivo de remessa.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_BANCO_AGENCIA_CARTEIRA" IS 'Id do banco agencia cateira da cobrança';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_DOMINIO_ESPECIE_TITULO" IS 'Especie do titulo. Dominio "CTR_001"';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_FAIXA_ESPECIE_TITULO" IS 'Especie do titulo. Dominio "CTR_001"';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."QT_DIAS_ANTECED_GERAR_BOLETO" IS 'Quantidade de dias de antecedencia do vencimento o boleto deverá ser gerado';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_GERAR_BOLETO" IS 'Indicativo se titulo gera boleto. S-Sim   N-Não';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_DOMINIO_TP_REGISTRO_BANCO" IS 'FK com a tabela ca.pl_dominio_faixa. Dominio externo = ''CTR_024''.  View ca.v_ctr_boleto_tp_registro_bancario';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."CD_FAIXA_TP_REGISTRO_BANCO" IS 'FK com a tabela ca.pl_dominio_faixa. Dominio externo = ''CTR_024''.  View ca.v_ctr_boleto_tp_registro_bancario';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_POSTAR_BOLETO" IS 'Indicativo se boleto gerado será postado. S-Sim   N-Não';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_VALIDADE_BOLETO" IS 'Indicativo da data de validade do boleto associado ao titulo. Se FG_GERAR_BOLETO = ''S''';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."NR_COMPETENCIA" IS 'Número da competência do titulo.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_BANDEIRA_CARTAO" IS 'Id da bandeira do cartão. Popular para espécies 5 e 7';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_TITULO_OFERTA" IS 'Indicativo de que o título é de oferta para os alunos da graduação';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."VL_TITULO_MC" IS 'Valor do título gerado na memória de cálculo. Coluna utilizada na do Cálculo ( MC ) quando o título for preservado.';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."UN_TITULO" IS 'Quantidade de unidades financeiras utilizadas no cálculo do valor da mensalidade de aluno';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."ID_VALOR_INDICE" IS 'Id da cotação do índice utilizado na MC que gerou o títilo';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."FG_AGUARDAR_CONFIRMACAO_BANCO" IS 'Utilizado para indicar que existe registro de baixa por arquivo Parcial da compensação bancária e que está aguardando confirmação para a efetiva baixa pelo arquivo Global.;
S - aguardar confirmação de baixa pelo arquivo de retorno Global da compensação bancária;
N - não aguarda confirmação de baixa';
   COMMENT ON COLUMN "CA"."CTR_TITULO"."DT_VENCIMENTO_LIMITE" IS 'Data limite para não cobrar multa e juros, considerando como base a data de vencimento (DT_VENCIMENTO) e os feriados.';
  GRANT DELETE ON "CA"."CTR_TITULO" TO "OUL";
  GRANT INSERT ON "CA"."CTR_TITULO" TO "OUL";
  GRANT SELECT ON "CA"."CTR_TITULO" TO "OUL";
  GRANT UPDATE ON "CA"."CTR_TITULO" TO "OUL";
  GRANT DELETE ON "CA"."CTR_TITULO" TO "SISTEMAS";
  GRANT INSERT ON "CA"."CTR_TITULO" TO "SISTEMAS";
  GRANT SELECT ON "CA"."CTR_TITULO" TO "SISTEMAS";
  GRANT UPDATE ON "CA"."CTR_TITULO" TO "SISTEMAS";
  GRANT DELETE ON "CA"."CTR_TITULO" TO "USUARIOS";
  GRANT INSERT ON "CA"."CTR_TITULO" TO "USUARIOS";
  GRANT SELECT ON "CA"."CTR_TITULO" TO "USUARIOS";
  GRANT UPDATE ON "CA"."CTR_TITULO" TO "USUARIOS";
--------------------------------------------------------
--  DDL for Index CTRT_IX1
--------------------------------------------------------

  CREATE INDEX "CA"."CTRT_IX1" ON "CA"."CTR_TITULO" ("DT_VENCIMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index CT_DFTRB_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."CT_DFTRB_FK_I" ON "CA"."CTR_TITULO" ("CD_DOMINIO_TP_REGISTRO_BANCO", "CD_FAIXA_TP_REGISTRO_BANCO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_BANCO_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_BANCO_FK_I" ON "CA"."CTR_TITULO" ("CD_AGENTE_COBRADOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_BC_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_BC_FK_I" ON "CA"."CTR_TITULO" ("ID_BANDEIRA_CARTAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_CBAC_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_CBAC_FK_I" ON "CA"."CTR_TITULO" ("ID_BANCO_AGENCIA_CARTEIRA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_DFET_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_DFET_FK_I" ON "CA"."CTR_TITULO" ("CD_DOMINIO_ESPECIE_TITULO", "CD_FAIXA_ESPECIE_TITULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_DFST_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_DFST_FK_I" ON "CA"."CTR_TITULO" ("CD_DOMINIO_ST_TITULO", "CD_FAIXA_ST_TITULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_FF_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_FF_FK_I" ON "CA"."CTR_TITULO" ("ID_FINANCEIRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_IX1
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_IX1" ON "CA"."CTR_TITULO" ("CD_ESTAB_CLIENTE", "NR_MATRIC_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_IX2
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_IX2" ON "CA"."CTR_TITULO" ("CD_ESTAB_CLIENTE", "NR_MATRIC_CLIENTE", "ID_MODALIDADE_COBRANCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_MC_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_MC_FK_I" ON "CA"."CTR_TITULO" ("ID_MODALIDADE_COBRANCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_NEGB_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_NEGB_FK_I" ON "CA"."CTR_TITULO" ("ID_NEGOCIACAO_BAIXA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_NEGO_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_NEGO_FK_I" ON "CA"."CTR_TITULO" ("ID_NEGOCIACAO_ORIGEM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_PC_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_PC_FK_I" ON "CA"."CTR_TITULO" ("ID_PESSOA_COBRANCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_PIRRF_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_PIRRF_FK_I" ON "CA"."CTR_TITULO" ("ID_PESSOA_IRRF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CA"."TIT_PK" ON "CA"."CTR_TITULO" ("ID_TITULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_PROC_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_PROC_FK_I" ON "CA"."CTR_TITULO" ("CD_PERIODO_PROCESSO", "NR_PROCESSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_TITP_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_TITP_FK_I" ON "CA"."CTR_TITULO" ("ID_TITULO_PAI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TIT_VI_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TIT_VI_FK_I" ON "CA"."CTR_TITULO" ("ID_VALOR_INDICE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index TTIT_PCLI_FK_I
--------------------------------------------------------

  CREATE INDEX "CA"."TTIT_PCLI_FK_I" ON "CA"."CTR_TITULO" ("ID_PESSOA_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Index IDX2_202108173616
--------------------------------------------------------

  CREATE INDEX "CA"."IDX2_202108173616" ON "CA"."CTR_TITULO" ("CD_FAIXA_ST_TITULO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBS_DADOS" ;
--------------------------------------------------------
--  DDL for Trigger TG_CTR_TITULO_A
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CA"."TG_CTR_TITULO_A" 
 AFTER  
 INSERT or UPDATE
 ON CA.CTR_TITULO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
DECLARE
    cursor cr_processo(p_cd_periodo in sa.processo.cd_periodo%type,
                   p_nr_processo in sa.processo.nr_processo%type) is
       select r.cd_requerimento ,
              r.cd_tipo_recebimento_faixa,
              p.cd_estabelecimento,
              p.nr_matricula
         from sa.processo p,
              sa.requerimento r
        where p.cd_periodo = p_cd_periodo
          and p.nr_processo = p_nr_processo
          and p.cd_requerimento = r.cd_requerimento;

    cursor cr_agencia_carteira( pc_nr_banco                       in ca.banco.nr_banco%type
                              , pc_id_banco_agencia_carteira      in ca.ctr_banco_agencia_carteira.id_banco_agencia_carteira%type) is
       select 'S'
         from ca.ctr_banco_agencia_carteira bac

        where bac.id_banco_agencia_carteira  =  pc_id_banco_agencia_carteira
          and bac.nr_banco                   = pc_nr_banco
          and bac.fl_ativo                   = 'S';

    r_processo cr_processo%rowtype;
    l_dummy           varchar2(1);
    l_cd_centro_custo number;
    l_cd_linha_produto varchar2(150);
    
    p_id_titulo number;
    p_fg_retorno varchar2(1);
    p_ds_retorno varchar2(20);

begin  ---comentado pra testes 27-09-2023 até o outro comentário.
/*    if trunc(:new.dt_vencimento) >= trunc(sysdate) then
      if :new.id_pessoa_cobranca is null then
        raise_application_error( -20003, 'Pessoa cobrança obrigatório. Título:' || :new.id_titulo );
      end if;

      if :new.id_pessoa_cliente is null then
        raise_application_error( -20003, 'Pessoa cliente obrigatório. Título:' || :new.id_titulo );
      end if;
    end if;
*/ -----Final do comentário
/*
    if :new.cd_agente_cobrador              <   1000 then
    -- Se agente cobrador for um banco
       if :new.id_banco_agencia_carteira    is  null then
       -- id_banco_agencia_carteira  é obrigatório
          raise_application_error( -20001, 'Banco/agência/carteira é obrigatória quando agente cobrador for um banco.');
       else
       -- verifica se id_banco_agencia_carteira pertence ao agente cobrador
          open  cr_agencia_carteira( :new.cd_agente_cobrador
                                   , :new.id_banco_agencia_carteira );
          fetch cr_agencia_carteira into l_dummy;
          if cr_agencia_carteira%notfound then
             raise_application_error( -20002, 'Banco/agência/carteira informado não esta associado ao agente cobrador (' || :new.cd_agente_cobrador || ')' );
          end if;
          close cr_agencia_carteira;
       end if;
    end if;
*/

if INSERTING then



    --   if ca.pk_pessoa.f_fl_possui_end_corresp(:new.id_pessoa_cobranca) = 'N' then
    --      raise_application_error( -20003, 'Pessoa cobrança não possui endereço de correspondência.');
    --   end if;
    null;
--    if :new.id_titulo is not null then
--        p_id_titulo := :new.id_titulo;
--        --ca.pk_gvs_cliente_titulo_ebs_api.p_integra_cliente_titulo_ebs( p_id_titulo, p_fg_retorno , p_ds_retorno ); 
--        insert into ca.gvs_fila_titulo_ebs(id_titulo, fg_acao) values(:new.id_titulo, 'I');
--    end if;
/* 
       if :new.fg_migracao      = 'N' then
          if :new.cd_faixa_especie_titulo = 2 then -- PROCESSO
             open cr_processo(:new.cd_periodo_processo, :new.nr_processo);
             fetch cr_processo into r_processo;
             close cr_processo;
             pk_lct_util.p_centro_custo_linha_produto( 3 --REQUERIMENTO
                                                     , r_processo.cd_requerimento --p_id_chave                         in    ca.lct_configuracao_cc_lp.id_chave%type
                                                     , r_processo.cd_estabelecimento --                in    sa.processo.cd_estabelecimento%type
                                                     , r_processo.nr_matricula --p_nr_matric_usuario                in    sa.processo.nr_matricula%type
                                                     , l_cd_centro_custo   --           out   al.centro_custo.cd_centro_custo_ebs%type
                                                     , l_cd_linha_produto);
             if l_cd_centro_custo is null or l_cd_linha_produto is null then
                pk_lct_util.p_centro_custo_linha_produto( 2 --TIPO DE REQUERIMENTO
                                                        , r_processo.cd_tipo_recebimento_faixa --p_id_chave                         in    ca.lct_configuracao_cc_lp.id_chave%type
                                                        , r_processo.cd_estabelecimento --                in    sa.processo.cd_estabelecimento%type
                                                        , r_processo.nr_matricula 
                                                        , l_cd_centro_custo   --           out   al.centro_custo.cd_centro_custo_ebs%type
                                                        , l_cd_linha_produto);
                 if l_cd_centro_custo is null then
                    raise_application_error( -20004, 'Requerimento('|| r_processo.cd_requerimento ||')/Tipo de recebimento(' || r_processo.cd_tipo_recebimento_faixa || ') sem Centro de Custo configurado para contabilização ');
                 end if;
                 if l_cd_linha_produto is null then
                    raise_application_error( -20005, 'Requerimento('|| r_processo.cd_requerimento ||')/Tipo de recebimento(' || r_processo.cd_tipo_recebimento_faixa || ') sem Linha de produto configurado para contabilização ');
                 end if;
             end if;
          elsif :new.cd_faixa_especie_titulo in (1, 3, 4, 5) then
             --1 MENSALIDADE
             --3 NEGOCIAÇÃO
             --4 ANTECIPAÇÃO
             --5 CARTÃO UNIFOR
             pk_lct_util.p_centro_custo_linha_produto( 1
                                                     , 0                                -- p_id_chave            in    ca.lct_configuracao_cc_lp.id_chave%type
                                                     , :new.cd_estab_cliente            --                       in    sa.processo.cd_estabelecimento%type
                                                     , :new.nr_matric_cliente           --p_nr_matric_usuario    in    sa.processo.nr_matricula%type
                                                     , l_cd_centro_custo                --                       out   al.centro_custo.cd_centro_custo_ebs%type
                                                     , l_cd_linha_produto);
             if l_cd_centro_custo is null then
                raise_application_error( -20006, 'Curso/habilitação (' || s_dados_aluno( :new.cd_estab_cliente, 7)|| '-' ||
                                                                          s_dados_aluno( :new.cd_estab_cliente, 8)||
                                                                     ') do aluno '|| :new.cd_estab_cliente || '-' || :new.nr_matric_cliente ||  ' sem Centro de custo configurado para contabilização');
             end if;
             if l_cd_linha_produto is null then 
                raise_application_error( -20007, 'Curso/habilitação do aluno (' || s_dados_aluno( :new.cd_estab_cliente, 7)|| '-' ||
                                                                                     s_dados_aluno( :new.cd_estab_cliente, 8)||
                                                                             ') ' ||  :new.cd_estab_cliente || '-' || :new.nr_matric_cliente ||  ' sem Linha de produto configurado para contabilização');
             end if;
          end if;
       end if;
       if  :new.fg_migracao      = 'N'
       and :new.vl_ajuste        <> 0 then
           raise_application_error( -20021, 'CONTA RECEBER: valor de ajuste permitido somente em títulos a receber migrados.');
       end if;
       if  :new.cd_dominio_especie_titulo is  not null 
       and s_pl_dominio_codigo('CTR_001') <>  :new.cd_dominio_especie_titulo  then
           raise_application_error( -20022, 'CONTA RECEBER: Código do domínio d e tipo de origem de titulo inválido. Externo válido: CTR_001 ');
       end if;
       if  :new.cd_dominio_st_titulo  is  not null 
       and s_pl_dominio_codigo('CTR_002') <>  :new.cd_dominio_st_titulo then
           raise_application_error( -20023, 'CONTA RECEBER: Código do domínio do status do titulo inválido. Externo válido: CTR_002 ');
       end if;*/
   end if;

end;

/
ALTER TRIGGER "CA"."TG_CTR_TITULO_A" DISABLE;
--------------------------------------------------------
--  DDL for Trigger TG_CTR_TITULO_B
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CA"."TG_CTR_TITULO_B" 
 BEFORE 
 INSERT OR UPDATE
 ON CA.CTR_TITULO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
DECLARE
    cursor cr_processo(p_cd_periodo in sa.processo.cd_periodo%type,
                   p_nr_processo in sa.processo.nr_processo%type) is
       select r.cd_requerimento ,
              r.cd_tipo_recebimento_faixa,
              p.cd_estabelecimento,
              p.nr_matricula
         from sa.processo p,
              sa.requerimento r
        where p.cd_periodo = p_cd_periodo
          and p.nr_processo = p_nr_processo
          and p.cd_requerimento = r.cd_requerimento;

    cursor cr_agencia_carteira( pc_nr_banco                       in ca.banco.nr_banco%type
                              , pc_id_banco_agencia_carteira      in ca.ctr_banco_agencia_carteira.id_banco_agencia_carteira%type) is
       select 'S'
         from ca.ctr_banco_agencia_carteira bac

        where bac.id_banco_agencia_carteira  =  pc_id_banco_agencia_carteira
          and bac.nr_banco                   = pc_nr_banco
          and bac.fl_ativo                   = 'S';

    r_processo cr_processo%rowtype;
    l_dummy           varchar2(1);
    l_cd_centro_custo number;
    l_cd_linha_produto varchar2(150);
    
    p_id_titulo number;
    p_fg_retorno varchar2(1);
    p_ds_retorno varchar2(20);

begin  ---comentado pra testes 27-09-2023 até o outro comentário.
/*    if trunc(:new.dt_vencimento) >= trunc(sysdate) then
      if :new.id_pessoa_cobranca is null then
        raise_application_error( -20003, 'Pessoa cobrança obrigatório. Título:' || :new.id_titulo );
      end if;

      if :new.id_pessoa_cliente is null then
        raise_application_error( -20003, 'Pessoa cliente obrigatório. Título:' || :new.id_titulo );
      end if;
    end if;
*/ -----Final do comentário
/*
    if :new.cd_agente_cobrador              <   1000 then
    -- Se agente cobrador for um banco
       if :new.id_banco_agencia_carteira    is  null then
       -- id_banco_agencia_carteira  é obrigatório
          raise_application_error( -20001, 'Banco/agência/carteira é obrigatória quando agente cobrador for um banco.');
       else
       -- verifica se id_banco_agencia_carteira pertence ao agente cobrador
          open  cr_agencia_carteira( :new.cd_agente_cobrador
                                   , :new.id_banco_agencia_carteira );
          fetch cr_agencia_carteira into l_dummy;
          if cr_agencia_carteira%notfound then
             raise_application_error( -20002, 'Banco/agência/carteira informado não esta associado ao agente cobrador (' || :new.cd_agente_cobrador || ')' );
          end if;
          close cr_agencia_carteira;
       end if;
    end if;
*/



if INSERTING then



    --   if ca.pk_pessoa.f_fl_possui_end_corresp(:new.id_pessoa_cobranca) = 'N' then
    --      raise_application_error( -20003, 'Pessoa cobrança não possui endereço de correspondência.');
    --   end if;
null;
/* 
       if :new.fg_migracao      = 'N' then
          if :new.cd_faixa_especie_titulo = 2 then -- PROCESSO
             open cr_processo(:new.cd_periodo_processo, :new.nr_processo);
             fetch cr_processo into r_processo;
             close cr_processo;
             pk_lct_util.p_centro_custo_linha_produto( 3 --REQUERIMENTO
                                                     , r_processo.cd_requerimento --p_id_chave                         in    ca.lct_configuracao_cc_lp.id_chave%type
                                                     , r_processo.cd_estabelecimento --                in    sa.processo.cd_estabelecimento%type
                                                     , r_processo.nr_matricula --p_nr_matric_usuario                in    sa.processo.nr_matricula%type
                                                     , l_cd_centro_custo   --           out   al.centro_custo.cd_centro_custo_ebs%type
                                                     , l_cd_linha_produto);
             if l_cd_centro_custo is null or l_cd_linha_produto is null then
                pk_lct_util.p_centro_custo_linha_produto( 2 --TIPO DE REQUERIMENTO
                                                        , r_processo.cd_tipo_recebimento_faixa --p_id_chave                         in    ca.lct_configuracao_cc_lp.id_chave%type
                                                        , r_processo.cd_estabelecimento --                in    sa.processo.cd_estabelecimento%type
                                                        , r_processo.nr_matricula 
                                                        , l_cd_centro_custo   --           out   al.centro_custo.cd_centro_custo_ebs%type
                                                        , l_cd_linha_produto);
                 if l_cd_centro_custo is null then
                    raise_application_error( -20004, 'Requerimento('|| r_processo.cd_requerimento ||')/Tipo de recebimento(' || r_processo.cd_tipo_recebimento_faixa || ') sem Centro de Custo configurado para contabilização ');
                 end if;
                 if l_cd_linha_produto is null then
                    raise_application_error( -20005, 'Requerimento('|| r_processo.cd_requerimento ||')/Tipo de recebimento(' || r_processo.cd_tipo_recebimento_faixa || ') sem Linha de produto configurado para contabilização ');
                 end if;
             end if;
          elsif :new.cd_faixa_especie_titulo in (1, 3, 4, 5) then
             --1 MENSALIDADE
             --3 NEGOCIAÇÃO
             --4 ANTECIPAÇÃO
             --5 CARTÃO UNIFOR
             pk_lct_util.p_centro_custo_linha_produto( 1
                                                     , 0                                -- p_id_chave            in    ca.lct_configuracao_cc_lp.id_chave%type
                                                     , :new.cd_estab_cliente            --                       in    sa.processo.cd_estabelecimento%type
                                                     , :new.nr_matric_cliente           --p_nr_matric_usuario    in    sa.processo.nr_matricula%type
                                                     , l_cd_centro_custo                --                       out   al.centro_custo.cd_centro_custo_ebs%type
                                                     , l_cd_linha_produto);
             if l_cd_centro_custo is null then
                raise_application_error( -20006, 'Curso/habilitação (' || s_dados_aluno( :new.cd_estab_cliente, 7)|| '-' ||
                                                                          s_dados_aluno( :new.cd_estab_cliente, 8)||
                                                                     ') do aluno '|| :new.cd_estab_cliente || '-' || :new.nr_matric_cliente ||  ' sem Centro de custo configurado para contabilização');
             end if;
             if l_cd_linha_produto is null then 
                raise_application_error( -20007, 'Curso/habilitação do aluno (' || s_dados_aluno( :new.cd_estab_cliente, 7)|| '-' ||
                                                                                     s_dados_aluno( :new.cd_estab_cliente, 8)||
                                                                             ') ' ||  :new.cd_estab_cliente || '-' || :new.nr_matric_cliente ||  ' sem Linha de produto configurado para contabilização');
             end if;
          end if;
       end if;
       if  :new.fg_migracao      = 'N'
       and :new.vl_ajuste        <> 0 then
           raise_application_error( -20021, 'CONTA RECEBER: valor de ajuste permitido somente em títulos a receber migrados.');
       end if;
       if  :new.cd_dominio_especie_titulo is  not null 
       and s_pl_dominio_codigo('CTR_001') <>  :new.cd_dominio_especie_titulo  then
           raise_application_error( -20022, 'CONTA RECEBER: Código do domínio d e tipo de origem de titulo inválido. Externo válido: CTR_001 ');
       end if;
       if  :new.cd_dominio_st_titulo  is  not null 
       and s_pl_dominio_codigo('CTR_002') <>  :new.cd_dominio_st_titulo then
           raise_application_error( -20023, 'CONTA RECEBER: Código do domínio do status do titulo inválido. Externo válido: CTR_002 ');
       end if;*/
   end if;

end;

/
ALTER TRIGGER "CA"."TG_CTR_TITULO_B" DISABLE;
--------------------------------------------------------
--  Constraints for Table CTR_TITULO
--------------------------------------------------------

  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "FG_AGRUPA_SAC_CK" CHECK (fg_agrupa_sacado  in ( 'S', 'N' ) ) ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "FG_CONTABILIZA_RLP_CK" CHECK (fg_contabiliza_rlp  in ( 'S', 'N' ) ) ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "FG_INSTR_BANCO_CK" CHECK (fg_instrucao_banco  in ( 'S', 'N' ) ) ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "FL_TITULO_MIGRADO_CK" CHECK ("FG_MIGRACAO"='S' OR "FG_MIGRACAO"='N') ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_PK" PRIMARY KEY ("ID_TITULO")
  USING INDEX "CA"."TIT_PK"  ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("ID_TITULO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_TITULO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_DESCONTO_INCONDICIONAL" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_BOLSA" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_TITULO_LIQUIDO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_DESCONTO_CONDICIONAL" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("CD_DOMINIO_ST_TITULO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("CD_FAIXA_ST_TITULO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_AGRUPA_SACADO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_INSTRUCAO_BANCO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_ORIGINAL" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_CONTABILIZA_RLP" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_MIGRACAO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("VL_AJUSTE" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("DT_HR_INCLUSAO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("DT_VENCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("QT_DIAS_ANTECED_GERAR_BOLETO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_GERAR_BOLETO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_POSTAR_BOLETO" NOT NULL ENABLE);
  ALTER TABLE "CA"."CTR_TITULO" MODIFY ("FG_TITULO_OFERTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CTR_TITULO
--------------------------------------------------------

  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_BANCO_FK" FOREIGN KEY ("CD_AGENTE_COBRADOR")
	  REFERENCES "CA"."BANCO" ("NR_BANCO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_BC_FK" FOREIGN KEY ("ID_BANDEIRA_CARTAO")
	  REFERENCES "CA"."CTR_BANDEIRA_CARTAO" ("ID_BANDEIRA_CARTAO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_CBAC_FK" FOREIGN KEY ("ID_BANCO_AGENCIA_CARTEIRA")
	  REFERENCES "CA"."CTR_BANCO_AGENCIA_CARTEIRA" ("ID_BANCO_AGENCIA_CARTEIRA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_DFET_FK" FOREIGN KEY ("CD_DOMINIO_ESPECIE_TITULO", "CD_FAIXA_ESPECIE_TITULO")
	  REFERENCES "CA"."PL_DOMINIO_FAIXA" ("CD_DOMINIO", "CD_FAIXA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_DFST_FK" FOREIGN KEY ("CD_DOMINIO_ST_TITULO", "CD_FAIXA_ST_TITULO")
	  REFERENCES "CA"."PL_DOMINIO_FAIXA" ("CD_DOMINIO", "CD_FAIXA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_NEGB_FK" FOREIGN KEY ("ID_NEGOCIACAO_BAIXA")
	  REFERENCES "CA"."NGC_NEGOCIACAO" ("ID_NEGOCIACAO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_NEGO_FK" FOREIGN KEY ("ID_NEGOCIACAO_ORIGEM")
	  REFERENCES "CA"."NGC_NEGOCIACAO" ("ID_NEGOCIACAO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_PCLI_FK" FOREIGN KEY ("ID_PESSOA_CLIENTE")
	  REFERENCES "CA"."CP_PESSOA" ("ID_PESSOA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_PC_FK" FOREIGN KEY ("ID_PESSOA_COBRANCA")
	  REFERENCES "CA"."CP_PESSOA" ("ID_PESSOA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_PIRRF_FK" FOREIGN KEY ("ID_PESSOA_IRRF")
	  REFERENCES "CA"."CP_PESSOA" ("ID_PESSOA") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_PROC_FK" FOREIGN KEY ("CD_PERIODO_PROCESSO", "NR_PROCESSO")
	  REFERENCES "SA"."PROCESSO" ("CD_PERIODO", "NR_PROCESSO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_TITP_FK" FOREIGN KEY ("ID_TITULO_PAI")
	  REFERENCES "CA"."CTR_TITULO" ("ID_TITULO") ENABLE;
  ALTER TABLE "CA"."CTR_TITULO" ADD CONSTRAINT "TIT_VI_FK" FOREIGN KEY ("ID_VALOR_INDICE")
	  REFERENCES "CA"."FAT_VALOR_INDICE" ("ID_VALOR_INDICE") ENABLE;
