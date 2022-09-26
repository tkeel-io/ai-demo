FROM ai
COPY yolov5 /root/ai/yolov5
ENV MQTT_HOST 172.31.73.182
ENV MQTT_PORT 1883
ENV TOPIC v1/devices/me/telemetry
ENV VIDEO_PATH inference/test.mp4
WORKDIR /root/ai/yolov5
ENTRYPOINT ["/bin/bash", "-c", " python3 detect.py --mqtt-host $MQTT_HOST --cycle true --mqtt-port $MQTT_PORT --topic $TOPIC --source $VIDEO_PATH"]
