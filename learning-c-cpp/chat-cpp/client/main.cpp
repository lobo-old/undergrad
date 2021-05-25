#include <SFML/Graphics.hpp>
#include<SFML/Network.hpp>
#include <string>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    sf::IpAddress ip = "192.168.44.135";
    sf::TcpSocket socket;
    std::string id;

    std::cout<< "Enter online id: ";
    std::cin>> id;

    socket.connect(ip, 2000);

    sf::RenderWindow Window(sf::VideoMode(800, 600, 32), "Chat, client: " + id);
    std::vector<sf::Text> chat;

    sf::Packet packet;
    packet << id;
    socket.send(packet);
    socket.setBlocking(false);

    sf::Font font;
    font.loadFromFile("angelina.TTF");

    std::string text= "";
    bool done = false;
    while (!done)
    {
        sf::Event Event;
        while (Window.pollEvent(Event))
        {
            switch (Event.type)
            {
            case sf::Event::Closed:
                Window.close();
                break;
            case sf::Event::KeyPressed:
                if (Event.key.code == sf::Keyboard::Escape)
                    Window.close();
                else if (Event.key.code == sf::Keyboard::Return)
                {
                    sf::Packet packet;
                    packet << id + ": " + text;
                    socket.send(packet);
                    sf::Text displayText(text, font, 20);
                    displayText.setColor(sf::Color::Red);
                    chat.push_back(displayText);
                    text = "";
                }
                break;
            case sf::Event::TextEntered:
                if (Event.text.unicode >= 32 && Event.text.unicode <= 126)
                    text += Event.text.unicode;
                else if (Event.text.unicode == 8)
                    text = text.substr(0, text.length()-1);
                break;
            }
        }

        sf::Packet packet;
        socket.receive(packet);

        std::string temptext;
        if(packet >> temptext)
        {
            sf::Text displayText(temptext, font, 20);
            displayText.setColor(sf::Color::Blue);
            chat.push_back(displayText);
        }

        int i=0;
        for (i; i<chat.size(); i++)
        {
            chat[i].setPosition(0, i*20);
            Window.draw(chat[i]);
        }

        sf::Text drawText(text, font, 20);
        drawText.setColor(sf::Color::Red);
        drawText.setPosition(0, i*20);
        Window.draw(drawText);

        Window.display();
        Window.clear();
    }
    return 0;
}
