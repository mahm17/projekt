var mammoth = require("mammoth");
var fs = require("file-system");
var shell = require("shelljs");
const jsdom = require("jsdom");
const { JSDOM } = jsdom;

// mammoth.convertToHtml({path: "files/Borgholm_exempel.docx"})
// .then(function(result){
//     var html = result.value; // The generated HTML
//     fs.writeFile("output.html", html, (err) => {
//         if (err) throw err;
//     })
//     var messages = result.messages; // Any messages, such as warnings during conversion
// })
// .done();

fs.readdir("files", function(err, items) {
    for (var i=0; i<items.length; i++) {
        console.log(items[i]);
        var str = items[i].split(",").map(function (val) { return val; });
        // console.log(str);
        mammoth.convertToHtml({path: "files/" + str})
        .then(function(result){
            var html = result.value; // The generated HTML
            fs.writeFile("output.html", html, (err) => {
                if (err) throw err;
            })
            var messages = result.messages; // Any messages, such as warnings during conversion
        })
        .done();
    }

});
