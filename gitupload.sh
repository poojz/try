
#echo "enter the path of the folder"
read a
#DIR=$(dirname "${a}")

echo "enter the url of your repository"
#cd $DIR
#alias gitupload="cd $a"
read $url
git init
git add .
git commit -m "this is the first commit"
git remote add origin $url
git push -u origin master

