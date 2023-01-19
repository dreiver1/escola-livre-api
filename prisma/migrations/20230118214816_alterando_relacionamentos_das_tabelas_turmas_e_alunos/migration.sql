/*
  Warnings:

  - You are about to drop the column `turmaId` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the `alunos` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `alunos` DROP FOREIGN KEY `alunos_turmaId_fkey`;

-- DropForeignKey
ALTER TABLE `alunos` DROP FOREIGN KEY `fk_alunos_professores`;

-- DropForeignKey
ALTER TABLE `frequencia` DROP FOREIGN KEY `Frequencia_alunosIdAluno_fkey`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `notas_alunosIdAluno_fkey`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `notas_turmaId_fkey`;

-- DropForeignKey
ALTER TABLE `parecerdoaluno` DROP FOREIGN KEY `fk_parecerDoAluno_alunos1`;

-- AlterTable
ALTER TABLE `notas` DROP COLUMN `turmaId`;

-- DropTable
DROP TABLE `alunos`;

-- CreateTable
CREATE TABLE `Aluno` (
    `idAluno` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `dataNascimento` VARCHAR(45) NOT NULL,
    `celular` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `senha` VARCHAR(45) NOT NULL,
    `cpf` VARCHAR(45) NULL,
    `professores_idprofessores` VARCHAR(191) NULL,
    `turmaId` VARCHAR(191) NULL,

    INDEX `fk_alunos_professores_idx`(`professores_idprofessores`),
    PRIMARY KEY (`idAluno`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `Frequencia_alunosIdAluno_fkey` FOREIGN KEY (`alunosIdAluno`) REFERENCES `Aluno`(`idAluno`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_turmaId_fkey` FOREIGN KEY (`turmaId`) REFERENCES `Turma`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `notas_alunosIdAluno_fkey` FOREIGN KEY (`alunosIdAluno`) REFERENCES `Aluno`(`idAluno`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `parecerDoAluno` ADD CONSTRAINT `fk_parecerDoAluno_alunos1` FOREIGN KEY (`alunos_idAluno`) REFERENCES `Aluno`(`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
