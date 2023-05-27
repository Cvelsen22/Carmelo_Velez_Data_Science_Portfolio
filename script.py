from blossom_lib import flower_definitions
from hashmap import HashMap

blossom = HashMap(len(flower_definitions))

for flower in flower_definitions:
    blossom.assign(flower[0], flower[1])

print(blossom.retrieve("daisy"))    