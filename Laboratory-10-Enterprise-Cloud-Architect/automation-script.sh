

#!/usr/bin/env bash
set -euo pipefail

cd /opt/ccm-cloud-site
source .env

if [[ -z "${MARIADB_ROOT_PASSWORD:-}" ]]; then
    echo "ERROR: MARIADB_ROOT_PASSWORD is missing from .env"
    exit 1
fi

BACKUP_DIR="/opt/ccm-cloud-site/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/wordpress_$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

echo "Creating MariaDB database backup..."

docker compose exec -T \
    -e MYSQL_PWD="$MARIADB_ROOT_PASSWORD" \
    db mariadb-dump --single-transaction -uroot wordpress \
    > "$BACKUP_FILE"

if [[ ! -s "$BACKUP_FILE" ]]; then
    echo "ERROR: Backup file is empty."
    rm -f "$BACKUP_FILE"
    exit 1
fi

find "$BACKUP_DIR" -type f -name '*.sql' -mtime +7 -delete

echo "Backup successful: $BACKUP_FILE"
ls -lh "$BACKUP_FILE"
