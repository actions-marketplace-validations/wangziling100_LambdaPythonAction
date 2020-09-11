old_dir=`pwd`
cd $(dirname $0)
if [[ "$BUILD_ENV" == 'ci' ]]; then
    ./frep ../template.yaml.template:../template.yaml --load ../config.yaml --overwrite
    ./frep ../samconfig.toml.template:../samconfig.toml --load ../config.yaml --overwrite
    ./frep ../env.json.template:../env.json --load ../config.yaml --overwrite
    ./frep ../autoCI.config.json.template:../.github/autoCI.config.json --load ../config.yaml --overwrite
else
    frep ../template.yaml.template:../template.yaml --load ../config.yaml --overwrite
    frep ../samconfig.toml.template:../samconfig.toml --load ../config.yaml --overwrite
    frep ../env.json.template:../env.json --load ../config.yaml --overwrite
    frep ../autoCI.config.json.template:../.github/autoCI.config.json --load ../config.yaml --overwrite
fi

cd $old_dir