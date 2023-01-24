const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
exports.createFrequencia = async (req, res)=>{
    try {
        const {turmaId , alunosIdAluno} = req.body;
        const frequencia = await prisma.frequencia.create({data: {
            alunosIdAluno,
            turmaId
        }})
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro:" + error);
    }
}

exports.getAllFrequencia = async (req, res)=>{
    try {
        const frequencia = await prisma.frequencia.findMany();
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro:" + error);
    }
}

exports.getAllFrequenciaByAluno = async (req, res)=>{
    try {
        const { id } = req.params;
        const frequencia = await prisma.frequencia.findFirst({
            where: {alunosIdAluno: id}
        });
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro:" + error);
    }
}

exports.getFrequenciaById = async (req, res) =>{
    try {
        const { id } = req.params;
        const frequencia = await prisma.frequencia.findUnique({where:{id}})
        if(!frequencia){return res.status(404).json("frequencia não encontrada");}
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.putFrequencia = async (req, res) =>{
    try { 
        const { id } = req.params;
        const {turmaId , alunosIdAluno} = req.body;
        let frequencia = await prisma.frequencia.findUnique({where:{id}})
        if(!frequencia){return res.status(404).json("frequencia não encontrada");}
        frequencia = await prisma.frequencia.update({
            where: {id},
            data: {
                alunosIdAluno,
                turmaId,
            }
        })
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.deleteFrequencia = async (req, res) =>{
    try {
        const { id } = req.params;
        let frequencia = await prisma.frequencia.findUnique({where:{id}})
        if(!frequencia){return res.status(404).json("frequencia não encontrada");}
        frequencia = await prisma.frequencia.delete({where: {id}});
        return res.status(200).json(frequencia);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}