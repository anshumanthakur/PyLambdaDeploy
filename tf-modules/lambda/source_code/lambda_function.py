# Import the functions from another Python file
from helper_functions import add_numbers, multiply_numbers

def lambda_handler(event, context):
    # Example usage of imported functions
    num1 = 5
    num2 = 3
    sum_result = add_numbers(num1, num2)
    product_result = multiply_numbers(num1, num2)

    return {
        'statusCode': 200,
        'body': f'Sum: {sum_result}, Product: {product_result}'
    }
