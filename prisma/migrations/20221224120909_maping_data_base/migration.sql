-- CreateTable
CREATE TABLE `Frequencia` (
    `idFrequencia` INTEGER NOT NULL AUTO_INCREMENT,
    `janeiro_idjaneiro` INTEGER NOT NULL,
    `fevereiro_idfevereiro` INTEGER NOT NULL,
    `marco_idmarco` INTEGER NOT NULL,
    `abril_idabril` INTEGER NOT NULL,
    `maio_idmaio` INTEGER NOT NULL,
    `junho_idjunho` INTEGER NOT NULL,
    `julho_idjulho` INTEGER NOT NULL,
    `agosto_idagosto` INTEGER NOT NULL,
    `setembro_idsetembro` INTEGER NOT NULL,
    `setembro_idsetembro1` INTEGER NOT NULL,
    `outubro_idoutro` INTEGER NOT NULL,
    `novembro_idnovembro` INTEGER NOT NULL,
    `dezembro_iddezembro` INTEGER NOT NULL,
    `alunos_idAluno` INTEGER NOT NULL,

    INDEX `fk_Frequencia_abril1_idx`(`abril_idabril`),
    INDEX `fk_Frequencia_agosto1_idx`(`agosto_idagosto`),
    INDEX `fk_Frequencia_alunos1_idx`(`alunos_idAluno`),
    INDEX `fk_Frequencia_dezembro1_idx`(`dezembro_iddezembro`),
    INDEX `fk_Frequencia_fevereiro1_idx`(`fevereiro_idfevereiro`),
    INDEX `fk_Frequencia_janeiro1_idx`(`janeiro_idjaneiro`),
    INDEX `fk_Frequencia_julho1_idx`(`julho_idjulho`),
    INDEX `fk_Frequencia_junho1_idx`(`junho_idjunho`),
    INDEX `fk_Frequencia_maio1_idx`(`maio_idmaio`),
    INDEX `fk_Frequencia_marco1_idx`(`marco_idmarco`),
    INDEX `fk_Frequencia_novembro1_idx`(`novembro_idnovembro`),
    INDEX `fk_Frequencia_outubro1_idx`(`outubro_idoutro`),
    INDEX `fk_Frequencia_setembro1_idx`(`setembro_idsetembro`),
    INDEX `fk_Frequencia_setembro2_idx`(`setembro_idsetembro1`),
    PRIMARY KEY (`idFrequencia`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `abril` (
    `idabril` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idabril`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `administradores` (
    `idAdm` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45) NOT NULL,
    `dataNascimento` VARCHAR(45) NOT NULL,
    `cpf` VARCHAR(45) NOT NULL,
    `celular` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `senha` VARCHAR(45) NOT NULL,

    UNIQUE INDEX `administradores_email_key`(`email`),
    PRIMARY KEY (`idAdm`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `agosto` (
    `idagosto` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idagosto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `alunos` (
    `idAluno` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45) NOT NULL,
    `dataNascimento` VARCHAR(45) NOT NULL,
    `celular` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `senha` VARCHAR(45) NOT NULL,
    `cpf` VARCHAR(45) NULL,
    `professores_idprofessores` INTEGER NOT NULL,

    INDEX `fk_alunos_professores_idx`(`professores_idprofessores`),
    PRIMARY KEY (`idAluno`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `artes` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ciencias` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `conteudosTransversais` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dezembro` (
    `iddezembro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`iddezembro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `educacaoFisica` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `fevereiro` (
    `idfevereiro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idfevereiro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `geografia` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `historia` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ingles` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `janeiro` (
    `idjaneiro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idjaneiro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `julho` (
    `idjulho` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idjulho`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `junho` (
    `idjunho` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idjunho`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `linguaPortuguesa` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `maio` (
    `idmaio` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idmaio`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `marco` (
    `idmarco` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idmarco`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `matematica` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notas` (
    `idnotas` INTEGER NOT NULL AUTO_INCREMENT,
    `alunos_idAluno` INTEGER NOT NULL,
    `linguaPortuguesa_id-table` INTEGER NOT NULL,
    `matematica_id-table` INTEGER NOT NULL,
    `historia_id-table` INTEGER NOT NULL,
    `geografia_id-table` INTEGER NOT NULL,
    `artes_id-table` INTEGER NOT NULL,
    `conteudosTransversais_id-table` INTEGER NOT NULL,
    `ciencias_id-table` INTEGER NOT NULL,
    `educacaoFisica_id-table` INTEGER NOT NULL,
    `ingles_id-table` INTEGER NOT NULL,
    `producaoTextual_id-table` INTEGER NOT NULL,

    INDEX `fk_notas_alunos1_idx`(`alunos_idAluno`),
    INDEX `fk_notas_artes1_idx`(`artes_id-table`),
    INDEX `fk_notas_ciencias1_idx`(`ciencias_id-table`),
    INDEX `fk_notas_conteudosTransversais1_idx`(`conteudosTransversais_id-table`),
    INDEX `fk_notas_educacaoFisica1_idx`(`educacaoFisica_id-table`),
    INDEX `fk_notas_geografia1_idx`(`geografia_id-table`),
    INDEX `fk_notas_historia1_idx`(`historia_id-table`),
    INDEX `fk_notas_ingles1_idx`(`ingles_id-table`),
    INDEX `fk_notas_linguaPortuguesa1_idx`(`linguaPortuguesa_id-table`),
    INDEX `fk_notas_matematica1_idx`(`matematica_id-table`),
    INDEX `fk_notas_producaoTextual1_idx`(`producaoTextual_id-table`),
    PRIMARY KEY (`idnotas`, `matematica_id-table`, `historia_id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `novembro` (
    `idnovembro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idnovembro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `outubro` (
    `idoutro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idoutro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `parecerDoAluno` (
    `idparecerDoAluno` INTEGER NOT NULL,
    `alunos_idAluno` INTEGER NOT NULL,

    INDEX `fk_parecerDoAluno_alunos1_idx`(`alunos_idAluno`),
    PRIMARY KEY (`idparecerDoAluno`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `producaoTextual` (
    `id-table` INTEGER NOT NULL AUTO_INCREMENT,
    `av0101` FLOAT NULL,
    `av0201` FLOAT NULL,
    `av0301` FLOAT NULL,
    `av0102` FLOAT NULL,
    `av0202` FLOAT NULL,
    `av0302` FLOAT NULL,
    `av0103` FLOAT NULL,
    `av0203` FLOAT NULL,
    `av0303` FLOAT NULL,
    `av0104` FLOAT NULL,
    `av0204` FLOAT NULL,
    `av0304` FLOAT NULL,
    `recFinal` FLOAT NULL,
    `mediaFinal` FLOAT NULL,

    PRIMARY KEY (`id-table`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `professores` (
    `idprofessores` INTEGER NOT NULL,
    `nome` VARCHAR(45) NULL,
    `dataNascimento` VARCHAR(45) NULL,
    `celular` VARCHAR(45) NULL,
    `cpf` VARCHAR(45) NULL,
    `email` VARCHAR(45) NULL,
    `senha` VARCHAR(45) NULL,
    `administradores_idAdm` INTEGER NOT NULL,

    INDEX `fk_professores_administradores1_idx`(`administradores_idAdm`),
    PRIMARY KEY (`idprofessores`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `setembro` (
    `idsetembro` INTEGER NOT NULL AUTO_INCREMENT,
    `01` INTEGER NULL,
    `02` INTEGER NULL,
    `03` INTEGER NULL,
    `04` INTEGER NULL,
    `05` INTEGER NULL,
    `06` INTEGER NULL,
    `07` INTEGER NULL,
    `08` INTEGER NULL,
    `09` INTEGER NULL,
    `10` INTEGER NULL,
    `11` INTEGER NULL,
    `12` INTEGER NULL,
    `13` INTEGER NULL,
    `14` INTEGER NULL,
    `15` INTEGER NULL,
    `16` INTEGER NULL,
    `17` INTEGER NULL,
    `19` INTEGER NULL,
    `20` INTEGER NULL,
    `21` INTEGER NULL,
    `22` INTEGER NULL,
    `23` INTEGER NULL,
    `24` INTEGER NULL,
    `25` INTEGER NULL,
    `26` INTEGER NULL,
    `27` INTEGER NULL,
    `28` INTEGER NULL,
    `29` INTEGER NULL,
    `30` INTEGER NULL,
    `31` INTEGER NULL,

    PRIMARY KEY (`idsetembro`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_abril1` FOREIGN KEY (`abril_idabril`) REFERENCES `abril`(`idabril`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_agosto1` FOREIGN KEY (`agosto_idagosto`) REFERENCES `agosto`(`idagosto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_dezembro1` FOREIGN KEY (`dezembro_iddezembro`) REFERENCES `dezembro`(`iddezembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_fevereiro1` FOREIGN KEY (`fevereiro_idfevereiro`) REFERENCES `fevereiro`(`idfevereiro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_janeiro1` FOREIGN KEY (`janeiro_idjaneiro`) REFERENCES `janeiro`(`idjaneiro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_julho1` FOREIGN KEY (`julho_idjulho`) REFERENCES `julho`(`idjulho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_junho1` FOREIGN KEY (`junho_idjunho`) REFERENCES `junho`(`idjunho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_maio1` FOREIGN KEY (`maio_idmaio`) REFERENCES `maio`(`idmaio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_marco1` FOREIGN KEY (`marco_idmarco`) REFERENCES `marco`(`idmarco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_novembro1` FOREIGN KEY (`novembro_idnovembro`) REFERENCES `novembro`(`idnovembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_outubro1` FOREIGN KEY (`outubro_idoutro`) REFERENCES `outubro`(`idoutro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_setembro1` FOREIGN KEY (`setembro_idsetembro`) REFERENCES `setembro`(`idsetembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_setembro2` FOREIGN KEY (`setembro_idsetembro1`) REFERENCES `setembro`(`idsetembro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `alunos` ADD CONSTRAINT `fk_alunos_professores` FOREIGN KEY (`professores_idprofessores`) REFERENCES `professores`(`idprofessores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_artes1` FOREIGN KEY (`artes_id-table`) REFERENCES `artes`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_ciencias1` FOREIGN KEY (`ciencias_id-table`) REFERENCES `ciencias`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_conteudosTransversais1` FOREIGN KEY (`conteudosTransversais_id-table`) REFERENCES `conteudosTransversais`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_educacaoFisica1` FOREIGN KEY (`educacaoFisica_id-table`) REFERENCES `educacaoFisica`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_geografia1` FOREIGN KEY (`geografia_id-table`) REFERENCES `geografia`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_historia1` FOREIGN KEY (`historia_id-table`) REFERENCES `historia`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_ingles1` FOREIGN KEY (`ingles_id-table`) REFERENCES `ingles`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_linguaPortuguesa1` FOREIGN KEY (`linguaPortuguesa_id-table`) REFERENCES `linguaPortuguesa`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_matematica1` FOREIGN KEY (`matematica_id-table`) REFERENCES `matematica`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_producaoTextual1` FOREIGN KEY (`producaoTextual_id-table`) REFERENCES `producaoTextual`(`id-table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `parecerDoAluno` ADD CONSTRAINT `fk_parecerDoAluno_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `professores` ADD CONSTRAINT `fk_professores_administradores1` FOREIGN KEY (`administradores_idAdm`) REFERENCES `administradores`(`idAdm`) ON DELETE NO ACTION ON UPDATE NO ACTION;
