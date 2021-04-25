/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     23/04/2021 21:21:09                          */
/*==============================================================*/


drop table if exists ARQUIVO;

drop table if exists BAIRRO;

drop table if exists CIDADE;

drop table if exists ENDERECO;

drop table if exists ESTADO;

drop table if exists ETAPA;

drop table if exists FORNECEDOR;

drop table if exists FUNCAO;

drop table if exists FUNCIONARIO;

drop table if exists OBRA;

drop table if exists OBRA_ETAPA;

drop table if exists OBRA_FUNCIONARIO;

drop table if exists STATUS;

drop table if exists TELEFONE;

drop table if exists TIPO_ARQUIVO;

drop table if exists TIPO_DOCUMENTO;

drop table if exists TIPO_TELEFONE;

drop table if exists TIPO_USUARIO;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: ARQUIVO                                               */
/*==============================================================*/
create table ARQUIVO
(
   COD_ARQUIVO          smallint not null,
   COD_TIPO_ARQUIVO     smallint not null,
   COD_USUARIO          mediumint not null,
   COD_OBRA             mediumint not null,
   DES_CAMINHO_ARQUIVO  varchar(200) not null
);

alter table ARQUIVO
   add primary key (COD_ARQUIVO);

/*==============================================================*/
/* Table: BAIRRO                                                */
/*==============================================================*/
create table BAIRRO
(
   COD_BAIRRO           mediumint not null,
   COD_CIDADE           mediumint not null,
   DES_BAIRRO           varchar(100) not null
);

alter table BAIRRO
   add primary key (COD_BAIRRO);

/*==============================================================*/
/* Table: CIDADE                                                */
/*==============================================================*/
create table CIDADE
(
   COD_CIDADE           mediumint not null,
   COD_ESTADO           mediumint not null,
   DES__CIDADE          varchar(100) not null
);

alter table CIDADE
   add primary key (COD_CIDADE);

/*==============================================================*/
/* Table: ENDERECO                                              */
/*==============================================================*/
create table ENDERECO
(
   COD_ENDERECO         mediumint not null,
   COD_BAIRRO           mediumint not null,
   COD_USUARIO          mediumint not null,
   COD_OBRA             mediumint not null,
   COD_FUNCIONARIO      mediumint not null,
   COD_FORNECEDOR       mediumint not null,
   DES_ENDERECO         varchar(200) not null
);

alter table ENDERECO
   add primary key (COD_ENDERECO);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO
(
   COD_ESTADO           mediumint not null,
   DES_ESTADO           varchar(100) not null
);

alter table ESTADO
   add primary key (COD_ESTADO);

/*==============================================================*/
/* Table: ETAPA                                                 */
/*==============================================================*/
create table ETAPA
(
   COD_ETAPA            int not null,
   NOM_ETAPA            varchar(100) not null,
   DES_ETAPA            varchar(500) not null,
   DTA_ETAPA            date not null,
   VAL_PORCENTAGEM_ETAPA float(5,2) not null
);

alter table ETAPA
   add primary key (COD_ETAPA);

/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR
(
   COD_FORNECEDOR       mediumint not null,
   COD_TIPO_DOCUMENTO   tinyint not null,
   COD_USUARIO          mediumint not null,
   NOM_FORNECEDOR       varchar(100) not null,
   NUM_TELEFONE         varchar(20) not null
);

alter table FORNECEDOR
   add primary key (COD_FORNECEDOR);

/*==============================================================*/
/* Table: FUNCAO                                                */
/*==============================================================*/
create table FUNCAO
(
   COD_FUNCAO           smallint not null,
   DES_FUNCAO           varchar(100) not null
);

alter table FUNCAO
   add primary key (COD_FUNCAO);

/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO
(
   COD_FUNCIONARIO      mediumint not null,
   COD_FUNCAO           smallint not null,
   NOM_FUNCIONARIO      varchar(100) not null,
   NUM_MATRICULA_FUNCIONARIO mediumint not null,
   NUM_TELEFONE         varchar(20) not null
);

alter table FUNCIONARIO
   add primary key (COD_FUNCIONARIO);

