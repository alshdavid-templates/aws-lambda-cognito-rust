set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/../.."

cd $ROOT_DIR/.terraform

terraform init

terraform apply \
  -var global_bucket="${GLOBAL_BUCKET}" \
  -var global_prefix="${GLOBAL_PREFIX}" \
  -auto-approve
