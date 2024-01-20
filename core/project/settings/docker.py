if IN_DOCKER or os.path.isfile('/.dockerenv'):  # type: ignore # noqa: F821
    print("Running in docker mode")
    assert MIDDLEWARE[:1] == [  # type: ignore # noqa: F821
        'django.middleware.security.SecurityMiddleware'
    ]