
-- public.adm definition

-- Drop table

-- DROP TABLE public.adm;

CREATE TABLE public.adm (
	idadm int4 NOT NULL,
	nome varchar NULL,
	CONSTRAINT adm_pk PRIMARY KEY (idadm)
);


-- public.empresa definition

-- Drop table

-- DROP TABLE public.empresa;

CREATE TABLE public.empresa (
	idempresa int4 NOT NULL,
	nome varchar(45) NULL,
	cnpj varchar(45) NULL,
	CONSTRAINT empresa_pk PRIMARY KEY (idempresa)
);


-- public.gestordepartamento definition

-- Drop table

-- DROP TABLE public.gestordepartamento;

CREATE TABLE public.gestordepartamento (
	idgestordepartamento int4 NOT NULL,
	nome varchar NULL,
	CONSTRAINT gestordepartamento_pk PRIMARY KEY (idgestordepartamento)
);


-- public.gestorunidade definition

-- Drop table

-- DROP TABLE public.gestorunidade;

CREATE TABLE public.gestorunidade (
	idgestorunidade int4 NOT NULL,
	nome varchar NULL,
	CONSTRAINT gestorunidade_pk PRIMARY KEY (idgestorunidade)
);


-- public.trilha definition

-- Drop table

-- DROP TABLE public.trilha;

CREATE TABLE public.trilha (
	idtrilha int4 NOT NULL,
	nome varchar NULL,
	CONSTRAINT trilha_pk PRIMARY KEY (idtrilha)
);


-- public.unidade definition

-- Drop table

-- DROP TABLE public.unidade;

CREATE TABLE public.unidade (
	idunidade int4 NOT NULL,
	nomeunidade varchar NULL,
	empresa_idempresa int4 NULL,
	gestorunidade_idgestorunidade int4 NULL,
	CONSTRAINT unidade_pk PRIMARY KEY (idunidade),
	CONSTRAINT unidade_empresa_fk FOREIGN KEY (empresa_idempresa) REFERENCES public.empresa(idempresa),
	CONSTRAINT unidade_gestor_fk FOREIGN KEY (gestorunidade_idgestorunidade) REFERENCES public.gestorunidade(idgestorunidade)
);


-- public.funcionario definition

-- Drop table

-- DROP TABLE public.funcionario;

CREATE TABLE public.funcionario (
	idfuncionario int4 NOT NULL,
	nome varchar NULL,
	datanascimento varchar NULL,
	dataadmissao varchar NULL,
	cpf varchar NULL,
	email varchar NULL,
	adm_idadm int4 NULL,
	CONSTRAINT funcionario_pk PRIMARY KEY (idfuncionario),
	CONSTRAINT funcionario_fk FOREIGN KEY (adm_idadm) REFERENCES public.adm(idadm)
);


-- public.checklistintegracao definition

-- Drop table

-- DROP TABLE public.checklistintegracao;

CREATE TABLE public.checklistintegracao (
	idchecklistintegracao int4 NOT NULL,
	itemchecklist varchar NULL,
	trilha_idtrilha int4 NULL,
	CONSTRAINT checklistintegracao_pk PRIMARY KEY (idchecklistintegracao),
	CONSTRAINT checklistintegracao_fk FOREIGN KEY (trilha_idtrilha) REFERENCES public.trilha(idtrilha)
);


-- public.cargo definition

-- Drop table

-- DROP TABLE public.cargo;

CREATE TABLE public.cargo (
	idcargo int4 NOT NULL,
	nomecargo varchar NULL,
	nivel varchar NULL,
	funcionario_idfuncionario int4 NULL,
	checklistintegracao_idchecklistintegracao int4 NULL,
	CONSTRAINT cargo_pk PRIMARY KEY (idcargo),
	CONSTRAINT cargo_fk FOREIGN KEY (funcionario_idfuncionario) REFERENCES public.funcionario(idfuncionario),
	CONSTRAINT cargo_fk_1 FOREIGN KEY (checklistintegracao_idchecklistintegracao) REFERENCES public.checklistintegracao(idchecklistintegracao)
);


-- public.departamento definition

-- Drop table

-- DROP TABLE public.departamento;

CREATE TABLE public.departamento (
	iddepartamento int4 NOT NULL,
	nomearea varchar NULL,
	unidade_idunidade int4 NULL,
	funcionario_idfuncionario int4 NULL,
	gestor_idgestor int4 NULL,
	CONSTRAINT departamento_pk PRIMARY KEY (iddepartamento),
	CONSTRAINT departamento_fk FOREIGN KEY (unidade_idunidade) REFERENCES public.unidade(idunidade),
	CONSTRAINT departamento_fk_1 FOREIGN KEY (funcionario_idfuncionario) REFERENCES public.funcionario(idfuncionario),
	CONSTRAINT departamento_fk_2 FOREIGN KEY (gestor_idgestor) REFERENCES public.gestordepartamento(idgestordepartamento)
);