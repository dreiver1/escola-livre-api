/*
  Warnings:

  - You are about to alter the column `01` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `02` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `03` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `04` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `05` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `06` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `07` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `08` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `09` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `10` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `11` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `12` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `13` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `14` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `15` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `16` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `17` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `19` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `20` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `21` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `22` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `23` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `24` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `25` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `26` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `27` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `28` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `29` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `30` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.
  - You are about to alter the column `31` on the `Mes` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `TinyInt`.

*/
-- AlterTable
ALTER TABLE `Mes` ADD COLUMN `18` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `01` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `02` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `03` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `04` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `05` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `06` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `07` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `08` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `09` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `10` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `11` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `12` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `13` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `14` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `15` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `16` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `17` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `19` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `20` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `21` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `22` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `23` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `24` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `25` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `26` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `27` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `28` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `29` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `30` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `31` BOOLEAN NOT NULL DEFAULT false;
