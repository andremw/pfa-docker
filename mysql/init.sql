DROP TABLE IF EXISTS 'modules';

CREATE TABLE 'modules' (
  'id' int AUTO_INCREMENT,
  'name' varchar(255) NOT NULL,
  PRIMARY KEY ('id')
)

LOCK TABLES 'modules' WRITE;

INSERT INTO 'modules' VALUES ('Docker');
INSERT INTO 'modules' VALUES ('Fundamentos de Arquitetura de Software');
INSERT INTO 'modules' VALUES ('Comunicação');
INSERT INTO 'modules' VALUES ('RabbitMQ');
INSERT INTO 'modules' VALUES ('Autenticação e Keycloak');

UNLOCK TABLES;
