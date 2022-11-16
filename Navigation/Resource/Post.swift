//
//  Post.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import Foundation

struct Post {
    
    var title: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    
}

let post1 = Post(title: "Боец Баки",
                 description: "Aниме и манга о боевых искусствах; по манге Кэйсукэ Итагаки был создан сериал «Baki the Grappler». В Японии было продано более 50 млн экз. манги. На данный момент в сериале 4 сезона. В России сериал транслировался на телеканале 2×2.",
                 image: "FighterBaki",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post2 = Post(title: "Ты",
                 description: "Aмериканский драматический сериал с элементами триллера. Премьера первого сезона состоялась на канале Lifetime 9 сентября 2018 года. 26 июля 2018 года телеканал Lifetime продлил телесериал на второй сезон.",
                 image: "SerialYou",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post3 = Post(title: "Новый iPhone",
                 description: "iPhone 14 является базовой моделью 16-го поколения; был представлен 7 сентября 2022 года. В линейку входит базовый iPhone 14, а также версия с увеличенной диагональю дисплея iPhone 14 Plus (приставка Plus в названии смартфона Apple в предыдущий раз использовалась в iPhone 8 Plus, выпущенном в 2017 году).",
                 image: "iPhone14Pro.jpeg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post4 = Post(title: "World Champpionship, Doha 2019",
                 description: "Прыжки в высоту на летних Олимпийских играх сгруппированы среди четырех соревнований по легкой атлетике, проводимых в рамках мультиспортивного мероприятия.",
                 image: "HighJump",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post5 = Post(title: "Obladaet - On Air",
                 description: "Назар Вотяков, более известный под сценическим псевдонимом Obladáet, — российский хип-хоп-исполнитель и автор песен, ныне проживающий в Санкт-Петербурге. В своей дискографии имеет 4 студийных альбома, 2 мини-альбома, 1 совместный мини-альбом и множество синглов.",
                 image: "Music",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post6 = Post(title: "Playstation 5 - Вышла!",
                 description: "Текущая версия страницы пока не проверялась опытными участниками и может значительно отличаться от версии, проверенной 20 сентября 2022 года; проверки требует 1 правка.",
                 image: "Playstation",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))

let post7 = Post(title: "Terraria - Глобальное обновление",
                 description: "Terraria — компьютерная игра в жанре приключенческой песочницы, разработанная американской студией Re-Logic. Была выпущена в 2011 году для компьютеров Microsoft Windows с распространением через систему цифровой дистрибуции Steam.",
                 image: "Terraria",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000))
