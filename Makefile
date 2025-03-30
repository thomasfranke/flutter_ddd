#########################################################################
### Para utilizar esses comandos, digite no terminal "make <comando>" ###
#########################################################################

clean:
	flutter clean
	flutter pub get
localizations:
	flutter gen-l10n
runtest:
	flutter pub get
	flutter test
runner:
	dart run build_runner build --delete-conflicting-outputs
runner_watch:
	dart pub run build_runner watch --delete-conflicting-outputs
fvm:
	dart pub global activate fvm
	fvm use 3.29.2
	fvm global 3.29.2
	dart pub global deactivate fvm
	dart pub global activate fvm
prepare: fvm runner clean test

######################################################
### Build APK -> Distribuição Android Manual       ###
### Build AppBundle -> Distribuição no Google Play ###
### Build IPA -> Distribuição no App Store         ###
### Build Release -> AppBundle + IPA               ###
######################################################

apk: fvm runner clean runtest 
appbundle: fvm runner clean runtest 
ipa: fvm runner clean runtest 
release: fvm appbundle ipa


#################################
### Variáveis de Configuração ###
#################################

BUILD_APK = flutter build apk --release
BUILD_APP_BUNDLE = flutter build appbundle --release
BUILD_IPA = flutter build ipa

