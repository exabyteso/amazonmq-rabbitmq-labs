1. Browse to cd `~/environment/amazon-mq-rabbitmq-labs/Python`.

2. Execute `python3 -m venv pythonpikaexample` to create a virtual environment for the stomp dependency.

3. Activate the virtual environment by executing `source pythonpikaexample/bin/activate`.

4. Install the dependencies by executing `pip install -r requirements.txt`.

5. Browse to the producer.py and consumer.py files in Cloud9 console on the left. Open both files and make the below changes: 

6. Append your @handle as the queue in line 4 of the producer.py and line 9 of the consumer.py file e.g.@myhandle.

7. Execute the producer.py in one terminal i.e. `python producer.py`.

7. Execute the consumer.py in another terminal i.e. `python consumer.py`. Ensure that the virtual environment is activated in this terminal too i.e. `source pythonpikaexample/bin/activate`.
