You are a pumpkin, so choose your own path through a variety of different choices.

Introduction

So this is a mutiple choice adventure game where there isn't an real goal, besides experiencing the different endings I've put in place

It is heavily unfinshed right now, with a few of the choices working out, I'd like to add more in the future.

When you reach an ending the game will ask you to retry for another ending.

Credits

Special thanks to JOE from jmbiv (https://www.youtube.com/@jmbiv_dev) his tutorials on 
how to make a text based adventure game on godot were really helpful, so 

THE THEME

This weeks theme is grid, to comply with the theme, I added a seperate scene for the player to view the endings they've experienced. This is displayed in a graph that 
shows the choices the player made to make to reach an ending. Cause graphs are in a grid.

MAKING OF THE GAME

So this game followed a really good tutorial

Basically theres a main panel container that acts to correctly format the layout of the text, and response box.
This has alot of children , more containers that control the layout of the game. The text and responses are 
intresting though because some of the labels use code to adjust and modify their self, by using variables to save and emit responses
each label has its own script. As the person who made the tuorial really focused on the idea of having each object handle there
own code, which I found pretty intresting. For the painful part, each response from A-C is added to a first_Word variable in commands.gd
the option is matched to the letter(A,B,C) but also to the stage of the player. The stage is a pretty important variable that determines
how the choice is processed, and updates depending on response. Example putting A while stage = 1 != the respons from putting A while stage = 2
