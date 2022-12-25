/*
  Warnings:

  - You are about to drop the column `alunos_idAluno` on the `notas` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_alunos1`;

-- AlterTable
ALTER TABLE `notas` DROP COLUMN `alunos_idAluno`,
    ADD COLUMN `alunosIdAluno` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `notas_alunosIdAluno_fkey` FOREIGN KEY (`alunosIdAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE SET NULL ON UPDATE CASCADE;
