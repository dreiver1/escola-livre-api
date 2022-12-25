const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.cretaNota = async (req, res) =>{
    try {
        const {alunosIdAluno, turmaId} = req.body;
        const nota = await prisma.notas.create({data: {alunosIdAluno, turmaId}})
        return res.status(200).json(nota);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.getAllnota = async (req, res) =>{
    try {
        const nota = await prisma.notas.findMany();
        if(!nota) return res.status(404).json("nota não encontrada");
        return res.status(200).json(nota);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.getNotaByID = async (req, res) =>{
    try {
        const { id } = req.params;
        const nota = await prisma.notas.findUnique({where: {idnotas: Number(id)}});
        if(!nota) return res.status(404).json("nota não encontrada");
        return res.status(200).json(nota);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.putNotaByID = async (req, res) =>{
    try {
        const { id } = req.params;
        const { alunosIdAluno, turmaId, nota01, nota02, nota03, nota04 } = req.body;
        let nota = await prisma.notas.findUnique({where: {idnotas: Number(id)}});
        if(!nota) return res.status(404).json("nota não encontrada");
        nota = await prisma.notas.update({
            where: {idnotas: Number(id)},
            data: {alunosIdAluno, turmaId, nota01, nota02, nota03, nota04}
        })
        return res.status(200).json(nota);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.deleteNota = async (req, res) =>{
    try {
        const { id } = req.params;
        let nota = await prisma.notas.findUnique({where: {idnotas: Number(id)}});
        if(!nota) return res.status(404).json("nota não encontrada");
        nota = await prisma.notas.delete({where: {idnotas: Number(id)}});
        return res.status(200).json(nota)
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}