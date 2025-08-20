FROM node:18

#Set the working directory
WORKDIR /app

#Copy package.json and package-loc.json for caching
COPY package*.json ./

#install dependencies
RUN npm install

#Copy rest of the project
COPY . .

#Build the project
RUN npm run build

#Default command
CMD ["npm","start"]







