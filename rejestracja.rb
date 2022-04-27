require "roda"
require "digest"

class Rejestracja < Roda
    plugin :render, engine: 'haml'
    plugin :assets, css: 'custom.css'
    plugin :public
    plugin :assets_preloading
    plugin :sessions, secret: ENV.delete("REJESTRACJA_SESSION_SECRET") { Digest::SHA256.hexdigest "notsecret" }
    plugin :flash
    
    route do |r|
        r.assets
        r.public

        r.on "" do
            r.get do
                view(
                    "root",
                    locals: {
                        flash: flash
                    }
                )
            end

            r.post do
                email = r.params["email"]
                File.write("data/emails.txt", "#{email}\n", mode: "a")
                flash['thanks'] = true
                r.redirect "/"
            end
        end
    end
end
