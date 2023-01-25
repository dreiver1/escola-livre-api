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
        const meses = await prisma.mes.findMany({ where: {frequenciaId: id} });
        if (!meses) { return res.status(404).json("mes não cadastrado") };
        let response = [];
        for (let i = 0; i < meses.length; i++) {
            const aux = [
                {   
                    id: 01,
                    dia: meses[i].a01
                },
                {
                    id: 02,
                    dia: meses[i].a02
                },
                {
                    id: 03,
                    dia: meses[i].a03
                },
                {
                    id: 04,
                    dia: meses[i].a04
                },
                {
                    id: 05,
                    dia: meses[i].a05
                },
                {
                    id: 06,
                    dia: meses[i].a06
                },
                {
                    id: 07,
                    dia: meses[i].a07
                },
                {
                    id: 08,
                    dia: meses[i].a08
                },
                {
                    id: 09,
                    dia: meses[i].a09
                },
                {
                    id: 10,
                    dia: meses[i].a10
                },
                {
                    id: 11,
                    dia: meses[i].a11
                },
                {
                    id: 12,
                    dia: meses[i].a12
                },
                {
                    id: 13,
                    dia: meses[i].a13
                },
                {
                    id: 14,
                    dia: meses[i].a14
                },
                {
                    id: 15,
                    dia: meses[i].a15
                },
                {
                    id: 16,
                    dia: meses[i].a16
                },
                {
                    id: 17,
                    dia: meses[i].a17
                },
                {
                    id: 18,
                    dia: meses[i].a18
                },
                {
                    id: 19,
                    dia: meses[i].a19
                },
                {
                    id: 20,
                    dia: meses[i].a20
                },
                {
                    id: 21,
                    dia: meses[i].a21
                },
                {
                    id: 22,
                    dia: meses[i].a22
                },
                {
                    id: 23,
                    dia: meses[i].a23
                },
                {
                    id: 24,
                    dia: meses[i].a24
                },
                {
                    id: 25,
                    dia: meses[i].a25
                },
                {
                    id: 26,
                    dia: meses[i].a26
                },
                {
                    id: 27,
                    dia: meses[i].a27
                },
                {
                    id: 28,
                    dia: meses[i].a28
                },
                {
                    id: 29,
                    dia: meses[i].a29
                },
                {
                    id: 30,
                    dia: meses[i].a30
                },
                {
                    id: 31,
                    dia: meses[i].a31
                },                
            ]
            response.push(aux);
            }
        return res.status(200).json(response);
        
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