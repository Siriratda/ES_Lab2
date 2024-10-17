db = new Mongo().getDB("mydatabase");

db.students.insertMany([
    { studentCode: "d003", firstName: "Siriratda", lastName: "Wangsatang", age: 21, email: "Fareeda@gmail.com" },
    { studentCode: "d004", firstName: "Teerapop", lastName: "Pechnin", age: 22, email: "teepop@gmail.com" },
    { studentCode: "d005", firstName: "da", lastName: "wang", age: 23, email: "da@gmail.com" }
]);
