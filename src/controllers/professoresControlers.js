const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

exports.CreateProf = async (req, res) => {
    try {
        const {nome, celular, email, cpf, dataNascimento, senha, administradores_idAdm, id} = req.body;
        const admin = await prisma.professores.create({
            data: {
                nome,
                celular,
                email,
                cpf,
                dataNascimento,
                senha,
                administradores_idAdm: Number(administradores_idAdm),
            }
        });

        return res.json(admin);
    } catch (error) {
        return res.status(500).json("ocorreu um erro: " + error);
        
    }
}

exports.GetAllProf = async (req, res) => {
    try {
        const result = await prisma.professores.findMany();
        return res.json(result);
    } catch (error) {
        return res.json(error);
    }
}

exports.GetProfById = async (req, res) =>{
    try {
        const { id } = req.params;
        const professor = await prisma.professores.findUnique({where: { idprofessores: id } })
        if (!professor){
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        return res.json(professor);
    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

// exports.GetAdminByEmail = async (req, res) =>{
//     try {
//         const {email} = req.body;
//         const admin = await prisma.professores.findFirst({where: email });
//         return res.json(admin)
//     } catch (error) {
//         return res.json("ocorreu um erro: " + error)
//     }
// }

exports.AlteraProf = async (req, res) =>{
    try {
        const { id } = req.params;
        const {nome, email, cpf, dataNascimento, celular} = req.body;
        let admin = await prisma.professores.findUnique({where: { idprofessores: id } })
        if (!admin){
            return res.json({ error: "Não possivel encotrar esse usuario" });
        }
        admin = await prisma.professores.update({
            where: { idprofessores: id },
            data: { nome, email, celular, cpf, dataNascimento },
        });

        return(res.json(admin));

    } catch (error) {
        return res.json("ocorreu um erro: " + error);
    }
}

exports.DelteProf = async (req, res) =>{
    try {
        const {id} = req.params;
        let professor = await prisma.professores.findUnique({
            where: {idprofessores: id}
        })
        if(!professor){
            return res.json("Não foi possivel encontrar este usuario");
        }
        professor = await prisma.professores.delete({
            where: {idprofessores: id,}
        })
        return res.json(professor);
    } catch (error) {
        return res.json("ocorreu um erro: "+ error);
    }
}