from typing import List, Tuple, Dict, Optional


def inp()  -> int:            return int(input())
def inpl() -> List[int]:      return list(map(int, input().split()))
def inpt() -> Tuple[int,...]: return tuple(map(int, input().split()))
def inps() -> str:            return input().strip()







def solve():
    # ── read input ──────────────────────────
    n = inp()
    a = inpl()
 
 
 
    # ── output ───────────────────────────────
    print(...)
 
 


def main():
    t = inp()          # remove this line if there is no multi-test
    for _ in range(t):
        solve()
