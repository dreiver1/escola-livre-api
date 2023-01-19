/*
  Warnings:

  - You are about to drop the `_alunototurma` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_alunototurma` DROP FOREIGN KEY `_AlunoToTurma_A_fkey`;

-- DropForeignKey
ALTER TABLE `_alunototurma` DROP FOREIGN KEY `_AlunoToTurma_B_fkey`;

-- AlterTable
ALTER TABLE `aluno` ADD COLUMN `turmaId` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `_alunototurma`;

-- AddForeignKey
ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_turmaId_fkey` FOREIGN KEY (`turmaId`) REFERENCES `Turma`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
