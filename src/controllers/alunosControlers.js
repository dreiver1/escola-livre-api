const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.createAluno = async (req, res) => {
    try {
        const { nome, dataNascimento, email, cpf, celular, senha, professores_idprofessores, turmaId } = req.body;
        const aluno = await prisma.aluno.create({
            data: {
                nome,
                celular,
                dataNascimento,
                email,
                senha,
                cpf,
                professores_idprofessores,
                turmaId
            }
        })
        return res.status(200).send(aluno)
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    };
};

exports.GetAllAluno = async (req, res) => {
    try {
        const alunos = await prisma.aluno.findMany();
        return res.json(alunos);
    } catch (error) {
        return res.json(error);
    }
}

exports.GetAlunoById = async (req, res) => {
    try {
        const { id } = req.params;
        const aluno = await prisma.aluno.findUnique({ where: { idAluno: id } })
        if (!aluno) {
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        return res.json(aluno);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.AlteraAluno = async (req, res) => {
    try {
        const { id } = req.params;
        const { nome, email, cpf, dataNascimento, celular, turmaId } = req.body;
        let aluno = await prisma.aluno.findUnique({ where: { idAluno: id } })
        if (!aluno) {
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        aluno = await prisma.aluno.update({
            where: { idAluno: id },
            data: { nome, email, celular, cpf, dataNascimento, turmaId },
        });

        return (res.json(aluno));

    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.DelteAluno = async (req, res) => {
    try {
        const { id } = req.params;
        let aluno = await prisma.aluno.findUnique({
            where: { idAluno: id }
        })
        if (!aluno) {
            return res.json("Não foi possivel encontrar este usuario");
        }
        aluno = await prisma.aluno.delete({
            where: { idAluno: id, }
        })
        return res.json(aluno);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.getAlunosByTurma = async (req, res) => {
    try {
        const { id } = req.params;
        let alunos = await prisma.aluno.findMany({
            where: {turmaId: id}
        });
        if (!alunos) {
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        return res.json(alunos);
    } catch (error) {
        return console.log('ocorreu um erro: ' + error);
    }
}