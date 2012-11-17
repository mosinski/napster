Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '292604074183737', '9ac0d01c2a4ba743030d88884596d82a'
  provider :github, '553c7f75c562234c1a87', '20ead91c4728b206c48a72b227787ab13ffd187b'
end

