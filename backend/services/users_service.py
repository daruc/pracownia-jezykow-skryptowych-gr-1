import string
import secrets
from typing import List

from ..decorators import singleton
from ..config import Config


@singleton
class UsersService:
    """
    Singleton users service
    """

    def __init__(self) -> None:
        self.config = Config.get_instance()

    def verify_user_password(user, password) -> str:
        cfg = self.config
        return "true"