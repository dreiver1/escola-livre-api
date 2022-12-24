/*
  Warnings:

  - The primary key for the `alunos` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `professores` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_alunos1`;

-- DropForeignKey
ALTER TABLE `alunos` DROP FOREIGN KEY `fk_alunos_professores`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_alunos1`;

-- DropForeignKey
ALTER TABLE `parecerDoAluno` DROP FOREIGN KEY `fk_parecerDoAluno_alunos1`;

-- AlterTable
ALTER TABLE `Frequencia` MODIFY `alunos_idAluno` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `alunos` DROP PRIMARY KEY,
    MODIFY `idAluno` VARCHAR(191) NOT NULL,
    MODIFY `professores_idprofessores` VARCHAR(191) NULL,
    ADD PRIMARY KEY (`idAluno`);

-- AlterTable
ALTER TABLE `notas` MODIFY `alunos_idAluno` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `parecerDoAluno` MODIFY `alunos_idAluno` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `professores` DROP PRIMARY KEY,
    MODIFY `idprofessores` VARCHAR(191) NOT NULL,
    MODIFY `administradores_idAdm` INTEGER NULL,
    ADD PRIMARY KEY (`idprofessores`);

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `fk_Frequencia_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `alunos` ADD CONSTRAINT `fk_alunos_professores` FOREIGN KEY (`professores_idprofessores`) REFERENCES `professores`(`idprofessores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `fk_notas_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `parecerDoAluno` ADD CONSTRAINT `fk_parecerDoAluno_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
