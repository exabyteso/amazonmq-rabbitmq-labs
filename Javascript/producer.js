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
        var msg = 'Hello World!';

        channel.assertQueue(queue, {
            durable: false
        });
        
        let i = 1;
        while(True){
            channel.sendToQueue(queue, Buffer.from(`${msg} ${i}`));
            console.log(" [x] Sent %s", msg);
            i = i + 1;
        }
        
    });
    setTimeout(function() {
        connection.close();
        process.exit(0);
    }, 500);
});