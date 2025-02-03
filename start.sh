#!bin/sh
if [ ! -f "$AIRFLOW_HOME/airflow.db" ]; then
    echo "Initializing Airflow database..."
    airflow db migrate
fi

# Check if Airflow user exists, if not, create an admin user
if ! airflow users list | grep -q "admin"; then
    echo "Creating admin user..."
    airflow users create -e jisna12@gmail.com -f jisna -l patharakkal -p admin -r Admin -u admin
fi

# Start Airflow webserver and scheduler
echo "Starting Airflow services..."
airflow webserver --port 8080 &
airflow scheduler