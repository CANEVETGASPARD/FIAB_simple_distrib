Lancez le projet en suivant les instructions de make run

Une fois vos 2 terminales ouverts, vous devriez pouvoir executer les instructions suivantes, en changeant bien sur votre host


iex(toto@Louiss-MacBook-Pro)1> GenServer.call({GenAdder, :"toto@Louiss-MacBook-Pro"}, {:add, 1, 3})
4
iex(toto@Louiss-MacBook-Pro)2> GenServer.call({GenAdder, :"titi@Louiss-MacBook-Pro"}, {:add, 1, 3})
4


Amusez-vous un peu avec le projet :)