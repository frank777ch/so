import threading
import queue
import time
import random

# Definimos el tamaño máximo del buffer
BUFFER_SIZE = 10

# Creamos una instancia de Queue con tamaño limitado
buffer = queue.Queue(maxsize=BUFFER_SIZE)

def producer(producer_id):
    while True:
        # Producimos un dato (por ejemplo, un número aleatorio)
        item = random.randint(1, 100)
        # Intentamos poner el item en el buffer (se bloqueará si el buffer está lleno)
        buffer.put(item)
        print(f"Productor {producer_id} produjo el item {item}")
        # Simulamos tiempo de producción
        time.sleep(random.uniform(0.1, 1))

def consumer(consumer_id):
    while True:
        # Intentamos obtener un item del buffer (se bloqueará si el buffer está vacío)
        item = buffer.get()
        print(f"Consumidor {consumer_id} consumió el item {item}")
        # Señalamos que hemos terminado de procesar el item
        buffer.task_done()
        # Simulamos tiempo de consumo
        time.sleep(random.uniform(0.1, 1))

# Creamos listas para almacenar los hilos de productores y consumidores
producers = []
consumers = []

# Número de productores y consumidores
NUM_PRODUCERS = 2
NUM_CONSUMERS = 2

# Creamos y lanzamos los hilos productores
for i in range(NUM_PRODUCERS):
    t = threading.Thread(target=producer, args=(i,))
    t.daemon = True  # Permite que el hilo se cierre cuando termine el programa principal
    t.start()
    producers.append(t)

# Creamos y lanzamos los hilos consumidores
for i in range(NUM_CONSUMERS):
    t = threading.Thread(target=consumer, args=(i,))
    t.daemon = True # Permite que el hilo se cierre cuando termine el programa principal
    t.start()
    consumers.append(t)

# Ejecutamos el programa durante un tiempo determinado
try:
    while True:
        time.sleep(0.1)
except KeyboardInterrupt:
    print("Terminando la ejecución del programa.")