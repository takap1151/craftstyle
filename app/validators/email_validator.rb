# -*- encoding : utf-8 -*-
require 'mail'
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    begin
      m = Mail::Address.new(value)
      # valueがドメイン名を含み、そのvalueがemailアドレスであることをチェックします。
      r = m.domain && m.address == value
             
      # treetopというPEGパーサー(http://treetop.rubyforge.org/index.html)で
      # 構文解析します。
      t = m.__send__(:tree)
      # 正しいドメインは dot_atom_textのsize > 1
      r &&= (t.domain.dot_atom_text.elements.size > 1)
    rescue Exception => e   
      r = false
    end
    record.errors[attribute] << (options[:message] || I18n.t('activerecord.errors.messages.not_an_email')) unless r
  end
end
