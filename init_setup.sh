echo [$(date)]: "START"
export _VERSION_=3.10
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "export conda environment"
conda env export > conda.yaml
#echo [$(date)]: "initialize git repository"
#git init
#echo [$(date)]: "Curl .gitignore for python"
#curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore > .gitignore
#echo [$(date)]: "add env to gitignore"
#echo "env/" >> .gitignore
echo "# ${PWD}" > README.md
echo [$(date)]: "first commit"
git add .
git commit -m "first commit"

echo [$(date)]: "END"


# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/