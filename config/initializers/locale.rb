# I18nライブラリに訳文の探索場所を指示する
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

#アプリケーションで有効とする言語を指定する（英語と日本語）
I18n.available_locales = [:en, :ja]

# デフォルトの言語を指定する（日本語）
I18n.default_locale = :ja
