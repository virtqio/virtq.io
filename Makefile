generate:
	rm -rf .frog fa/.frog
	rm -rf build && mkdir -p build
	cp -R static/* build
	-raco frog --build
	mkdir -p build/fa
	-cd fa && raco frog -b
	cp -R fa/static/* build/fa

http:
	raco frog -s

clean:
	raco frog --clean
	rm -f PFPL/*
	rm -f index.html sitemap.txt
	cd fa && make clean

