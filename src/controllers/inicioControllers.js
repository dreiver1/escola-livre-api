exports.helloWolrd = async (request, response) => {
    try{
        const result = "hello, world";
        return response.status(200).send(result)
    }catch(error){
        return response.status(500).send({error: error})
    };
};