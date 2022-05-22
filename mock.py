from random import choices, randint
from datetime import datetime, timedelta

def mock(start, end):
    # base values
    temperature = 20 # slightly cold
    humidity = 30    # 30% ~ regular
    rainpower = 4095 # no rain
    is_raining = rain_stopped = False

    # increments
    t_inc = h_inc = r_inc = 0

    # weights
    def tw():
        if temperature > 32: return [20, 60, 20, 0, 0]
        elif temperature < 10: return [0, 0, 20, 60, 20]
        elif is_raining: return [20, 50, 20, 10, 0]
        elif rain_stopped: return [5, 5, 60, 25, 5]
        else: return [5, 25, 40, 25, 5]

    def hw():
        if humidity > 40: return [20, 60, 20, 0, 0]
        elif humidity < 20: return [0, 0, 20, 60, 20]
        elif is_raining: [0, 0, 50, 40, 10]
        elif rain_stopped: [20, 40, 30, 10, 0]
        elif t_inc > 1: return [10, 10, 30, 30, 20]
        elif t_inc <= 0: return [20, 20, 40, 15, 5]
        else: return [5, 25, 40, 25, 5]

    def rw():
        if humidity > 35: return [70, 30]
        elif humidity < 20: return [100, 0]
        else: return [80, 20]

    # every five minutes a new entry is generated
    while start <= end:
        t_inc = choices([-2, -1, 0, 1, 2], tw())[0]
        h_inc = choices([-2, -1, 0, 1, 2], hw())[0]
        
        temperature += t_inc
        humidity += h_inc
        is_raining = bool(choices([0, 1], rw()))

        if is_raining:
            rain_stopped = bool(choices[0, 1], rw())

        print(f"[{start}] T: {temperature} ºC | H: {humidity} | R: {rainpower} ")

        start += timedelta(seconds=(5 * 60))

# mock(datetime(2022, 5, 22, 20, 00), datetime(2022, 5, 22, 21, 00))
# print(choices([1, 2, 3, 4], weights=[5, 60, 5, 5]))
mock(datetime(2022, 5, 22, 20, 00), datetime(2022, 5, 22, 21, 00))