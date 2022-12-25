/*
  Warnings:

  - The primary key for the `Frequencia` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `abril_idabril` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `agosto_idagosto` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `alunos_idAluno` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `dezembro_iddezembro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `fevereiro_idfevereiro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `idFrequencia` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `janeiro_idjaneiro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `julho_idjulho` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `junho_idjunho` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `maio_idmaio` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `marco_idmarco` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `novembro_idnovembro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `outubro_idoutro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `setembro_idsetembro` on the `Frequencia` table. All the data in the column will be lost.
  - You are about to drop the column `setembro_idsetembro1` on the `Frequencia` table. All the data in the column will be lost.
  - The primary key for the `notas` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `artes_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `ciencias_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `conteudosTransversais_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `educacaoFisica_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `geografia_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `historia_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `ingles_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `linguaPortuguesa_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `matematica_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the column `producaoTextual_id-table` on the `notas` table. All the data in the column will be lost.
  - You are about to drop the `abril` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `agosto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `artes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ciencias` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `conteudosTransversais` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `dezembro` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `educacaoFisica` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `fevereiro` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `geografia` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `historia` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ingles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `janeiro` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `julho` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `junho` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `linguaPortuguesa` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `maio` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `marco` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `matematica` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `novembro` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `outubro` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `producaoTextual` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `setembro` table. If the table is not empty, all the data it contains will be lost.
  - The required column `id` was added to the `Frequencia` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.

*/
-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_abril1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_agosto1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_alunos1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_dezembro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_fevereiro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_janeiro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_julho1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_junho1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_maio1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_marco1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_novembro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_outubro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_setembro1`;

-- DropForeignKey
ALTER TABLE `Frequencia` DROP FOREIGN KEY `fk_Frequencia_setembro2`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_artes1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_ciencias1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_conteudosTransversais1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_educacaoFisica1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_geografia1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_historia1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_ingles1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_linguaPortuguesa1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_matematica1`;

-- DropForeignKey
ALTER TABLE `notas` DROP FOREIGN KEY `fk_notas_producaoTextual1`;

-- AlterTable
ALTER TABLE `Frequencia` DROP PRIMARY KEY,
    DROP COLUMN `abril_idabril`,
    DROP COLUMN `agosto_idagosto`,
    DROP COLUMN `alunos_idAluno`,
    DROP COLUMN `dezembro_iddezembro`,
    DROP COLUMN `fevereiro_idfevereiro`,
    DROP COLUMN `idFrequencia`,
    DROP COLUMN `janeiro_idjaneiro`,
    DROP COLUMN `julho_idjulho`,
    DROP COLUMN `junho_idjunho`,
    DROP COLUMN `maio_idmaio`,
    DROP COLUMN `marco_idmarco`,
    DROP COLUMN `novembro_idnovembro`,
    DROP COLUMN `outubro_idoutro`,
    DROP COLUMN `setembro_idsetembro`,
    DROP COLUMN `setembro_idsetembro1`,
    ADD COLUMN `alunosIdAluno` VARCHAR(191) NULL,
    ADD COLUMN `id` VARCHAR(191) NOT NULL,
    ADD COLUMN `turmaId` VARCHAR(191) NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `alunos` ADD COLUMN `turmaId` VARCHAR(191) NULL,
    ADD COLUMN `turma_id` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `notas` DROP PRIMARY KEY,
    DROP COLUMN `artes_id-table`,
    DROP COLUMN `ciencias_id-table`,
    DROP COLUMN `conteudosTransversais_id-table`,
    DROP COLUMN `educacaoFisica_id-table`,
    DROP COLUMN `geografia_id-table`,
    DROP COLUMN `historia_id-table`,
    DROP COLUMN `ingles_id-table`,
    DROP COLUMN `linguaPortuguesa_id-table`,
    DROP COLUMN `matematica_id-table`,
    DROP COLUMN `producaoTextual_id-table`,
    ADD COLUMN `turmaId` VARCHAR(191) NULL,
    ADD PRIMARY KEY (`idnotas`);

-- DropTable
DROP TABLE `abril`;

-- DropTable
DROP TABLE `agosto`;

-- DropTable
DROP TABLE `artes`;

