const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');
const jwt = require("jsonwebtoken")


exports.CreateAdmin = async (req, res) => {
    try {
        const { nome, celular, email, cpf, dataNascimento, senha } = req.body;
        const getAdminByEmail = await prisma.administradores.findUnique({
            where: { email }
        });
        if (getAdminByEmail) {
            return res.json({ message: "Usuario já cadastrado" })
        }
        bcrypt.hash(senha, 10, async (error, hash) => {
            if (error) {
                return res.status(500).json({ message: error })
            }
            const queryadicionaNovoUsuario = await prisma.administradores.create({
                data: {
                    nome,
                    celular,
                    cpf,
                    email,
                    dataNascimento,
                    senha: hash
                }
            })
            return res.status(200).json({ message: 'usuario cadastrado com sucesso!' })
        })
    }
    catch (error) {
        console.log(error)
        return res.json({ message: 'ocorreu um erro' })
    }
}

exports.conectAdmin = async (req, res) => {
    try {
        const { email, senha } = req.body
        const admin = await prisma.administradores.findUnique({
            where: { email }
        });
        if (admin.length < 1) { return res.status(401).json({ message: "Usuario não existe" }) }
        if (bcrypt.compare(senha, admin.senha)) {
            const token = jwt.sign({
                id_usuario: admin.idAdm,
                email: admin.email
            }, process.env.JWT_KEY, {
                expiresIn: '2h'
            })
            console.log(token)
            return res.status(200).json({
                message: "autenticado com sucesso",
                token: token
            })
        }
    } catch (error) {
        console.log(error)
        return res.status(500).json({ message: "internal server error" });
    }
};

exports.GetAllAdmin = async (req, res) => {
    try {
        const result = await prisma.administradores.findMany();
        return res.json(result);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.GetAdminById = async (req, res) => {
    try {
        const { id } = req.params;
        const result = await prisma.administradores.findUnique({ where: { idAdm: Number(id) } })
        if (!result) {
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        return res.json(result);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.GetAdminByEmail = async (req, res) => {
    try {
        const { email } = req.body;
        const admin = await prisma.administradores.findFirst({ where: email });
        return res.json(admin)
    } catch (error) {
        return res.json("ocorreu um erro: " + error)
    }
}

exports.AlteraAdmin = async (req, res) => {
    try {
        const { id } = req.params;
        const { nome, email, cpf, dataNascimento, celular } = req.body;
        let admin = await prisma.administradores.findUnique({ where: { idAdm: Number(id) } })
        if (!admin) {
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        admin = await prisma.administradores.update({
            where: { idAdm: Number(id) },
            data: { nome, email, celular, cpf, dataNascimento },
        });

        return (res.json(admin));

    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.DelteAdm = async (req, res) => {
    try {
        const { id } = req.params;
        let admin = await prisma.administradores.findUnique({
            where: { idAdm: Number(id) }
        })
        if (!admin) {
            return res.json("Não foi possivel encontrar este usuario");
        }
        admin = await prisma.administradores.delete({
            where: { idAdm: Number(id), }
        })
        return res.json(admin);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}