/*==============================================================*/
/* Table: OBRA                                                  */
/*==============================================================*/
create table OBRA
(
   COD_OBRA             mediumint not null,
   COD_PROGRESSO        int not null,
   NOM_OBRA             varchar(100),
   DTA_INICIO_OBRA      date,
   DTA_FINAL_OBRA       date
);

alter table OBRA
   add primary key (COD_OBRA);

/*==============================================================*/
/* Table: OBRA_ETAPA                                            */
/*==============================================================*/
create table OBRA_ETAPA
(
   COD_OBRA_ETAPA       mediumint not null,
   COD_ETAPA            int not null,
   COD_OBRA             mediumint not null
);

alter table OBRA_ETAPA
   add primary key (COD_OBRA_ETAPA);

/*==============================================================*/
/* Table: OBRA_FUNCIONARIO                                      */
/*==============================================================*/
create table OBRA_FUNCIONARIO
(
   COD_OBRA_FUNCIONARIO mediumint not null,
   COD_OBRA             mediumint not null,
   COD_FUNCIONARIO      mediumint not null
);

alter table OBRA_FUNCIONARIO
   add primary key (COD_OBRA_FUNCIONARIO);

/*==============================================================*/
/* Table: STATUS                                                */
/*==============================================================*/
create table STATUS
(
   COD_STATUS           int not null,
   COD_PROGRESSO        int not null,
   DES_STATUS           varchar(100) not null
);

alter table STATUS
   add primary key (COD_STATUS);

/*==============================================================*/
/* Table: TELEFONE                                              */
/*==============================================================*/
create table TELEFONE
(
   COD_TELEFONE         int not null,
   COD_FUNCIONARIO      char(10) not null,
   COD_FORNECEDOR       mediumint not null,
   COD_USUARIO          mediumint not null,
   COD_TIPO_TELEFONE    int not null,
   DES_TELEFONE         varchar(20) not null
);

alter table TELEFONE
   add primary key (COD_TELEFONE);

/*==============================================================*/
/* Table: TIPO_ARQUIVO                                          */
/*==============================================================*/
create table TIPO_ARQUIVO
(
   COD_TIPO_ARQUIVO     smallint not null,
   DES_TIPO_ARQUIVO     varchar(100) not null
);

alter table TIPO_ARQUIVO
   add primary key (COD_TIPO_ARQUIVO);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO
(
   COD_TIPO_DOCUMENTO   tinyint not null,
   DES_TIPO_DOCUMENTO   varchar(100) not null
);

alter table TIPO_DOCUMENTO
   add primary key (COD_TIPO_DOCUMENTO);

/*==============================================================*/
/* Table: TIPO_TELEFONE                                         */
/*==============================================================*/
create table TIPO_TELEFONE
(
   COD_TIPO_TELEFONE    int not null,
   DES_TIPO_TELEFONE    varchar(50) not null
);

alter table TIPO_TELEFONE
   add primary key (COD_TIPO_TELEFONE);

/*==============================================================*/
/* Table: TIPO_USUARIO                                          */
/*==============================================================*/
create table TIPO_USUARIO
(
   COD_TIPO_USUARIO     tinyint not null,
   DES_TIPO_USUARIO     varchar(100) not null
);

alter table TIPO_USUARIO
   add primary key (COD_TIPO_USUARIO);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   COD_USUARIO          mediumint not null,
   COD_TIPO_USUARIO     tinyint not null,
   COD_TIPO_DOCUMENTO   tinyint not null,
   NOM_USUARIO          varchar(100) not null,
   EMAIL_USUARIO        varchar(100) not null,
   NUM_TEL_USUARIO      varchar(20) not null,
   NUM_DOCUMENTO        varchar(100) not null
);

alter table USUARIO
   add primary key (COD_USUARIO);

alter table ARQUIVO add constraint FK_TIPO_ARQUIVO_ARQUIVO foreign key (COD_TIPO_ARQUIVO)
      references TIPO_ARQUIVO (COD_TIPO_ARQUIVO) on delete restrict on update restrict;

alter table ARQUIVO add constraint FK_USUARIO_ARQUIVO foreign key (COD_USUARIO)
      references USUARIO (COD_USUARIO) on delete restrict on update restrict;

alter table BAIRRO add constraint FK_CIDADE_ENDERECO foreign key (COD_CIDADE)
      references CIDADE (COD_CIDADE) on delete restrict on update restrict;