-- DropTable
DROP TABLE `ciencias`;

-- DropTable
DROP TABLE `conteudosTransversais`;

-- DropTable
DROP TABLE `dezembro`;

-- DropTable
DROP TABLE `educacaoFisica`;

-- DropTable
DROP TABLE `fevereiro`;

-- DropTable
DROP TABLE `geografia`;

-- DropTable
DROP TABLE `historia`;

-- DropTable
DROP TABLE `ingles`;

-- DropTable
DROP TABLE `janeiro`;

-- DropTable
DROP TABLE `julho`;

-- DropTable
DROP TABLE `junho`;

-- DropTable
DROP TABLE `linguaPortuguesa`;

-- DropTable
DROP TABLE `maio`;

-- DropTable
DROP TABLE `marco`;

-- DropTable
DROP TABLE `matematica`;

-- DropTable
DROP TABLE `novembro`;

-- DropTable
DROP TABLE `outubro`;

-- DropTable
DROP TABLE `producaoTextual`;

-- DropTable
DROP TABLE `setembro`;

-- CreateTable
CREATE TABLE `Turma` (
    `id` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Mes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `01` VARCHAR(191) NOT NULL DEFAULT 'n',
    `02` VARCHAR(191) NOT NULL DEFAULT 'n',
    `03` VARCHAR(191) NOT NULL DEFAULT 'n',
    `04` VARCHAR(191) NOT NULL DEFAULT 'n',
    `05` VARCHAR(191) NOT NULL DEFAULT 'n',
    `06` VARCHAR(191) NOT NULL DEFAULT 'n',
    `07` VARCHAR(191) NOT NULL DEFAULT 'n',
    `08` VARCHAR(191) NOT NULL DEFAULT 'n',
    `09` VARCHAR(191) NOT NULL DEFAULT 'n',
    `10` VARCHAR(191) NOT NULL DEFAULT 'n',
    `11` VARCHAR(191) NOT NULL DEFAULT 'n',
    `12` VARCHAR(191) NOT NULL DEFAULT 'n',
    `13` VARCHAR(191) NOT NULL DEFAULT 'n',
    `14` VARCHAR(191) NOT NULL DEFAULT 'n',
    `15` VARCHAR(191) NOT NULL DEFAULT 'n',
    `16` VARCHAR(191) NOT NULL DEFAULT 'n',
    `17` VARCHAR(191) NOT NULL DEFAULT 'n',
    `19` VARCHAR(191) NOT NULL DEFAULT 'n',
    `20` VARCHAR(191) NOT NULL DEFAULT 'n',
    `21` VARCHAR(191) NOT NULL DEFAULT 'n',
    `22` VARCHAR(191) NOT NULL DEFAULT 'n',
    `23` VARCHAR(191) NOT NULL DEFAULT 'n',
    `24` VARCHAR(191) NOT NULL DEFAULT 'n',
    `25` VARCHAR(191) NOT NULL DEFAULT 'n',
    `26` VARCHAR(191) NOT NULL DEFAULT 'n',
    `27` VARCHAR(191) NOT NULL DEFAULT 'n',
    `28` VARCHAR(191) NOT NULL DEFAULT 'n',
    `29` VARCHAR(191) NOT NULL DEFAULT 'n',
    `30` VARCHAR(191) NOT NULL DEFAULT 'n',
    `31` VARCHAR(191) NOT NULL DEFAULT 'n',
    `frequenciaId` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `Frequencia_alunosIdAluno_fkey` FOREIGN KEY (`alunosIdAluno`) REFERENCES `alunos`(`idAluno`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Frequencia` ADD CONSTRAINT `Frequencia_turmaId_fkey` FOREIGN KEY (`turmaId`) REFERENCES `Turma`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `alunos` ADD CONSTRAINT `alunos_turmaId_fkey` FOREIGN KEY (`turmaId`) REFERENCES `Turma`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Mes` ADD CONSTRAINT `Mes_frequenciaId_fkey` FOREIGN KEY (`frequenciaId`) REFERENCES `Frequencia`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `notas` ADD CONSTRAINT `notas_turmaId_fkey` FOREIGN KEY (`turmaId`) REFERENCES `Turma`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
