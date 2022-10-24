from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.pool import NullPool

db_user = 'root'
db_password = ''
db_host = 'localhost:3306'
db_name = 'test'

DATABASE_URL = 'mysql+pymysql://{}:{}@{}/{}'.format(db_user, db_password, db_host, db_name, poolclass=NullPool)

db_engine = create_engine(DATABASE_URL, pool_size=30, max_overflow=15, pool_pre_ping=True, pool_recycle=60 * 60)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=db_engine)

Base = declarative_base()
