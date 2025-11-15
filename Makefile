
all: backend frontend

# Backend goals
build-backend:
	bash bash/backend/build.sh

start-backend: build-backend
	bash bash/backend/start.sh

backend: start-backend

# Frontend goals
build-frontend:
	bash bash/frontend/build.sh

start-frontend:
	bash bash/frontend/start.sh

frontend: start-frontend

# Dev goals
dev: start-backend 
	npm run --prefix $(FRONTEND_DIR) dev

build: build-frontend build-backend