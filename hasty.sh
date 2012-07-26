#!/bin/sh
#     H    A    S    T    Y
#    set your project quicker
 
clear

echo "\033[1mStarting hasty\033[0m"

default=${1-project}

# creating all the project's folders
mkdir $default
cd $default

mkdir assets
mkdir assets/css
mkdir assets/css/libs
mkdir assets/images
mkdir assets/js
mkdir assets/js/libs

#Filling up all these folders with some good stuff

#Starting by the html
touch index.html
content="<!DOCTYPE html>
<html lang=\"en\">
<head>
	<meta charset=\"utf-8\">
	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
	<title></title>
	<meta name=\"description\" content=\"Tell me more.\">
	<meta name=\"author\" content=\"It's you mate.\">

	<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">

	<link rel=\"stylesheet\" href=\"assets/css/style.css\">

	<script src=\"js/script.js\"></script>
</head>
<body>
	<div class=\"container\">
		<h1>Let's work!</h1>
	</div>
</body>
</html>"

echo "$content" > index.html

#CSS
touch assets/css/style.css
touch assets/css/hasty.css
touch assets/css/main.css

style="/* Style your project */
@import 'hasty.css';
@import 'main.css';"
echo "$style" > assets/css/style.css

hasty="/* It's the engine */
* {margin:0; padding:0;}
body {width:100%; font-family:helvetica neue, helvetica, arial; font-size:12px;}
.container {width:960px; margin:0 auto;}"
echo "$hasty" > assets/css/hasty.css

main="/* Styling the index page. This sheet is yours, feel free to fill-in the content */
body {background:#f1f2f2; color:#2d2c2c;}
.container {padding:20px; text-align:center; background:white; margin-top:20px;}
.container h1 {font-size:46px;}"
echo "$main" > assets/css/main.css

#JS
touch assets/js/script.js
script="//Write down your stuff here"
echo "$script" > assets/js/script.js

echo "done"