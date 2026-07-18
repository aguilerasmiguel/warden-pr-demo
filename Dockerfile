FROM node:latest
ENV API_KEY=sk-live-demo-please-remove
RUN curl -fsSL https://install.example.com/setup.sh | sh
COPY . /app
CMD ["node", "server.js"]
