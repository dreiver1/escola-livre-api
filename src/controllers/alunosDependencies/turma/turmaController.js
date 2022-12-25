const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.createTurma = async (req, res) =>{
    try {
        const {nome, professoresIdprofessores} = req.body;
        const turma = await prisma.turma.create(
            {
                data: {nome, professoresIdprofessores}
            }
        )
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
        
    }
}

exports.getAllturmas = async (req, res) =>{
    try {
        const turma = await prisma.turma.findMany()
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);  
    }
}

exports.getTurmaById = async (req, res) =>{
    try {
        const { id } = req.params;
        const turma = await prisma.turma.findUnique({where: {id}});
        if(!turma){return res.status(404).json("Turma não encontrada");}
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);  
    }
}

exports.putTurma = async (req, res) =>{
    try {
        const { id } = req.params;
        const { nome, professoresIdprofessores } = req.body;
        let turma = await prisma.turma.findUnique({where: {id}});
        if(!turma){return res.status(404).json("Turma não encontrada");}
        turma = await prisma.turma.update(
            {
                where: { id },
                data:{
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

exports.deleteTurma = async (req, res) =>{
    try {
        const { id } = req.params;
        let turma = await prisma.turma.findUnique({ where: {id} });
        if(!turma){return res.status(404).json("Turma não encontrada");}
        turma = await prisma.turma.delete({
            where: {id},
        })
        return res.status(200).json(turma);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);  
    }
}