const express = require('express');

const app = express();
app.disable('x-powered-by');

app.get('/', (req, res) => {
    res.json(req.headers);
});

const server = app.listen(80);

process.on('SIGINT', () => {
    server.close();
    process.exit(130 /* 128 + SIGINT */);
});
