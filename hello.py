def wsgi_app(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-type', 'plain/text')
    ]
    query = environ['QUERY_STRING'].split('&')
    body = bytes('\r\n'.join(query), encoding='utf-8')
    start_response(status, headers)
    return [body]
