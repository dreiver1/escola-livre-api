-- CreateTable
CREATE TABLE "Turma" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "professoresIdprofessores" TEXT,

    CONSTRAINT "Turma_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Frequencia" (
    "id" TEXT NOT NULL,
    "alunosIdAluno" TEXT,
    "turmaId" TEXT,

    CONSTRAINT "Frequencia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Aluno" (
    "idAluno" TEXT NOT NULL,
    "nome" VARCHAR(45) NOT NULL,
    "dataNascimento" VARCHAR(45) NOT NULL,
    "celular" VARCHAR(45) NOT NULL,
    "email" VARCHAR(45) NOT NULL,
    "senha" VARCHAR(45) NOT NULL,
    "cpf" VARCHAR(45),
    "professores_idprofessores" TEXT,
    "turmaId" TEXT,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("idAluno")
);

-- CreateTable
CREATE TABLE "Mes" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "a01" BOOLEAN NOT NULL DEFAULT false,
    "a02" BOOLEAN NOT NULL DEFAULT false,
    "a03" BOOLEAN NOT NULL DEFAULT false,
    "a04" BOOLEAN NOT NULL DEFAULT false,
    "a05" BOOLEAN NOT NULL DEFAULT false,
    "a06" BOOLEAN NOT NULL DEFAULT false,
    "a07" BOOLEAN NOT NULL DEFAULT false,
    "a08" BOOLEAN NOT NULL DEFAULT false,
    "a09" BOOLEAN NOT NULL DEFAULT false,
    "a10" BOOLEAN NOT NULL DEFAULT false,
    "a11" BOOLEAN NOT NULL DEFAULT false,
    "a12" BOOLEAN NOT NULL DEFAULT false,
    "a13" BOOLEAN NOT NULL DEFAULT false,
    "a14" BOOLEAN NOT NULL DEFAULT false,
    "a15" BOOLEAN NOT NULL DEFAULT false,
    "a16" BOOLEAN NOT NULL DEFAULT false,
    "a17" BOOLEAN NOT NULL DEFAULT false,
    "a18" BOOLEAN NOT NULL DEFAULT false,
    "a19" BOOLEAN NOT NULL DEFAULT false,
    "a20" BOOLEAN NOT NULL DEFAULT false,
    "a21" BOOLEAN NOT NULL DEFAULT false,
    "a22" BOOLEAN NOT NULL DEFAULT false,
    "a23" BOOLEAN NOT NULL DEFAULT false,
    "a24" BOOLEAN NOT NULL DEFAULT false,
    "a25" BOOLEAN NOT NULL DEFAULT false,
    "a26" BOOLEAN NOT NULL DEFAULT false,
    "a27" BOOLEAN NOT NULL DEFAULT false,
    "a28" BOOLEAN NOT NULL DEFAULT false,
    "a29" BOOLEAN NOT NULL DEFAULT false,
    "a30" BOOLEAN NOT NULL DEFAULT false,
    "a31" BOOLEAN NOT NULL DEFAULT false,
    "frequenciaId" TEXT,

    CONSTRAINT "Mes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "administradores" (
    "idAdm" SERIAL NOT NULL,
    "nome" VARCHAR(45) NOT NULL,
    "dataNascimento" VARCHAR(45) NOT NULL,
    "cpf" VARCHAR(45) NOT NULL,
    "celular" VARCHAR(45) NOT NULL,
    "email" VARCHAR(45) NOT NULL,
    "senha" VARCHAR(45) NOT NULL,

    CONSTRAINT "administradores_pkey" PRIMARY KEY ("idAdm")
);

-- CreateTable
CREATE TABLE "notas" (
    "idnotas" SERIAL NOT NULL,
    "nota01" DOUBLE PRECISION,
    "nota02" DOUBLE PRECISION,
    "nota03" DOUBLE PRECISION,
    "nota04" DOUBLE PRECISION,
    "alunosIdAluno" TEXT,

    CONSTRAINT "notas_pkey" PRIMARY KEY ("idnotas")
);

-- CreateTable
CREATE TABLE "parecerDoAluno" (
    "idparecerDoAluno" INTEGER NOT NULL,
    "alunos_idAluno" TEXT NOT NULL,

    CONSTRAINT "parecerDoAluno_pkey" PRIMARY KEY ("idparecerDoAluno")
);

-- CreateTable
CREATE TABLE "professores" (
    "idprofessores" TEXT NOT NULL,
    "nome" VARCHAR(45),
    "dataNascimento" VARCHAR(45),
    "celular" VARCHAR(45),
    "cpf" VARCHAR(45),
    "email" VARCHAR(45),
    "senha" VARCHAR(45),
    "administradores_idAdm" INTEGER,

    CONSTRAINT "professores_pkey" PRIMARY KEY ("idprofessores")
);

-- CreateIndex
CREATE INDEX "fk_alunos_professores_idx" ON "Aluno"("professores_idprofessores");

-- CreateIndex
CREATE UNIQUE INDEX "administradores_email_key" ON "administradores"("email");

-- CreateIndex
CREATE INDEX "fk_parecerDoAluno_alunos1_idx" ON "parecerDoAluno"("alunos_idAluno");

-- CreateIndex
CREATE INDEX "fk_professores_administradores1_idx" ON "professores"("administradores_idAdm");

-- AddForeignKey
ALTER TABLE "Turma" ADD CONSTRAINT "Turma_professoresIdprofessores_fkey" FOREIGN KEY ("professoresIdprofessores") REFERENCES "professores"("idprofessores") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Frequencia" ADD CONSTRAINT "Frequencia_alunosIdAluno_fkey" FOREIGN KEY ("alunosIdAluno") REFERENCES "Aluno"("idAluno") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Frequencia" ADD CONSTRAINT "Frequencia_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "Turma"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Aluno" ADD CONSTRAINT "Aluno_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "Turma"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mes" ADD CONSTRAINT "Mes_frequenciaId_fkey" FOREIGN KEY ("frequenciaId") REFERENCES "Frequencia"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "notas" ADD CONSTRAINT "notas_alunosIdAluno_fkey" FOREIGN KEY ("alunosIdAluno") REFERENCES "Aluno"("idAluno") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "parecerDoAluno" ADD CONSTRAINT "fk_parecerDoAluno_alunos1" FOREIGN KEY ("alunos_idAluno") REFERENCES "Aluno"("idAluno") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "professores" ADD CONSTRAINT "fk_professores_administradores1" FOREIGN KEY ("administradores_idAdm") REFERENCES "administradores"("idAdm") ON DELETE NO ACTION ON UPDATE NO ACTION;
