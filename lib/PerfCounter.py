from time import perf_counter_ns
from functools import partialmethod


class Counter:
    ns: int

    def __init__(self, ns: int = 0, count: int = 0):
        self.ns = ns
        self.count = count

    @property
    def seconds(self):
        return self.ns / 10 ** 9

    @property
    def speed(self):
        return self.count * 10 ** 9 / self.ns

    def float2str(self, attr: str):
        value = getattr(self, attr)
        return f"{value:.3f}"


    speed_str = partialmethod(float2str, "speed")

    def __str__(self):
        return f"{self.ns / 10 ** 9:.3f}"


class Perf:
    def __init__(self):
        self._start = perf_counter_ns()
        self._middle = perf_counter_ns()
        self.total_count = 0
        self.max_speed = None
        self.min_speed = None


    def float2str(self, attr: str):
        value = getattr(self, attr)
        if value:
            return f"{value:.3f}"
        else:
            return "---"

    max_speed_str = partialmethod(float2str, "max_speed")

    min_speed_str = partialmethod(float2str, "min_speed")


    def start(self):
        self._start = perf_counter_ns()

    def delta(self, total=False, count=0):
        self.total_count += count
        if total:
            delta = Counter(perf_counter_ns() - self._start, self.total_count)
        else:
            delta = Counter(perf_counter_ns() - self._middle, count)

            if self.max_speed is None:
                self.max_speed = delta.speed
            else:
                if self.max_speed < delta.speed:
                    self.max_speed = delta.speed
            if self.min_speed is None:
                self.min_speed = delta.speed
            else:
                if self.min_speed > delta.speed:
                    self.min_speed = delta.speed

            self._middle = perf_counter_ns()
        return delta
