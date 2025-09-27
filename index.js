const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Welcome to the Blockchain Shuttle Application! Your gateway to decentralized solutions.');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});