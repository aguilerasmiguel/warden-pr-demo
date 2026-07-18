FROM node:latest
# API_KEY must be supplied at runtime
RUN curl -fsSL https://install.example.com/setup.sh | sh
COPY . /app
CMD ["node", "server.js"]