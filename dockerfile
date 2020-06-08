# node'un official image'ini kullanın. versiyon 8
FROM node:latest

#uygulama 3000 portunu kullanıyor
#ama biz localhost'tan direkt göstermek istiyoruz.
EXPOSE 3000

#node'un uygulamayı yükleyeceğimiz dizinine gideceğiz.
WORKDIR /usr/srv/app

# Tüm dosyaları kopyalayalım.
 COPY . .

#npm install ile gerekli kütüphaneleri yükleyelim
RUN npm install

#son olarak çalıştıralım.
CMD [ "npm","start" ]
