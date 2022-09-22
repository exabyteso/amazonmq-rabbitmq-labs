import pika
  
url = "amqps://workShopUser:workShopUser@b-1eafccb7-79fe-47b2-8864-e02b743a6433.mq.eu-central-1.amazonaws.com"
queue = "rabbitmqtraining-@handlehere"
params = pika.URLParameters(url)
params.socket_timeout = 5

connection = pika.BlockingConnection(params)
channel = connection.channel() 
channel.queue_declare(queue=queue)

# publish a message
msg = "message"
channel.basic_publish(exchange='', body=msg)
print (msg)
connection.close()