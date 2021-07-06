.PHONY: build


 build:
	 npm install gulp -g
	 npm install bower -g
	 npm install
	 bower cache clean
	 bower install
	 npm run build #create npm build that invokes build script configuers in package.json
	 rm -r dist #delete dist
	 mkdir dist #create dist
	 cp -R lib/ dist/lib
	 cp -R build/alpaca/ dist/alpaca
	 git add dist -f
	 echo "Done packaging everything in the dist folder!!!!!!!!"
