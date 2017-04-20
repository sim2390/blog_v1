class Lala < ActiveRecord::Migration[5.0]
  def change


    create_table :doctors do |t|


        t.string		:name
        t.string		:surname
        #t.file			:photo	          #uporabi Paperclip
        t.string		:tip			        #zdravnik 0 /zobozdravnik 1
        t.string		:specialization		#kako do seznama? ekstra model?
        t.string		:location			    #dodajanje lokacij? enako kot specializacij?
        t.datetime	:created_at
        t.datetime	:updated_at

        t.string	  :email
        t.string		:phone_number
        t.string		:fax_number
        t.string		:web_site

        t.text	   	:optional_info	 #a se to rabi?
        t.string		:slug				     #uporabi friendlyId

      t.timestamps
    end
  
  end
end
