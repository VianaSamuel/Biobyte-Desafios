const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;


// MIDDLEWARES
app.use(express.json())
app.use(express.urlencoded())
app.use(express.static(__dirname + '/public'));


// ROTAS
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});
app.post('/conta/cadastrar', (req, res) => {
    req.body.email += "@gmail.com";
    console.log('Dados de cadastro recebidos:', req.body);
    
    res.status(201).json({ message: 'Status (201): Conta cadastrada' });
});


// RODAR
app.listen(
    PORT,
    () => { console.log(`Servidor rodando em http://localhost:${PORT}`); }  
);