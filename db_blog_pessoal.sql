CREATE TABLE [Temas] (
	id bigint NOT NULL,
	Descricao varchar(255) NOT NULL,
  CONSTRAINT [PK_TEMAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Postagens] (
	id bigint NOT NULL,
	Titulo varchar(255) NOT NULL,
	Texto varchar(500) NOT NULL,
	Data datetimeoffset NOT NULL,
	Temaid bigint NOT NULL,
	Usuarioid bigint NOT NULL,
  CONSTRAINT [PK_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Usuario] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000) NOT NULL,
  CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [Postagens] WITH CHECK ADD CONSTRAINT [Postagens_fk0] FOREIGN KEY ([Temaid]) REFERENCES [Temas]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Postagens] CHECK CONSTRAINT [Postagens_fk0]
GO
ALTER TABLE [Postagens] WITH CHECK ADD CONSTRAINT [Postagens_fk1] FOREIGN KEY ([Usuarioid]) REFERENCES [Usuario]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Postagens] CHECK CONSTRAINT [Postagens_fk1]
GO


