set -e

echo "Downloading the GTDB-Tk database to ${GTDBTK_DATA_PATH}..."

db_url=https://data.gtdb.ecogenomic.org/releases/release207/207.0/auxillary_files/gtdbtk_r207_v2_data.tar.gz

wget $db_url -O ${GTDBTK_DATA_PATH}/gtdbtk_r207_v2_data.tar.gz
tar xvzf ${GTDBTK_DATA_PATH}/gtdbtk_r207_v2_data.tar.gz -C ${GTDBTK_DATA_PATH} --strip 1
rm ${GTDBTK_DATA_PATH}/gtdbtk_r207_v2_data.tar.gz

echo "GTDB-Tk database has been successfully downloaded."

exit 0
