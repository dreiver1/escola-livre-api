/*
  Warnings:

  - You are about to drop the column `turmaId` on the `aluno` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `aluno` DROP FOREIGN KEY `Aluno_turmaId_fkey`;

-- AlterTable
ALTER TABLE `aluno` DROP COLUMN `turmaId`;

-- CreateTable
CREATE TABLE `_AlunoToTurma` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_AlunoToTurma_AB_unique`(`A`, `B`),
    INDEX `_AlunoToTurma_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_AlunoToTurma` ADD CONSTRAINT `_AlunoToTurma_A_fkey` FOREIGN KEY (`A`) REFERENCES `Aluno`(`idAluno`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_AlunoToTurma` ADD CONSTRAINT `_AlunoToTurma_B_fkey` FOREIGN KEY (`B`) REFERENCES `Turma`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
