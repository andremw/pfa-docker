DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `modules` WRITE;
INSERT INTO `modules`(name)
VALUES  ('Docker'),
        ('Fundamentos de Arquitetura de Software'),
        ('Comunicação'),
        ('RabbitMQ'),
        ('Autenticação e Keycloak');

UNLOCK TABLES;
