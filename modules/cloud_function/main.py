import urllib3

def main():
    # The API endpoint
    url = "https://jsonplaceholder.typicode.com/posts/4"
    http = urllib3.PoolManager()

    # A GET request to the API
    response = http.request('GET', url)

    # Print the response
    print(response.data.decode('utf-8'))

main()