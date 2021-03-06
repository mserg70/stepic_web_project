def app(environ, start_response):
    data = environ['QUERY_STRING']
    d = [bytes('\n'.join(str(data).split("&")), 'ascii')]

    status = '200 OK'
    response_header = [
        ('Content-Type', 'text/plain'),
        ('Content-Lenght', str(len(data)))
    ]

    start_response(status, response_header)
    return d

