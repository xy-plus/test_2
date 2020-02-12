rm -rf docs
gitbook build

cd _book
git init
git remote add origin https://github.com/xy-plus/test_2.git
git add .
git commit -m "update"
git push origin master -f
cd ..

git submodule update --remote -f
git add .
git rm --cached _book
git commit -m "update"
git push
