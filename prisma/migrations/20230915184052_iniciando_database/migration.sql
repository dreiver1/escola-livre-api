-- CreateTable
CREATE TABLE "Turma" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "professoresIdprofessores" TEXT,
    CONSTRAINT "Turma_professoresIdprofessores_fkey" FOREIGN KEY ("professoresIdprofessores") REFERENCES "professores" ("idprofessores") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Aluno" (
    "idAluno" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "dataNascimento" TEXT NOT NULL,
    "celular" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "cpf" TEXT,
    "professores_idprofessores" TEXT,
    "turmaId" TEXT,
    CONSTRAINT "Aluno_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "Turma" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "administradores" (
    "idAdm" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "dataNascimento" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "celular" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "notas" (
    "idnotas" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nota01" REAL,
    "nota02" REAL,
    "nota03" REAL,
    "nota04" REAL,
    "alunosIdAluno" TEXT,
    CONSTRAINT "notas_alunosIdAluno_fkey" FOREIGN KEY ("alunosIdAluno") REFERENCES "Aluno" ("idAluno") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "professores" (
    "idprofessores" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT,
    "dataNascimento" TEXT,
    "celular" TEXT,
    "cpf" TEXT,
    "email" TEXT,
    "senha" TEXT
);

-- CreateIndex
CREATE INDEX "fk_alunos_professores_idx" ON "Aluno"("professores_idprofessores");

-- CreateIndex
CREATE UNIQUE INDEX "administradores_email_key" ON "administradores"("email");
