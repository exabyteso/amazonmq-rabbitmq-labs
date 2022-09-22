#!/usr/bin/env python
import pika, sys, os

def main():
    url = "amqps://workShopUser:workShopUser@b-1eafccb7-79fe-47b2-8864-e02b743a6433.mq.eu-central-1.amazonaws.com"
    params = pika.URLParameters(url)
    connection = pika.BlockingConnection(params)
    channel = connection.channel()
    queue = "rabbitmqtraining-@handlehere"
    channel.queue_declare(queue=queue)

    def callback(ch, method, properties, body):
        print(" [x] Received %r" % body.decode())

    channel.basic_consume(queue=queue, on_message_callback=callback, auto_ack=True)

    print(' [*] Waiting for messages. To exit press CTRL+C')
    channel.start_consuming()

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Interrupted')
        try:
            sys.exit(0)
        except SystemExit:
            os._exit(0)