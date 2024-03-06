-- Doctrine Migration File Generated on 2024-03-06 10:45:52

-- Version DoctrineMigrations\Version20240305121422
CREATE TABLE comment (id INT AUTO_INCREMENT NOT NULL, conference_id INT NOT NULL, author VARCHAR(255) NOT NULL, text LONGTEXT NOT NULL, email VARCHAR(255) NOT NULL, created_at DATETIME NOT NULL COMMENT '(DC2Type:datetime_immutable)', photo_filename VARCHAR(255) DEFAULT NULL, INDEX IDX_9474526C604B8382 (conference_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;
CREATE TABLE conference (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;
CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL COMMENT '(DC2Type:datetime_immutable)', available_at DATETIME NOT NULL COMMENT '(DC2Type:datetime_immutable)', delivered_at DATETIME DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)', INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;
ALTER TABLE comment ADD CONSTRAINT FK_9474526C604B8382 FOREIGN KEY (conference_id) REFERENCES conference (id);
-- Version DoctrineMigrations\Version20240305121422 update table metadata;
INSERT INTO doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\\Version20240305121422', '2024-03-06 10:45:52', 0);

-- Version DoctrineMigrations\Version20240305153228
-- Version DoctrineMigrations\Version20240305153228 update table metadata;
INSERT INTO doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\\Version20240305153228', '2024-03-06 10:45:52', 0);

-- Version DoctrineMigrations\Version20240306094448
ALTER TABLE conference ADD slug VARCHAR(255) NOT NULL;
-- Version DoctrineMigrations\Version20240306094448 update table metadata;
INSERT INTO doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\\Version20240306094448', '2024-03-06 10:45:52', 0);
