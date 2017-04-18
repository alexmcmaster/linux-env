#!/usr/bin/env python3

import sys

def parse_res(symbols, results):
    symbols = [s.strip() for s in symbols.split(',')]
    results = [s.strip() for s in results.split()]
    if len(symbols) != len(results):
        print(symbols)
        print(results)
        return "{} symbols provided but only {} results received"\
                .format(len(symbols), len(results))
    return "\n".join(\
            ["{}:\t{}".format(symbols[i], results[i])\
                    for i in range(len(symbols))])

if __name__ == '__main__':
    print(parse_res(sys.argv[1], ' '.join(sys.argv[2:])))
