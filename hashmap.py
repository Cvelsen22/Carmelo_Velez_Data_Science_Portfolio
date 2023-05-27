from linkedlist import LinkedList
from node import Node


class HashMap:

    def __init__(self, size) -> None:
        self.array_size = size
        self.array = [LinkedList() for number in range(size)]

    def hash(self, key):
        return sum(key.encode())

    def compress(self, hash_code):
        return hash_code % self.array_size

    def assign(self, key, value):
        array_index = self.compress(self.hash(key))
        payload = Node([key, value])
        list_at_array = self.array[array_index]

        for item in list_at_array:
            if key == item[0]:
                item[1] = value
                return
        list_at_array.insert(payload)    
    #   self.array[array_index] = [key, value]

    def retrieve(self, key):
        array_index = self.compress(self.hash(key))
        list_at_index = self.array[array_index]

        for item in list_at_index:
            if key == item[0]:
                return item[1]
        return None    