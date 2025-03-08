echo "Log Archive Tool Activated"

# Directory of logs to be archived
LOG_DIRECTORY=$1

# Check if LOG_DIRECTORY exists and exit if it doesn't
if [ ! -d "$LOG_DIRECTORY" ]; then
  echo "Log directory does not exist."
  exit 1
fi

# Directory where the compressed logs will be stored
LOG_STORAGE_DIRECTORY=$2

# Check if LOG_STORAGE_DIRECTORY exists and create it if it doesn't
if [ ! -d "$LOG_STORAGE_DIRECTORY" ]; then
  echo "Log storage directory does not exist. Creating it now."
  mkdir -p $LOG_STORAGE_DIRECTORY
fi

# Check if the directories exist
if [ ! -d "$LOG_DIRECTORY" ]; then
  echo "Log directory does not exist."
  exit 1
fi

# Compress and store logs
cd $LOG_STORAGE_DIRECTORY
echo "Compressing and Storing Logs in $LOG_STORAGE_DIRECTORY"
tar -czvf logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz $LOG_DIRECTORY

# Copy all files in lOG_STORAGE_DIRECTORY ending in .tar.gz to gcs bucket
gsutil cp $LOG_STORAGE_DIRECTORY/*.tar.gz gs://gcs-bucket-name/logs/



