import string
import secrets
from typing import List

from ..decorators import singleton
from ..config import Config


@singleton
class ExpensesService:
    """
    Singleton expenses service
    """

    def __init__(self) -> None:
        self.config = Config.get_instance()

    def generate_password(
    ) -> str:
        cfg = self.config
        return ["expanse1", "expanse2"]