def solve_crossword(crossword, words):
    n = len(words)

    def can_fill_horizontal(row, col, word):
        if len(word) + col > 10:
            return False
        for i in range(len(word)):
            if crossword[row][col + i] != '-' and crossword[row][col + i] != word[i]:
                return False
        return True

    def can_fill_vertical(row, col, word):
        if len(word) + row > 10:
            return False
        for i in range(len(word)):
            if crossword[row + i][col] != '-' and crossword[row + i][col] != word[i]:
                return False
        return True

    def fill_horizontal(row, col, word):
        for i in range(len(word)):
            crossword[row][col + i] = word[i]

    def fill_vertical(row, col, word):
        for i in range(len(word)):
            crossword[row + i][col] = word[i]

    for i in range(10):
        for j in range(10):
            if crossword[i][j] == '+':
                for k in range(n):
                    if can_fill_horizontal(i, j, words[k]):
                        fill_horizontal(i, j, words[k])
                        n -= 1
                        break
                    elif can_fill_vertical(i, j, words[k]):
                        fill_vertical(i, j, words[k])
                        n -= 1
                        break
    return crossword

if __name__ == "__main__":
    crossword = [list(input().strip()) for _ in range(10)]
    n = int(input())
    words = [input().strip() for _ in range(n)]

    solved_crossword = solve_crossword(crossword, words)

    for row in solved_crossword:
        print("".join(row))