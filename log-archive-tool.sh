echo "Log Archive Tool Activated"

# Directory of logs to be archived
LOG_DIRECTORY=$1

# Directory where the compressed logs will be stored
LOG_STORAGE_DIRECTORY=$2

# Check if the directories exist
if [ ! -d "$LOG_DIRECTORY" ]; then
  echo "Log directory does not exist."
  exit 1
fi

# Compress and store logs
cd $LOG_STORAGE_DIRECTORY
echo "Compressing and Storing Logs in $LOG_STORAGE_DIRECTORY"
tar -czvf logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz $LOG_DIRECTORY
