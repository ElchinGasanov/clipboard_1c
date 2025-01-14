&НаКлиенте
Процедура ПриОткрытии(Отказ)
	БуферО_БуферОбменаКлиент.BeginGettingAddinVersion(Новый ОписаниеОповещения("ПриОткрытииЗавершение",
		ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытииЗавершение(Результат, ДополнительныеПараметры) Экспорт
	ВерсияКомпоненты=Результат;
КонецПроцедуры

&НаКлиенте
Процедура КартинкаИзБуфера(Команда)
	БуферО_БуферОбменаКлиент.BeginGettingImageFromClipboard(Новый ОписаниеОповещения("КартинкаИзБуфераЗавершение", ЭтотОбъект), "ДвоичныеДанные");
КонецПроцедуры

&НаКлиенте
Процедура КартинкаИзБуфераЗавершение(Результат, ДополнительныеПараметры) Экспорт
	АдресКартинки=ПоместитьВоВременноеХранилище(Результат, УникальныйИдентификатор);
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьБуфер(Команда)
	БуферО_БуферОбменаКлиент.BeginClipBoardEmptying(Новый ОписаниеОповещения("ОчиститьБуферЗавершение", ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьБуферЗавершение(Результат, ПараметрыВызова, ДополнительныеПараметры) Экспорт
	
КонецПроцедуры

&НаКлиенте
Процедура УстановитьТекстВБуфере(Команда)
	БуферО_БуферОбменаКлиент.BeginCopyTextToClipboard(ТекстБуфера,Новый ОписаниеОповещения("СкопироватьКартинкуВБуферЗавершение", ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура УстановитьТекстВБуфереЗавершение(Результат, ПараметрыВызова,ДополнительныеПараметры) Экспорт
	
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьТекстИзБуфера(Команда)
	БуферО_БуферОбменаКлиент.BeginGettingTextFormClipboard(Новый ОписаниеОповещения("ПолучитьТекстИзБуфераЗавершение", ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьТекстИзБуфераЗавершение(Результат, ДополнительныеПараметры) Экспорт
	ТекстБуфера=Результат;
КонецПроцедуры

&НаКлиенте
Процедура СкопироватьКартинкуВБуфер(Команда)
	БуферО_БуферОбменаКлиент.BeginCopyingImageToClipboard(АдресКартинки,Новый ОписаниеОповещения("СкопироватьКартинкуВБуферЗавершение", ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура СкопироватьКартинкуВБуферЗавершение(Результат, ПараметрыВызова,ДополнительныеПараметры) Экспорт
	
КонецПроцедуры


&НаКлиенте
Процедура УстановитьКартнкуИзФайла(Команда)
	ДВФ=Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.Открытие);
	ДВФ.МножественныйВыбор=Ложь;
	Если ДВФ.Выбрать() Тогда
		Картинка=Новый Картинка(ДВФ.ПолноеИмяФайла);
		КК=Картинка.Преобразовать(ФорматКартинки.PNG);
		АдресКартинки=ПоместитьВоВременноеХранилище(КК.ПолучитьДвоичныеДанные(), УникальныйИдентификатор);
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Процедура ФорматБуфераОбмена(Команда)
	БуферО_БуферОбменаКлиент.BeginGettingClipboardFormat(Новый ОписаниеОповещения("ФорматБуфераОбменаЗавершение", ЭтотОбъект));
КонецПроцедуры

&НаКлиенте
Процедура ФорматБуфераОбменаЗавершение(Результат, ДополнительныеПараметры) Экспорт
	Формат=Результат;
КонецПроцедуры