alter table CIDADE add constraint FK_ESTADO_CIDADE foreign key (COD_ESTADO)
      references ESTADO (COD_ESTADO) on delete restrict on update restrict;

alter table ENDERECO add constraint FK_BAIRRO_ENDERECO foreign key (COD_BAIRRO)
      references BAIRRO (COD_BAIRRO) on delete restrict on update restrict;

alter table ENDERECO add constraint FK_FORNECEDOR_ENDERECO foreign key (COD_FORNECEDOR)
      references FORNECEDOR (COD_FORNECEDOR) on delete restrict on update restrict;

alter table ENDERECO add constraint FK_FUNCIONARIO_ENDERECO foreign key (COD_FUNCIONARIO)
      references FUNCIONARIO (COD_FUNCIONARIO) on delete restrict on update restrict;

alter table ENDERECO add constraint FK_OBRA_ENDERECO foreign key (COD_OBRA)
      references OBRA (COD_OBRA) on delete restrict on update restrict;

alter table ENDERECO add constraint FK_USUARIO_ENDERECO foreign key (COD_USUARIO)
      references USUARIO (COD_USUARIO) on delete restrict on update restrict;

alter table FORNECEDOR add constraint FK_TIPO_DOCUMENTO_FORNECEDOR foreign key (COD_TIPO_DOCUMENTO)
      references TIPO_DOCUMENTO (COD_TIPO_DOCUMENTO) on delete restrict on update restrict;

alter table FORNECEDOR add constraint FK_USUARIO_FORNECEDOR foreign key (COD_USUARIO)
      references USUARIO (COD_USUARIO) on delete restrict on update restrict;

alter table FUNCIONARIO add constraint FK_FUNCAO_FUNCIONARIO foreign key (COD_FUNCAO)
      references FUNCAO (COD_FUNCAO) on delete restrict on update restrict;

alter table OBRA_ETAPA add constraint FK_ETAPA_OBRA_ETAPA foreign key (COD_ETAPA)
      references ETAPA (COD_ETAPA) on delete restrict on update restrict;

alter table OBRA_ETAPA add constraint FK_OBRA_OBRA_ETAPA foreign key (COD_OBRA)
      references OBRA (COD_OBRA) on delete restrict on update restrict;

alter table OBRA_FUNCIONARIO add constraint FK_FK_FUNCIONARIO_OBRA_FUNCIONARIO foreign key (COD_FUNCIONARIO)
      references FUNCIONARIO (COD_FUNCIONARIO) on delete restrict on update restrict;

alter table OBRA_FUNCIONARIO add constraint FK_OBRA_OBRA_FUNCIONARIO foreign key (COD_OBRA)
      references OBRA (COD_OBRA) on delete restrict on update restrict;

alter table STATUS add constraint FK_PROGRESSO_STATUS foreign key (COD_PROGRESSO)
      references ETAPA (COD_ETAPA) on delete restrict on update restrict;

alter table TELEFONE add constraint FK_FORNECEDORE_TELEFONE foreign key (COD_FORNECEDOR)
      references FORNECEDOR (COD_FORNECEDOR) on delete restrict on update restrict;

alter table TELEFONE add constraint FK_FUNCIONARIO_TELEFONE foreign key (COD_FUNCIONARIO)
      references FUNCIONARIO (COD_FUNCIONARIO) on delete restrict on update restrict;

alter table TELEFONE add constraint FK_FK_TIPO_TELEFONE_TELEFONE foreign key (COD_TIPO_TELEFONE)
      references TIPO_TELEFONE (COD_TIPO_TELEFONE) on delete restrict on update restrict;

alter table TELEFONE add constraint FK_USUARIO_TELEFONE foreign key (COD_USUARIO)
      references USUARIO (COD_USUARIO) on delete restrict on update restrict;

alter table USUARIO add constraint FK_TIPO_DOCUMENTO_USUARIO foreign key (COD_TIPO_DOCUMENTO)
      references TIPO_DOCUMENTO (COD_TIPO_DOCUMENTO) on delete restrict on update restrict;

alter table USUARIO add constraint FK_TIPO_USUARIO_USUARIO foreign key (COD_TIPO_USUARIO)
      references TIPO_USUARIO (COD_TIPO_USUARIO) on delete restrict on update restrict;

