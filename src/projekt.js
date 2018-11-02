module.exports = {
    showKommuner: showKommuner
};

const mysql  = require("promise-mysql");
const config = require("../config/projekt.json");
let db;

(async function() {
    db = await mysql.createConnection(config);

    process.on("exit", () => {
        db.end();
    });
})();

async function showKommuner() {
    let sql = `
    SELECT * FROM kommuner;
    `;

    let res;

    res = await db.query(sql);
    return res;
}
