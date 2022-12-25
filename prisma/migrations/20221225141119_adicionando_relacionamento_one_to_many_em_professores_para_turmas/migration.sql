-- AlterTable
ALTER TABLE `Turma` ADD COLUMN `professoresIdprofessores` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `Turma` ADD CONSTRAINT `Turma_professoresIdprofessores_fkey` FOREIGN KEY (`professoresIdprofessores`) REFERENCES `professores`(`idprofessores`) ON DELETE SET NULL ON UPDATE CASCADE;
