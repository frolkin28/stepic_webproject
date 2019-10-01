def wsgi_app(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    query = environ['QUERY_STRING'].split('&')
    body = bytes('\r\n'.join(query), encoding='utf-8')
    start_response(status, headers)
    return iter([body])
