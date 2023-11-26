from typing import List, Optional

from sqlalchemy.orm import Session

from .schemas import User
from .models import User


def get_user(db: Session, user_id: int) -> Optional[User]:
    return db.query(User).filter_by(id=user_id).first()


def get_user_by_login(db: Session, login: str) -> Optional[User]:
    return db.query(User).filter_by(login=login).first()


def get_users(db: Session, skip: int = 0, limit: int = 100) -> List[User]:
    return db.query(User).offset(skip).limit(limit).all()


def create_user(db: Session, user: User) -> User:
    user = User(
        login=user.login,
        name=user.name,
        email=user.email,
        picture=user.picture,
    )
    db.add(user)
    db.commit()
    db.refresh(user)

    return user