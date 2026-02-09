# Build stage
FROM node:18-alpine AS build
WORKDIR /app

# Copy the whole repo so the local file dependency ("file:..") can be resolved
COPY . .

# Install and build the React app (context is ./react-app)
RUN npm ci && npm run build

# Production stage
FROM nginx:alpine

# Replace default config with SPA-aware config
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
