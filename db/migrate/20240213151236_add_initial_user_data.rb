class AddInitialUserData < ActiveRecord::Migration[7.1]
  def change
    unless User.exists?(email: 'claudenirorafaelbjj@gmail.com')
      execute <<-SQL
        INSERT INTO public.users (email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, admin, name)
        VALUES ('claudenirorafaelbjj@gmail.com', '$2a$12$/nebvskGH9M91.mWYZ2hhOB97GZsKoUOvT.ogyOeqvdIFzyPn2i96', NULL, NULL, NULL, '2024-02-07 21:54:56.964175', '2024-02-07 21:54:56.964175', true, NULL);
      SQL
    end
  end
end