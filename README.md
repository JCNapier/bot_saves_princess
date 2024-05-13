# SESAC Takehome Bot Saves Princess & Bot Saves Princess 2


<details open="open">
  <summary>Table of Contents</summary>
  <ol>
  <li>
      <a href="#about-this-project">About this Project</a>
      <ul>
        <li><a href="#project-description">Project Description</a></li>
        <li><a href="#project-goals">Project Goals</a></li>
      </ul>
    </li>
    <li>
      <a href="#environment">Environment</a>
      <ul>
        <li><a href="#versions">Versions</a></li>
        <li><a href="#gems">Gems</a></li>
        <li><a href="#setup">Setup</a></li>
        </li>
      </ul>
    </li>
    <li>
      <a href="#using-this-repo">Using this Repo</a>
      <ul>
        <li><a href="#file-structure">File Structure</a></li>
        <li><a href="#playing-the-game">Playing the Game</a></li>
        <li><a href="#running-the-test-suite">Running the Test Suite</a></li>
        <li><a href="#testing-hacker-rank-code-solution">Testing Hacker Rank Code Solution</a></li>
        </li>
      </ul>
    </li>
    <li>
      <a href="#contributors">Contributors</a>
    </li>
  </ol>
</details>

----------

# About this Project 

## Project Description

Bot Saves Princess & Bot Saves Princess 2 are independent challenges that are found on the Hacker Rank Website.
### Bot Saves Princess Description: 
- Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the grid and can move one step at a time in any of the four directions. Can you rescue the princess?
- Complete the function displayPathtoPrincess which takes in two parameters - the integer N and the character array grid. The grid will be formatted exactly as you see it in the input, so for the sample input the princess is at grid[2][0]. The function shall output moves (LEFT, RIGHT, UP or DOWN) on consecutive lines to rescue/reach the princess. The goal is to reach the princess in as few moves as possible. 

### Bot Saves Princess 2 Description: 
- In this version of "Bot saves princess", Princess Peach and bot's position are randomly set. Can you save the princess?
- Complete the function nextMove which takes in 4 parameters - an integer N, integers r and c indicating the row & column position of the bot and the character array grid - and outputs the next move the bot makes to rescue the princess.

The links to each Hacker Rank Challege are below:
1. [Bot Saves Princess](https://www.hackerrank.com/challenges/saveprincess)
2. [Bot Saves Princess 2](https://www.hackerrank.com/challenges/saveprincess2)


## Project Goals:

- Demonstrate knowledge of Ruby, Design, Testing, Readability, Git, GitHub, & OOP
- Demonstrate healthy commit habits.
- Demonstrate proper use of GitHub Pull Requests
- Demonstrate ability to deploy CircleCi
- Demonstrate abiility to build a README using HTML and Markdown

----------

# Environment

## Versions

- [ruby 2.7.2](https://www.ruby-lang.org/en/news/2020/10/02/ruby-2-7-2-released/)
- [circleci 2.1](https://discuss.circleci.com/t/circleci-2-1-config-overview/26057)
- [docker_image cimg/ruby:3.3.1](https://circleci.com/developer/images/image/cimg/ruby)

----------

## Gems

1. [RSpec 3.13](https://rubygems.org/gems/rspec/versions/3.13.0)
  - rspec-core 3.13.0
  - rspec-expectations 3.13.0
  - rspec-mocks 3.13.1
  - rspec-rails 5.1.2
  - rspec-support 3.13.1

## Setup 
This repo makes use of a `Gemfile`. Run the following commands to install the Ruby Gems used, and create a `Gemfile.lock` file before interacting with the project or attempting to run the test suite:
1. `bundle install`

----------

# Using this Repo

## File Structure
This is a repo containing two separate projects. In this repo you will find the following file structure: 
```
├── lib
│   ├── bot_1
│   |    ├── bot_saves_princess.rb
│   |    ├── game_play.rb
│   |    ├── grid.rb
│   ├── bot_2
│   |    ├── bot_saves_princess_2.rb
│   |    ├── game_play_2.rb
│   |    ├── grid_2.rb
|
├── spec
│   ├── bot_1_spec
│   |    ├── bot_saves_princess_spec.rb
│   |    ├── game_play_spec.rb
│   |    ├── grid_spec.rb
│   ├── bot_2_spec
│   |    ├── bot_saves_princess_2_spec.rb
│   |    ├── game_play_2_spec.rb
│   |    ├── grid_2_spec.rb
├── bot_saves_princess_runner_1.rb
├── bot_saves_princess_runner_2.rb
├── hacker_rank_solution_1.rb
├── hacker_rank_solution_2.rb
```

## Playing the Game 
To play the game, ```cd``` into the root directory of the repo and run the following terminal command: `ruby bot_saves_princess_runner_1.rb` or `ruby bot_saves_princess_runner_2.rb`

## Running the Test Suite
There are currently a total of 41 unit tests in this project. To run the test suite ```cd``` into the root directory of the repo and run the following terminal command: `bundle exec rspec spec`. You may also run the terminal command: `rspec`

## Testing Hacker Rank Code Solution
To run the code solution for the hacker rank solution you must:
1. ```cd``` into the root directory of the repo.
2. Navigate to ```hacker_rank_solution_1.rb``` or ```hacker_rank_solution_2.rb```
3. Cope all code in the file **AS IS**
4. Paste the code into the respectibe Hacker Rank Challenge
5. On the Hacker Rank Challenge click ```Run Code``` at the bottom of the screen.
6. You will see the grid at the bottom of the screen is displayed with a gold trophy. You can hit the "play" button to see the move(s) of the game take place.
7. It will announce that you have won the game.

----------

## Contributors 

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-blue.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/JCNapier"><img src="https://avatars.githubusercontent.com/u/81737385?v=4?s=100" width="100px;" alt=""/><br /><sub><b>John Napier</b></sub></a><br /><a href="https://github.com/JCNapier/bot_saves_princess/commits?author=JCNapier" </a></td>

</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
