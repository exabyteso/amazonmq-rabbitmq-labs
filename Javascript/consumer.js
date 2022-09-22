#!/usr/bin/env node

var amqp = require('amqplib/callback_api');

amqp.connect('amqps://workShopUser:workShopUser@b-1eafccb7-79fe-47b2-8864-e02b743a6433.mq.eu-central-1.amazonaws.com', function(error0, connection) {
    if (error0) {
        throw error0;
    }
    connection.createChannel(function(error1, channel) {
        if (error1) {
            throw error1;
        }

        var queue = 'enter-your-@handlehere';

        channel.assertQueue(queue, {
            durable: false
        });

        console.log(" [*] Waiting for messages in %s. To exit press CTRL+C", queue);

        channel.consume(queue, function(msg) {
            console.log(" [x] Received %s", msg.content.toString());
        }, {
            noAck: true
        });
    });
});