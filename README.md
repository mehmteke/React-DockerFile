Oluşturulan React Projesini docker container kullanarak yayınlamak için dockerfile dosyası hazırlama:

1-) Dockerfile dosyası hazırlama projede mevcut.
 
2-) docker image build komutu kullanarak react-dockerfile-first-test adında yeni bir image oluşturma.
......\React_Docker\my_project> docker image build -t react-dockerfile-first-test .

3-) Oluşturduğum yeni image'ı (react-dockerfile-first-test) kullanarak Container oluşturma.

.....\React_Docker\my_project>docker container run --rm -p 2006:3000 react-dockerfile-first-test

NOT: Böyle oluşturunca hata verdi. Aşağıdaki satırı denediğimde hata giderildi. (Yani -i, -t ekledim.)
.....\React_Docker\my_project>docker container run --rm -p 2006:3000 -i -t  my_project
Kaynak:https://stackoverflow.com/questions/61506475/docker-react-app-404s-will-fallback-to
