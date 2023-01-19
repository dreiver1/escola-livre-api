const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.createTurma = async (req, res) => {
    try {
        const { nome, professoresIdprofessores } = req.body;
        const turma = await prisma.Turma.create(
            {
                data: { nome, professoresIdprofessores }
            }
        )
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);

    }
}

exports.AdicionaAluno = async (req, res) => {
    try {
        const { turmaId, alunosId, assignedBy } = req.body
        const turma = await prisma.Turma.findUnique({
            where: {
                id: turmaId
            }
        })
        if (!turma) {
            return res.status(500).json(`turma ${turmaId} não encontrada`)
        }
        const aluno = await prisma.aluno.findUnique({
            where: { idAluno: alunosId }
        })
        if (!aluno) {
            return res.status(500).json(`Aluno ${alunosId} não encontrado`)
        }
        const novoAluno = await prisma.alunosEmTurmas.create({ 
            data: { 
                alunosId,
                turmaId,
                assignedBy
            } 
        })
        return res.status(200).json(novoAluno)
    } catch (error) {
        console.log('Ocorreu um erro: ' + error)
    }
}

exports.getAllturmas = async (req, res) => {
    try {
        const turma = await prisma.Turma.findMany()
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.getTurmaById = async (req, res) => {
    try {
        const { id } = req.params;
        const turma = await prisma.Turma.findUnique({ where: { id } });
        if (!turma) { return res.status(404).json("Turma não encontrada"); }
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.putTurma = async (req, res) => {
    try {
        const { id } = req.params;
        const { nome, professoresIdprofessores } = req.body;
        let turma = await prisma.Turma.findUnique({ where: { id } });
        if (!turma) { return res.status(404).json("Turma não encontrada"); }
        turma = await prisma.Turma.update(
            {
                where: { id },
                data: {
                    nome,
                    professoresIdprofessores,
                }
            }
        )
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.deleteTurma = async (req, res) => {
    try {
        const { id } = req.params;
        let turma = await prisma.Turma.findUnique({ where: { id } });
        if (!turma) { return res.status(404).json("Turma não encontrada"); }
        turma = await prisma.Turma.delete({
            where: { id },
        })
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}