<!DOCTYPE html>
<html>
<head>
 <title>Bootstrap Example</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://bootswatch.com/slate/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script src="https://bootswatch.com/slate/bootstrap.css"></script>
</head>

<body>

    <h1>Customers</h1>
    <div id="id01"></div>

    <script>
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost:8080/telecom/userService/users";

        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                myFunction(xmlhttp.responseText);
            }
        }
        xmlhttp.open("GET", url, true);
        xmlhttp.send();

        function myFunction(response) {
            var arr = JSON.parse(response);
            var i;
            var out = "<table><tr><th>Firstname</th><th>Lastname</th><th>Points</th></tr>";



            for(i = 0; i < arr.length; i++) {
                out += "<tr><td>" + 
                arr[i].basicPhone +
                "</td><td>" +
                arr[i].city +
                "</td><td>" +
                arr[i].contactPhone +
                "</td></tr>";
            }
            out += "</table>"
            document.getElementById("id01").innerHTML = out;
        }
    </script>

</body>
</html>