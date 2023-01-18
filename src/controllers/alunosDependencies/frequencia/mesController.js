const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.getAllMes = async (req, res) => {
    try {
        const mes = await prisma.mes.findMany();
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.getMesById = async (req, res) => {
    try {
        const { id } = req.params;
        const mes = await prisma.mes.findUnique({ where: { id: Number(id) } });
        if (!mes) { return res.status(404).json("mes não cadastrado") }
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.getMesByFrequenciaId = async (req, res) => {
    try {
        const { id } = req.params;
        const mes = await prisma.mes.findMany({ where: {frequenciaId: id} });
        if (!mes) { return res.status(404).json("mes não cadastrado") }
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.createMes = async (req, res) => {
    try {
        const { nome, frequenciaId } = req.body;
        const mes = await prisma.mes.create({
            data: { nome, frequenciaId }
        })
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}

exports.putMes = async (req, res) => {
    try {
        const { id } = req.params;
        const {  frequenciaId, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, nome, } = req.body;
        let mes = await prisma.mes.findUnique({ where: { id: Number(id) } });
        if (!mes) { return res.status(404).json("mes não cadastrado") }
        mes = await prisma.mes.update({
            where: { id: Number(id) },
            data: { frequenciaId, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, nome,
            }
        })
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}
exports.deleteMes = async (req, res) => {
    try {
        const { id } = req.params;
        let mes = await prisma.mes.findUnique({ where: { id:Number(id) } });
        if (!mes) { return res.status(404).json("mes não cadastrado") }
        mes = await prisma.mes.delete({where: {id: Number(id)}})
        return res.status(200).json(mes);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
    }
}