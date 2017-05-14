def app(environ, start_response):
    data = environ['QUERY_STRING']
<<<<<<< HEAD
    d = [bytes('\n'.join(str(data).split("&")), 'ascii')]
=======
    d = [bytes('\n'.join(str(data).split("&")),'ascii')]
>>>>>>> e98cc4fa2d862408b1544b5d8f12bc164c81f9de

    status = '200 OK'
    response_header = [
        ('Content-Type', 'text/plain'),
        ('Content-Lenght', str(len(data)))
    ]

    start_response(status, response_header)
    return d

