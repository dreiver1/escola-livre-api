const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();


exports.CreateAdmin = async (req, res) => {
    try {
        const {nome, celular, email, cpf, dataNascimento, senha } = req.body;
        const admin = await prisma.administradores.create({
            data: {
                nome,
                celular,
                email,
                cpf,
                dataNascimento,
                senha,
            }
        });

        return res.json(admin);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
        
    }
}

exports.GetAllAdmin = async (req, res) => {
    try {
        const result = await prisma.administradores.findMany();
        return res.json(result);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.GetAdminById = async (req, res) =>{
    try {
        const { id } = req.params;
        const result = await prisma.administradores.findUnique({where: { idAdm: Number(id) } })
        if (!result){
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        return res.json(result);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.GetAdminByEmail = async (req, res) =>{
    try {
        const {email} = req.body;
        const admin = await prisma.administradores.findFirst({where: email });
        return res.json(admin)
    } catch (error) {
        return res.json("ocorreu um erro: " + error)
    }
}

exports.AlteraAdmin = async (req, res) =>{
    try {
        const {id} = req.params;
        const {nome, email, cpf, dataNascimento, celular} = req.body;
        let admin = await prisma.administradores.findUnique({where: { idAdm: Number(id) } })
        if (!admin){
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        admin = await prisma.administradores.update({
            where: { idAdm: Number(id) },
            data: { nome, email, celular, cpf, dataNascimento },
        });

        return(res.json(admin));

    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.DelteAdm = async (req, res) =>{
    try {
        const {id} = req.params;
        let admin = await prisma.administradores.findUnique({
            where: {idAdm: Number(id)}
        })
        if(!admin){
            return res.json("Não foi possivel encontrar este usuario");
        }
        admin = await prisma.administradores.delete({
            where: {idAdm: Number(id),}
        })
        return res.json(admin);
    } catch (error) {
        return res.json("ocorreu um erro: "+ error);
    }
}