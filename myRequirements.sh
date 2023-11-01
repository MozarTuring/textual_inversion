set -e

env_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source /home/maojingwei/project/common_tools_for_centos/myhead.sh condaenv $env_dir environment.yaml

if [ "$1" != "run" ]; then
    echo "start installing requirements"
    python -m pip install ipdb
fi
