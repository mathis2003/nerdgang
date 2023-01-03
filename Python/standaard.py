# bestand openen
with open(loc, 'r') as invoer:
    for regel in invoer:
        print(regel)
        
# reguliere expressies
import re
s = re.sub("te vervangen string", "vervanger", "source text")
# merk op dat re.match wel in een if statement kan gebruikt worden, maar geen boolese waarde geeft.
# Je kan dus niet "return re.match(...)" schrijven
if re.match("[A-Z]+", self.ch):
    return True
else:
    return False

#slicing
my_string[start:stop]
my_string[start:stop:step]


def filter_unique(arr):
    """
    :param arr: de array die gefilterd moet worden zodat het enkel nog maar unieke elementen bevat
    :return: de array met de unieke elementen
    >>> filter_unique(['a', 'b', 'a', 'c', 'a'])
    ['a', 'b', 'c']
    >>> filter_unique(['a', 'b', 'c'])
    ['a', 'b', 'c']
    >>> filter_unique("abc")
    ['a', 'b', 'c']
    >>> filter_unique([5, 0, 1, 5, 6, 0, 0])
    [5, 0, 1, 6]
    """
    result = []
    for elem in arr:
        if elem not in result:
            result.append(elem)
    return result

#veel simpelere en snellere versie van bovenstaande
def filter_unique(arr):
    return list(set(arr))

# python ingebouwde filter kan je ook gebruiken:
filter_obj = filter(lambda x: x % 2 == 0, [1, 2, 3, 4, 5, 5, 6, 7, 8])
# merk op dat filter_obj GEEN array is of wat dan ook, maar er kan wel over gelooped worden
for elem in filter_obj:
    print(elem)
# beter zou zijn om het met een comprehension te doen, tis is sneller en meer pythonic:
filtered_obj = (x % 2 == 0 for x in range(1, 8))
# bovenstaand geeft geen lijst terug maar een generator-object, om een lijst te krijgen gebruik je vierkante haakjes:
filtered_list = [x % 2 == 0 for x in range(1, 8)]
