//
//  model.swift
//  VUT Bezpečnost v elektrotechnice
//
//  Created by Alexander Shabelnikov on 02/09/2020.
//  Copyright © 2020 Alexander Shabelnikov. All rights reserved.
//

import Foundation


struct Question {
    let id: Int
    let text: String
    var isAnswered: Bool
    var answer: Int
    var answers: [Answer]
    
    func getId() -> Int {
        return id
    }

}

struct Answer {
    let id: Int
    let text: String
    let isCorrect: Bool
}

var questionModel = [Question]()
var errorsModel = [Question]()
var questionBackup = [Question]()


func setupErrors(q: Question) {
    errorsModel.append(q)
}

func setupQuestions() {

    
       questionModel.append(Question(id: 1, text: "Rozdělení EZ podle napětí mezi vodiči v uzemněné střídavé soustavě je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "mn do 50 V; nn do 1000 V; vn do 52 kV", isCorrect: true),
           Answer(id: 2, text: "mn do 25 V; nn do 500 V; vn do 52 kV", isCorrect: false),
           Answer(id: 3, text: "mn do 230 V; nn do 24 kV; vn do 52 kV", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 2, text: "Jmenovité napětí střídavých rozvodných sítí v ČR je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "230/400 V", isCorrect: true),
           Answer(id: 2, text: "120/300 V", isCorrect: false),
           Answer(id: 3, text: "12/24 V", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 3, text: "Mez bezpečných jmenovitých napětí při předpokládaném dotyku neživých částí v prostorech normálních je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "50 V~ a 120 V=", isCorrect: true),
           Answer(id: 2, text: "25 V~ a 120 V=", isCorrect: false),
           Answer(id: 3, text: "60 V~ a 60 V=", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 4, text: "Dovolené meze trvalého dotykového napětí v prostorech normálních i nebezpečných pro EZ do 1000 V jsou:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "25 V~ a 60 V=", isCorrect: true),
           Answer(id: 2, text: "50 V~ a 120 V=", isCorrect: false),
           Answer(id: 3, text: "12 V~ a 24 V=", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 5, text: "Odpor uzemnění uzlu zdroje nemá být větší než:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "5 Ω, ve ztížených podmínkách nejvýše 15 Ω", isCorrect: true),
           Answer(id: 2, text: "10 Ω, ve ztížených podmínkách nejvýše 15 Ω", isCorrect: false),
           Answer(id: 3, text: "15 Ω, ve ztížených podmínkách nejvýše 5 Ω", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 6, text: "Plynové potrubí se jako náhodný ochranný vodič:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nesmí použít", isCorrect: true),
           Answer(id: 2, text: "Může použít", isCorrect: false),
           Answer(id: 3, text: "Musí použít", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 7, text: "Silnoproudá zařízení jsou zařízení:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "U nichž mohou vzniknout proudy nebezpečné osobám, zvířatům a věcem", isCorrect: true),
           Answer(id: 2, text: "Kde proud protékající přesahuju 2,5A~ a 5A=", isCorrect: false),
           Answer(id: 3, text: "Kde proud protékající přesahuju 5A~ a 10A=", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 8, text: "Obecná charakteristika prostorů nebezpečných říká, že:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Vlivem prostředí je zde stálé nebo přechodné nebezpečí úrazu elektrickým proudem", isCorrect: true),
           Answer(id: 2, text: "Živé části jsou přístupné laikům", isCorrect: false),
           Answer(id: 3, text: "Jsou zde tabulky zákazu a výstrahy", isCorrect: false),
       ]))
       
   // вопросы 9 и 11 есть в тесте, но здесь они задвоились:

       questionModel.append(Question(id: 9, text: "Z hlediska možného zvýšení rizika úrazu elektrickým proudem působením vnějších vlivů se prostory člení na:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Normální, nebezpečné a zvlášť nebezpečné", isCorrect: true),
           Answer(id: 2, text: "Normální a nebezpečné", isCorrect: false),
           Answer(id: 3, text: "Bezpečné a nebezpečné", isCorrect: false),
       ]))
       
       
       questionModel.append(Question(id: 10, text: "Barva bezpečnostních tabulek výstrahy je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Žlutá", isCorrect: true),
           Answer(id: 2, text: "Oranžová", isCorrect: false),
           Answer(id: 3, text: "Červená", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 11, text: "Barva bezpečnostních tabulek zákazu je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Červená", isCorrect: true),
           Answer(id: 2, text: "Černá", isCorrect: false),
           Answer(id: 3, text: "Žlutá", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 12, text: "Bezpečnostní značka v provedení modrý kruh, bílý symbol je značka:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Příkazu", isCorrect: true),
           Answer(id: 2, text: "Zákazu", isCorrect: false),
           Answer(id: 3, text: "Výstrahy", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 13, text: "Bezpečnostní značky v provedení na zeleném podkladu jsou značky:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Informační", isCorrect: true),
           Answer(id: 2, text: "Výstrahy", isCorrect: false),
           Answer(id: 3, text: "Příkazu", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 14, text: "V označení stupně krytí IP udává první číslice:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Stupeň ochrany osob před nebezpečným dotykem živých částí a stupeň ochrany zařízení před vniknutím cizích pevných těles", isCorrect: true),
           Answer(id: 2, text: "Stupeň ochrany před vniknutím bez klíče čí nástroje", isCorrect: false),
           Answer(id: 3, text: "Stupeň ochrany před vlhkostí, vodou a korozi", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 15, text: "Prostředky základní ochrany (před přímým dotykem) EZ zajišťují ochranu:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Jen při normálním provozu", isCorrect: true),
           Answer(id: 2, text: "Vždy", isCorrect: false),
           Answer(id: 3, text: "Základní i při poruše", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 16, text: "Prostředky zvýšené ochrany (před přímým i nepřímým dotykem) EZ zajišťují ochranu:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Základní i při poruše", isCorrect: true),
           Answer(id: 2, text: "Základní i pokročilou", isCorrect: false),
           Answer(id: 3, text: "Vždy", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 17, text: "Při automatickým odpojením se pro střídavé rozvodné sítě do 1000 V dovoluje doba odpojení:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nepřesahující 5 s", isCorrect: true),
           Answer(id: 2, text: "Nepřesahující 0,5 s", isCorrect: false),
           Answer(id: 3, text: "Nepřesahující 2 s", isCorrect: false),
       ]))
     
   // Вопроса 20 и 21 нет
     
       questionModel.append(Question(id: 18, text: "Pro automatické odpojení od zdroje v síti TT 230 V AC, zajišťující ochranu před nepřímým dotykem koncového obvodu do 32 A, musí ochranný prvek vypnout v čase do:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "0,2 s", isCorrect: true),
           Answer(id: 2, text: "Test2", isCorrect: false),
           Answer(id: 3, text: "Just because", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 19, text: "Pro automatické odpojení od zdroje v síti TN 230 V AC, zajišťující ochranu před nepřímým dotykem koncového obvodu do 32 A, musí ochranný prvek vypnout v čase do:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "0,4 s", isCorrect: true),
           Answer(id: 2, text: "Test2", isCorrect: false),
           Answer(id: 3, text: "Just because", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 20, text: "Při základní ochraně krytím musí kryty:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Být dostatečně odolné, vyhovující alespoň IPxxB (IP2X), horní vodorovné kryty pak IPxxD (IP4X), odstranitelné jen klíčem či nástrojem", isCorrect: true),
           Answer(id: 2, text: "Být dostatečně odolné, vyhovující alespoň IPxxB (IP4X), horní vodorovné kryty pak IPxxD (IP2X), odstranitelné jen klíčem či nástrojem", isCorrect: false),
           Answer(id: 3, text: "Být voděodolné, odstranitelné jen klíčem či nástrojem", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 21, text: "Ochranu zábranou v prostorech volně přístupných laikům:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nelze použít", isCorrect: true),
           Answer(id: 2, text: "V ČR lze použít", isCorrect: false),
           Answer(id: 3, text: "Musí se použít", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 22, text: "Napětí obvodů při ochranně elektrickým oddělením nesmí přesáhnout hodnotu:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "500 V", isCorrect: true),
           Answer(id: 2, text: "230 V", isCorrect: false),
           Answer(id: 3, text: "400 V", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 23, text: "Základní ochrana polohou spočívá:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "V umístění živých částí mimo dosah", isCorrect: true),
           Answer(id: 2, text: "V umístění živých částí do prostorů přístupným pouze pracovníků znalých", isCorrect: false),
           Answer(id: 3, text: "V umístění živých částí vice než 2,5 m od sebe", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 24, text: "Doplňkovou ochranu proudovým chráničem lze realizovat:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Chráničem se jmenovitým rozdílovým proudem nejvýše 30 mA", isCorrect: true),
           Answer(id: 2, text: "Chráničem se jmenovitým rozdílovým proudem nejvýše 3 mA", isCorrect: false),
           Answer(id: 3, text: "Chráničem se jmenovitým rozdílovým proudem nejvýše 300 mA", isCorrect: false),
       ]))
       
   // Вопроса 27 нет

       questionModel.append(Question(id: 25, text: "Proudové chrániče s rozdílovým proudem do 30 mA se musí požít na:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Zásuvky se jmenovitým proudem do 32 A, které jsou používány laiky", isCorrect: true),
           Answer(id: 2, text: "Zásuvky se jmenovitým proudem do 32 A, které nejsou používány laiky", isCorrect: false),
           Answer(id: 3, text: "Všechny Zásuvky", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 26, text: "Pro ochranu omezením ustáleného dotykového proudu a energie nesmí proud tekoucí odporem 2000 Ohmů mezi částmi současně přístupnými dotyku překročit hodnoty:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "3,5 mA~ nebo 10 mA=", isCorrect: true),
           Answer(id: 2, text: "10 mA~ nebo 3,5 mA=", isCorrect: false),
           Answer(id: 3, text: "10 mA~ nebo 20 mA=", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 27, text: "Pro ochranu omezením ustáleného proudu a energie nesmí náboj mezi částmi současně přístupnými dotyku překročit hodnotu:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "50 μC", isCorrect: true),
           Answer(id: 2, text: "500 μC", isCorrect: false),
           Answer(id: 3, text: "5 μC", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 28, text: "Proudovým chráničem musí procházet:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Všechny pracovní vodiče", isCorrect: true),
           Answer(id: 2, text: "Pouze ochranný vodič", isCorrect: false),
           Answer(id: 3, text: "Pouze zemnicí vodič", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 29, text: "Vidlice a zásuvky pro obvody SELV musí splňovat tyto požadavky:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nesmí být všechny pracovní vodiče záměnné s vidlicemi a zásuvkami sítí jiných napětí a nesmí mít kontakt pro ochranný vodič", isCorrect: true),
           Answer(id: 2, text: "Nesmí být všechny pracovní vodiče záměnné s vidlicemi a zásuvkami sítí jiných napětí a musí mít kontakt pro ochranný vodič", isCorrect: false),
           Answer(id: 3, text: "Nesmí být všechny pracovní vodiče záměnné s vidlicemi a zásuvkami sítí jiných napětí a může mít kontakt pro ochranný vodič", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 30, text: "Živé části obvodů PELV s napětím nepřesahujícím 12V~ nebo 25V=:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nemusí mít základní ochranu", isCorrect: true),
           Answer(id: 2, text: "Musí mít základní ochranu", isCorrect: false),
           Answer(id: 3, text: "Nemusí mít ochranný vodič", isCorrect: false),
       ]))
       
   // Вопроса 33 нет

       questionModel.append(Question(id: 31, text: "Proudovým chráničem musí procházet:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Všechny pracovní vodiče", isCorrect: true),
           Answer(id: 2, text: "Pracovní vodiče v sitich TT", isCorrect: false),
           Answer(id: 3, text: "Pracovní vodiče v zabezpečených prostorách", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 32, text: "Jako zdroje pro ochranu malým napětím lze použít:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Bezpečnostní ochranný transformátor, akumulátor", isCorrect: true),
           Answer(id: 2, text: "Základní ochranu", isCorrect: false),
           Answer(id: 3, text: "Ochranu polohou", isCorrect: false),
       ]))
       
   // 35 нет
       
       questionModel.append(Question(id: 33, text: "Obvody SELV", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nesmí být spojeny se zemí", isCorrect: true),
           Answer(id: 2, text: "Jsou uzemněné", isCorrect: false),
           Answer(id: 3, text: "Musí být spojeny se zemí", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 34, text: "Z označení PELV vyplývá, že jde o obvody:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Uzemněné", isCorrect: true),
           Answer(id: 2, text: "Bezpečné", isCorrect: false),
           Answer(id: 3, text: "Neuzemněné", isCorrect: false),
       ]))
       
   // 38 нет
       
       questionModel.append(Question(id: 35, text: "Ochrana základní izolací znamená, že:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Živé části musí být úplně pokryty izolací, kterou lze odstranit pouze jejím zničením", isCorrect: true),
           Answer(id: 2, text: "Živé části musí být mimo dosah laiků", isCorrect: false),
           Answer(id: 3, text: "Živé části musí mít snadně odstranitelnou izolaci", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 36, text: "Zařízení mající dvojitou či zesílenou izolaci se označují jako:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "EZ třídy ochrany II", isCorrect: true),
           Answer(id: 2, text: "EZ třídy ochrany I", isCorrect: false),
           Answer(id: 3, text: "EZ třídy ochrany IV", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 37, text: "Elektrické zařízezení třídy ochrany II:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Má dvojitou či zesílenou izolaci a nemá svorku pro připojení ochranného vodiče", isCorrect: true),
           Answer(id: 2, text: "Má pouze základní ochranu", isCorrect: false),
           Answer(id: 3, text: "Má ochranu základní i při poruše", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 38, text: "Elektrické zařízení, u něhož je provedena jen pracovní izolace, se považuje z hlediska možného úrazu elektrickým proudem za zařízení:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Bez ochrany", isCorrect: true),
           Answer(id: 2, text: "Se základní ochranou", isCorrect: false),
           Answer(id: 3, text: "Bezpečné", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 39, text: "V sítích TT se neživé části EZ:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nesmějí připojit na nulový vodič", isCorrect: true),
           Answer(id: 2, text: "Nesmějí připojit na ochranný vodič", isCorrect: false),
           Answer(id: 3, text: "Musí připojit na nulový vodič", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 40, text: "Elektrická zařízení třídy ochrany II musí mít připojovací vidlici:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Bez ochranného vodiče", isCorrect: true),
           Answer(id: 2, text: "S ochranným vodičem", isCorrect: false),
           Answer(id: 3, text: "Mivo dosah laiků", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 41, text: "Elektrická zařízení třídy ochrany 0:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nelze v ČR používat", isCorrect: true),
           Answer(id: 2, text: "Lze použit na území VUT FEKT", isCorrect: false),
           Answer(id: 3, text: "Lze v ČR použít", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 42, text: "Izolace, která slouží k ochraně při poruše (před nepřímým dotykem) se nazývá:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Přídavná", isCorrect: true),
           Answer(id: 2, text: "Základní", isCorrect: false),
           Answer(id: 3, text: "Vylepšená", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 43, text: "Pro připojení elektrických předmětů třídy ochrany I se dvouvodičový pohyblivý přívod s vidlicí bez ochranného kontaktu:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Nesmí použít", isCorrect: true),
           Answer(id: 2, text: "Může použít", isCorrect: false),
           Answer(id: 3, text: "Musí použít", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 44, text: "Jednofázový pohyblivý prodlužovací přívod pro obecné použití se provede jako:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Třížilový, přičemž ochranný vodič je veden samostatně a nesmí být spojen s nulovým vodičem", isCorrect: true),
           Answer(id: 2, text: "Třížilový, přičemž ochranný vodič je veden samostatně a musí být spojen s nulovým vodičem", isCorrect: false),
           Answer(id: 3, text: "Třížilový, přičemž ochranný vodič je veden spolu s ostatními", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 45, text: "Barva izolovaných krajních (fázových) vodičů může být:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Černá, hnědá nebo šedá", isCorrect: true),
           Answer(id: 2, text: "Černá, červená nebo modrá", isCorrect: false),
           Answer(id: 3, text: "Červená, zelená nebo modrá", isCorrect: false),
       ]))
       

       questionModel.append(Question(id: 46, text: "Nulový (střední) vodič střídavé soustavy se označuje:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "N", isCorrect: true),
           Answer(id: 2, text: "L", isCorrect: false),
           Answer(id: 3, text: "S", isCorrect: false),
       ]))
       
   // Вопрос 52 такой же, как 50

       questionModel.append(Question(id: 47, text: "Fázové svorky elektrických předmětů a zařízení se ve střídavé rozvodné soustavě označují písmeny:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "U, V, W", isCorrect: true),
           Answer(id: 2, text: "I, U, R", isCorrect: false),
           Answer(id: 3, text: "K, L, M", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 48, text: "Svorka ochranného vodiče se na elektrickém předmětu značí:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "PE", isCorrect: true),
           Answer(id: 2, text: "PEN", isCorrect: false),
           Answer(id: 3, text: "N", isCorrect: false),
       ]))
       
   // Вопрос 54 такой же, как 50 и 52

       
       questionModel.append(Question(id: 49, text: "Vodič PEN je:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Vodič slučující funkci ochranného vodiče a nulového vodiče", isCorrect: true),
           Answer(id: 2, text: "Vodič slučující finkci pracovních vodičů a ochranného vodiče", isCorrect: false),
           Answer(id: 3, text: "Vodič slučující funkci pracovních vodičů a nulového vodiče", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 50, text: "Jištění vodičů PE a PEN:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Je zakázáno", isCorrect: true),
           Answer(id: 2, text: "Je nutností", isCorrect: false),
           Answer(id: 3, text: "Je povoleno", isCorrect: false),
       ]))
       
   // вопрос 57 такой же, как 50, 52 и 54
       
       
       questionModel.append(Question(id: 51, text: "Obsluha je taková činnost na EZ, kdy:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovník nepoužívá nástrojů a nemůže přijít do styku s živými částmi", isCorrect: true),
           Answer(id: 2, text: "Pracovník nepoužívá nástrojů, ale může přijít do styku s živými částmi", isCorrect: false),
           Answer(id: 3, text: "Pracovník používá nástrojů a může přijít do styku s živými částmi", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 52, text: "Práce je taková činnost na EZ, kdy:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovník používá nástrojů a může přijít do styku s živými částmi", isCorrect: true),
           Answer(id: 2, text: "Pracovník nepoužívá nástrojů a nemůže přijít do styku s živými částmi", isCorrect: false),
           Answer(id: 3, text: "Pracovník nepoužívá nástrojů, ale může přijít do styku s živými částmi", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 53, text: "§4 Vyhlášky 50/1978 Sb. stanovuje požadavky pro kvalifikaci:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovníků poučených", isCorrect: true),
           Answer(id: 2, text: "Pracovníků znalých", isCorrect: false),
           Answer(id: 3, text: "Pracovníků pro samostatnou činnost", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 54, text: "§5 50/1978 Sb. stanovuje požadavky pro kvalifikaci:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovníků znalých", isCorrect: true),
           Answer(id: 2, text: "Pracovníku poučenných", isCorrect: false),
           Answer(id: 3, text: "Pracovníků pro samostatnou činnost", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 55, text: "Pracovníci poučení mohou na EZ pracovat:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "V blízkosti nekrytých částí EZ nn pod napětím ve vzdálenosti větší než 20 cm s dohledem", isCorrect: true),
           Answer(id: 2, text: "V blízkosti nekrytých částí EZ nn pod napětím ve vzdálenosti větší než 20 cm pod dozorem", isCorrect: false),
           Answer(id: 3, text: "V blízkosti nekrytých částí EZ nn pod napětím ve vzdálenosti větší než 80 cm s dohledem", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 56, text: "Při práci pod dozorem odpovídá za dodržování bezpečnostních předpisů:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovník dozírající", isCorrect: true),
           Answer(id: 2, text: "Pracovník provádějící činnost", isCorrect: false),
           Answer(id: 3, text: "Pracovník znalý", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 57, text: "Při práci s dohledem odpovídá za dodržování bezpečnostních předpisů:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Pracovník provádějící činnost", isCorrect: true),
           Answer(id: 2, text: "Pracovník dozírající", isCorrect: false),
           Answer(id: 3, text: "Pracovník znalý", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 58, text: "Pro následky úrazu elektrickým proudem je rozhodující:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Velikost proudu, který protéká tělem zasaženého", isCorrect: true),
           Answer(id: 2, text: "Čas, po který proud protékal tělem zasaženého", isCorrect: false),
           Answer(id: 3, text: "Velikost napětí, které protékal tělem zasaženého", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 59, text: "Za současně přístupně dotyku se považují části navzájem vzdálené:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Méně než 2,5 m", isCorrect: true),
           Answer(id: 2, text: "Méně než 1,5 m", isCorrect: false),
           Answer(id: 3, text: "Méně než 2 m", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 60, text: "Pracovními pomůckami jsou například:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Měřicí přístroje, zkoušečky napětí a další předměty potřebné k práci či obsluze EZ", isCorrect: true),
           Answer(id: 2, text: "Ochranné izolační rukavice, izolační koberce a plošiny, ochranné brýle apod.", isCorrect: false),
           Answer(id: 3, text: "Suché oblečení", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 61, text: "Ochrannými pomůckami jsou například:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Ochranné izolační rukavice, izolační koberce a plošiny, ochranné brýle apod.", isCorrect: true),
           Answer(id: 2, text: "Měřicí přístroje, zkoušečky napětí a další předměty potřebné k práci či obsluze EZ", isCorrect: false),
           Answer(id: 3, text: "Suché oblečení", isCorrect: false),
       ]))
       
       questionModel.append(Question(id: 62, text: "Před použitím ochranných pomůcek je pracovník povinen:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Přesvědčit se o jejich řádném stavu", isCorrect: true),
           Answer(id: 2, text: "Přesvědčit se o jejich stáří", isCorrect: false),
           Answer(id: 3, text: "Přesvědčit se o jejich púvodu", isCorrect: false),
       ]))

   // Вопросы о первой помощи

   questionModel.append(Question(id: 63, text: "Nepřímá srdeční masáž má být prováděna s frekvencí asi:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "100 stlačení za minutu", isCorrect: true),
           Answer(id: 2, text: "80 stlačení za minutu", isCorrect: false),
           Answer(id: 3, text: "50 stlačení za minutu", isCorrect: false),
       ]))

   questionModel.append(Question(id: 64, text: "Před započetím nepřímé srdeční masáže je potřeba:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Uložit postiženého rovně na záda na rovnou a pevnou podložku", isCorrect: true),
           Answer(id: 2, text: "Uložit postiženého rovně na záda na rovnou měkkou podložku", isCorrect: false),
           Answer(id: 3, text: "Uložit postiženého rovně na záda na nerovnou a pevnou podložku", isCorrect: false),
       ]))

   questionModel.append(Question(id: 65, text: "Při provádění nepřímé srdeční masáže musí mít zachránce:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Obě ruce napnuté v loktech", isCorrect: true),
           Answer(id: 2, text: "Pokrčené ruce v loktech", isCorrect: false),
           Answer(id: 3, text: "Čistý trestní rejstřík", isCorrect: false),
       ]))

   questionModel.append(Question(id: 66, text: "Při provádění nepřímé srdeční masáže je nutno stlačovat hrudní kost u dospělého člověka:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Do hloubky 4-5 cm", isCorrect: true),
           Answer(id: 2, text: "Do hloubky 2-4 cm", isCorrect: false),
           Answer(id: 3, text: "Do hloubky 8-10 cm", isCorrect: false),
       ]))

   questionModel.append(Question(id: 67, text: "Poměr stlačení srdce a umělého dýchání při resuscitaci má být", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "30 stlačení a 2 vdechy", isCorrect: true),
           Answer(id: 2, text: "20 stlačení a 2 vdechy", isCorrect: false),
           Answer(id: 3, text: "30 stlačení a 3 vdechy", isCorrect: false),
       ]))

   // этого вопроса нет

   questionModel.append(Question(id: 68, text: "Automatický externí defibrilátor použijeme v případě:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Zástavy dechu potiženého", isCorrect: true),
           Answer(id: 2, text: "Test2", isCorrect: false),
           Answer(id: 3, text: "Test3", isCorrect: false),
       ]))

   questionModel.append(Question(id: 69, text: "Pokud postižený po úrazu elektrickým proudem dýchá a má hmatný tep, zůstává při vědomí a není viditelně zraněn:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Je nutno přesto zavolat lékařskou pomoc", isCorrect: true),
           Answer(id: 2, text: "Není nutno volat lékařskou pomoc", isCorrect: false),
           Answer(id: 3, text: "Může a nemusí být přivolaná lékařská pomoc", isCorrect: false),
       ]))

   questionModel.append(Question(id: 70, text: "Záchrannou lékařskou službu je možné přivolat tísňovým telefonním číslem:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "155", isCorrect: true),
           Answer(id: 2, text: "150", isCorrect: false),
           Answer(id: 3, text: "111", isCorrect: false),
       ]))

   questionModel.append(Question(id: 71, text: "Jestliže postižený nabyl po resuscitaci vědomí:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Musí být nadále sledován a musí zůstat vleže", isCorrect: true),
           Answer(id: 2, text: "Nemusí být nadále sledován a může sám odejit", isCorrect: false),
           Answer(id: 3, text: "Musí být nadále sledován ale může se postavit na nohy", isCorrect: false),
       ]))

   questionModel.append(Question(id: 72, text: "Resuscitace se musí provádět:", isAnswered: false, answer: 0, answers: [
           Answer(id: 1, text: "Dokud se neobnoví životní funkce nebo do předání postiženého do péče záchranářů", isCorrect: true),
           Answer(id: 2, text: "Po dobu 10 minut", isCorrect: false),
           Answer(id: 3, text: "Po dobu 5 minut", isCorrect: false),
       ]))
    
    
    questionBackup = questionModel
    
    
}



