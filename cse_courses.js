var fs = require('fs');
var mysql = require('mysql');

var con = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'CScourses',
    password: 'stonybrook',
    database: 'cs_courses'
});

const express = require('express');
const app = express();
const url = require('url');

app.use("/img", express.static('/Users/Crispen Chisina/Documents/School Docs/Fall 2020/CSE 316/Homeworks/HW Solutions/Assignment 4/sbulogo.png'));

 app.get("/", (req, res) =>{
    writeSearch(req, res);
});

app.get("/addcourse", (req, res) =>{
    checkDup(req, res);
});
 
 app.get("/schedule", (req, res) =>{
     writeSchedule(req, res);
 });

 port = process.env.PORT || 3000;
 app.listen(port, () => {
     console.log('Server Started!');
 });

 function writeSearch(req, res){

    res.writeHead(200, { "Content-Type": "text/html"});
    let query = url.parse(req.url, true).query;

    let search = query.search ? query.search : "";
    let filter = query.filter ? query.filter : "";

    let html = `
    <!DOCTYPE html>
    <html lang = "en">

    <head>
        <title> Spring 2021 CSE CLASS Find </title>
        <style>

        input {
            width: 200px;
        }  
        #course-table {
            width: 70%;
            border-collapse: collapse;
        }
        tr:nth-child(2n+1) {
            background-color: ghostwhite
        }   
        tr:nth-child(2n) {
            background-color: lightgray;
        }
        #Cnums {
            text-align: center;
        }

        #addbtn {
            align: center;
            font-weight: bold;
            font-size: 12pt;
            background-color: cornflowerblue;
        }
        </style>
    </head>
    <body>
        <img src="/img"/>
        <form method="get" action ="/">
            <b>Search Course</b>
            <input type="text" name="search" value="">
            <b>in</b>
            <select name="filter">
                <option value="allFields">All Fields</option>
                <option value="courseName">Course Name</option>
                <option value="courseNum">Course Num</option>
                <option value="instructor">Instructor</option>
                <option value="day">Day</option>
                <option value="time">Time</option>
            </select>
            <input type="submit" value="Submit">
            <br>
            Example searches: 316, fodor, time(start or end)->5:30 PM or 6:23 PM, MW, Introduction to Computers
        </form>
        <br>
        <table id='course-table'>
            <colgroup>
                <col width='5%'>
                <col width='15%'>
                <col width='60%'>
                <col width='10%'>
            </colgroup>
        `;

        let sql = "SELECT * FROM cs_courses;";

        if(filter == "allFields")
            sql = `SELECT * FROM cs_courses
                WHERE Subject LIKE '%` + search + `%' OR
                    CourseNum      LIKE '%` + search + `%' OR
                    CourseName   LIKE '%` + search + `%' OR
                    Component   LIKE '%` + search + `%' OR
                    Section     LIKE '%` + search + `%' OR
                    Days        LIKE '%` + search + `%' OR
                    StartTime   LIKE '%` + search + `%' OR
                    EndTime     LIKE '%` + search + `%' OR
                    Duration    LIKE '%` + search + `%' OR
                    InstructionMode LIKE '%` + search + `%' OR
                    Building    LIKE '%` + search + `%' OR
                    Room        LIKE '%` + search + `%' OR
                    Instructor  LIKE '%` + search + `%' OR
                    EnrollCap   LIKE '%` + search + `%' OR
                    WaitCap     LIKE '%` + search + `%' OR
                    CombDesc    LIKE '%` + search + `%' OR
                    CombEnrollCap   LIKE '%` + search + `%';`;


        else if (filter == "courseName")
            sql = `SELECT * FROM cs_courses
               WHERE  CourseName      LIKE '%` + search + `%';`;
        
        else if (filter == "courseNum")
            sql = `SELECT * FROM cs_courses
                WHERE  CourseNum      LIKE '%` + search + `%';`;
        
        else if (filter == "instructor")
            sql = `SELECT * FROM cs_courses
                WHERE  Instructor      LIKE '%` + search + `%';`;

        else if (filter == "day")
            sql = `SELECT * FROM cs_courses
                 WHERE  Days      LIKE '%` + search + `%';`;
        
        else if (filter == "time")
            sql = `SELECT * FROM cs_courses
                WHERE  StartTime      LIKE '%` + search + `%' OR
                    EndTime             LIKE '%` + search + `%';`;
        
        con.query(sql, function(err, result){
            if (err) throw err;
            var countC = 0;
            for(let item of result){
                countC += 1;
                html += `
            <tr>
                    <td>
                            <b>` + countC + `</b><br><br><br>
                    </td>
                    <td>
                            <b>` + item.Subject + '' + item.CourseNum + '.' + item.Section + `</b><br>Same<br>Courses
                    </td>
                    <td>
                            <b>` + item.CourseName + `</b><br> by  ` + item.Instructor + `<br>` + item.Component + ': '  + item.Days + ' ' + item.StartTime + '-' + item.EndTime + `<br>
                    </td>
                    <td>
                        <button id='addbtn' name="add" onclick="location.href= '/addcourse?id=`+ item.Id +`'" value="` + item.Id + `"> Add Class </button>
                    </td>
            </tr>`            
            }
            res.write(html + "\n\n</table></body>\n</html>");
            res.end();
        });
 };

 function checkDup(req, res){
    let query =  url.parse(req.url, true).query;
    let id = query.id ? query.id : "";
    let checkdb = `SELECT * FROM saved WHERE savedId=`+ id;
    con.query(checkdb, function(err, result) {
        if(err) throw err;
        if(result.length > 0) {
            let html = `
                <!DOCTYPE html>
                <html>
                <head>
                </head>
                <body onload="Alerts()">
                </body>
                <script>
                    function Alerts() {
                        alert("Already added Course");
                        location.href='/';
                    }
                </script>
                </html>`
            res.write(html);
            res.end();
        }else { 
            addQuery(req,res,id)
            let html = `
                <!DOCTYPE html>
                <html>
                <head>
                </head>
                <body onload="addCourse()">
                </body>
                <script>
                    function addCourse() {
                        location.href='/schedule';
                    }
                </script>
                </html>`
            res.write(html);
            res.end();
        };
    });
 }
 function addQuery(req, res, id){
    let addData = `INSERT INTO saved (savedId, Subject, CourseNum, CourseName, Section, Days, StartTime) SELECT Id, Subject, CourseNum, CourseName, Section, Days, StartTime FROM cs_courses WHERE Id= ` + id + ';';
    con.query(addData, function(err, result) {
        if(err) throw err;
    });
 }
 
 function writeSchedule(req, res){
    let html = `
<!DOCTYPE html>
<html>
<head>
    <title> Current Schedule </title>
    <style>
        #schedule {
            table-layout: fixed;
            border-left: 2px solid gray;
            border-right: 2px solid gray;
            border-top: 2px solid gray;
            border-bottom: 2px solid gray;
            border-collapse: collapse;
            height: 100%;
            width: 100%;
            background-color: brown;
        }

        #schedule th {
            text-align: center;
            border-left: 2px solid gray;
            color: white;
        }

        #schedule td{
            vertical-align: top;
            background-color: white;
            border-left: 2px solid gray;
        }

        #schedule div{
            border-left :5px solid #80aaff;
            border-bottom: 2px solid white;
            padding-bottom: 0px;
            background-color: #ccddff;
        }
        
        #schedule td:nth-child(1), td:nth-child(7) {
            color:#737373;
            background-color:#e6e6e6;
        }

    </style>
</head>
<body>
    <h1> Current Schedule </h1><br>
    &ensp; <a href="/"><b>Return to Search</b></a><br>
    <br>
    <table id="schedule">
        <tr>
            <th>SUN</th>
            <th>MON</th>
            <th>TUE</th>
            <th>WED</th>
            <th>THU</th>
            <th>FRI</th>
            <th>SAT</th>
        </tr>
`;

 let addQuery = `SELECT * FROM saved ORDER BY STR_TO_DATE(StartTime, '%l:%i %p') ASC;`;
 con.query(addQuery, function(err, result){ 
    if(err) throw err;
    var Mon = [], Tue = [], Wed = [], Thur = [], Fri = [];
    for (let item of result) {
        if(item.Days.includes('M'))
            Mon.push(item);
        if(item.Days.includes('TU'))
            Tue.push(item);
        if(item.Days.includes('W'))
            Wed.push(item);
        if(item.Days.includes('TH'))
            Thur.push(item);
        if(item.Days.includes('F'))
            Fri.push(item);
    };
    var maxsize = Math.max(Mon.length, Tue.length, Wed.length, Thur.length, Fri.length)
    for(var k = 0; k < maxsize; k++) {
        html += `<tr><td></td>`;
        if(Mon[k] != null && Mon.length > k)
            html += `<td><div>` + Mon[k].StartTime + ' ' + Mon[k].Subject + '-' + Mon[k].CourseNum + '-' + Mon[k].Section + `<br />` + Mon[k].CourseName + `</div></td>`;
        else
            html += `<td></td>`;
        if(Tue[k] != null && Tue.length > k )
            html += `<td><div>` + Tue[k].StartTime + ' ' + Tue[k].Subject + '-' + Tue[k].CourseNum + '-' + Tue[k].Section + `<br />` + Tue[k].CourseName + `</div></td>`;
        else
            html += `<td></td>`;
        if(Wed[k] != null && Wed.length > k )
            html += `<td><div>` + Wed[k].StartTime + ' ' + Wed[k].Subject + '-' + Wed[k].CourseNum + '-' + Wed[k].Section + `<br />` + Wed[k].CourseName + `</div></td>`;
        else
            html += `<td></td>`;
        if(Thur[k] != null && Thur.length > k )
            html += `<td><div>` + Thur[k].StartTime + ' ' + Thur[k].Subject + '-' + Thur[k].CourseNum + '-' + Thur[k].Section + `<br />` + Thur[k].CourseName + `</div></td>`;
        else
            html += `<td></td>`;
        if(Fri[k] != null && Fri.length > k )
            html += `<td><div>` + Fri[k].StartTime + ' ' + Fri[k].Subject + '-' + Fri[k].CourseNum + '-' + Fri[k].Section + `<br />` + Fri[k].CourseName + `</div></td>`;
        else
            html += `<td></td>`;
        html += `<td></td></tr>`;
    };
    res.write(html + "\n\n</table></body>\n</html\>");
    res.end();
 });
}
