Gem::Specification.new do |s|
  s.name        = 'pec_calc_client'
  s.version     = '0.1.1'
  s.licenses    = ['MIT']
  s.summary     = "Gem for PEC transport Company API"
  s.description = "Gem for working with public API http://pecom.ru/business/developers/api_public/"
  s.authors     = ["MAXOPKA"]
  s.email       = 'd.n.krivenko@gmail.com'
  require 'rake'
  s.files = FileList['lib/*','lib/pec_calc_client/*',
                      'bin/*',
                      '[A-Z]*',
                      'spec/*','spec/pec_calc_client/*'].to_a
  s.homepage    = 'https://rubygems.org/gems/pec_calc_client'
end
