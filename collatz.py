import sys

def Collatz_Sequence(n):
    """
    Computes the Collatz sequence starting from n until it reaches the 4-2-1 loop.

    Parameters:
        n (int): The starting positive integer.

    Returns:
        iterations (int): Number of iterations to reach the 4-2-1 loop.
        sequence (list): The sequence of numbers generated.
    """
    iterations = 0
    sequence = [n]

    while n != 1:
        if n % 2 == 0:
            n = n // 2
        else:
            n = 3 * n + 1
        
        sequence.append(n)
        iterations += 1

        if sequence[-3:] == [4, 2, 1]:  # Break the loop when reaching the 4-2-1 loop
            break

    return iterations, sequence

if __name__ == "__main__":

    if len(sys.argv) != 2:
        print("Usage: python collatz.py <positive_integer>")
        sys.exit(1)

    try:
        n = int(sys.argv[1])
        iterations, sequence = Collatz_Sequence(n)
        print(f"Iterations: {iterations}")
        '''print(f"Sequence: {sequence}")'''
    except IndexError:
        print("Please provide a positive integer as input.")
    except ValueError:
        print("Invalid input. Please enter a positive integer.")