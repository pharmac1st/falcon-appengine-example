group :development do
	guard :falcon, port: 9292 do
		watch('Gemfile.lock')
		watch('config.ru')
		watch(%r{^config|lib|pages/.*})

		notification :off
	end
end
