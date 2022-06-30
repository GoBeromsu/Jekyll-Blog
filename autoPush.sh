cd D:\MyBlog

git add *
echo "Pleas Type Commit Message!!"
read commitMsg

git commit -m "$commitMsg"
git push

hexo deploy -g