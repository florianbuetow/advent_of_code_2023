# About

In December 2024, I joined Jeremy Howard's new course, Solve It With Code, by fast.ai. This unique program introduces a fresh approach to coding that combines iterative problem-solving with AI. It emphasizes building foundational skills without requiring a background in data structures or computer science. The course focuses on using Python (with minimal external libraries) and teaches a dialogue engineering technique that integrates AI as a collaborative tool.

This repository contains my solutions to the Advent of Code 2023 challenges, crafted using the dialogue engineering process taught in the course. Beyond the solutions, it also includes the dialogue logs detailing how each solution was developed. These logs showcase the iterative journey of problem-solving, offering insights into the reasoning and techniques behind the final results.

I encourage you to explore both the solutions and the accompanying dialogues. Together, they highlight not just the results but also the process and the power of this new coding approach.

## Project Structure


```bash
.
├── Dockerfile                      <- Defines the environment for generating the README in Docker
├── README.md                       <- You are reading this right now
├── README.template                 <- Template for dynamically generating the README file
├── challenges.json                 <- Metadata about Advent of Code 2023 challenges
├── generate_file_templates.py      <- Script to create consistent file templates for challenges
├── generate_readme.py              <- Script to generate the README dynamically
├── generate_readme_using_docker.sh <- Runs generate_readme.py inside a Docker container
├── requirements.txt                <- Lists the Python dependencies for the project
├── data                            <- Contains input and sample data for challenges
│   ├── dayXX.txt                   <- Main input data for each challenge
│   ├── dayXX_sample.txt            <- Sample input data for testing
│   └── dayXX_test.txt              <- Additional test data (optional)
├── dialogues                       <- Dialogue logs showcasing problem-solving steps
│   └── *.md                        <- Markdown files documenting the solution process for each challenge
└── solutions                       <- Contains Python solution scripts for each challenge
    └── *.py                        <- Python scripts for solving individual challenges
```
## Challenges

| Day | Challenge                       | Solution Code | Solution Dialog | Time Complexity | Space Complexity | Challenge Link |
|-----|---------------------------------|---------------|-----------------|-----------------|------------------|----------------------------------------------------------|
| 01  | Trebuchet?!                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/1) |
| 02  | Cube Conundrum                  | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/2) |
| 03  | Gear Ratios                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/3) |
| 04  | Scratchcards                    | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/4) |
| 05  | If You Give A Seed A Fertilizer | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/5) |
| 06  | Wait For It                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/6) |
| 07  | Camel Cards                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/7) |
| 08  | Haunted Wasteland               | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/8) |
| 09  | Mirage Maintenance              | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/9) |
| 10  | Pipe Maze                       | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/10) |
| 11  | Cosmic Expansion                | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/11) |
| 12  | Hot Springs                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/12) |
| 13  | Point of Incidence              | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/13) |
| 14  | Parabolic Reflector Dish        | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/14) |
| 15  | Lens Library                    | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/15) |
| 16  | The Floor Will Be Lava          | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/16) |
| 17  | Clumsy Crucible                 | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/17) |
| 18  | Lavaduct Lagoon                 | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/18) |
| 19  | Aplenty                         | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/19) |
| 20  | Pulse Propagation               | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/20) |
| 21  | Step Counter                    | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/21) |
| 22  | Sand Slabs                      | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/22) |
| 23  | A Long Walk                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/23) |
| 24  | Never Tell Me The Odds          | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/24) |
| 25  | Snowverload                     | Unsolved      | -               | -               | -                | [adventofcode.com](https://adventofcode.com/2023/day/25) |

---
## Generating this README

The following outlines the steps to build and run the Docker container that generates the `README.md` file using the `generate_readme.py` script.

#### 0. Prerequisites

- Clone this repository.
- Ensure that Docker is installed and running on your system.

#### 1. Make the Bash Script Executable

Run the following command to make the script executable:

```bash
chmod +x ./generate_readme_using_docker.sh
```

#### 2. Build and Run the Docker Container

```bash
./generate_readme_using_docker.sh
```

- This will build the Docker image every time it is run (to avoid caching)
- It will then run the Docker container to execute the `generate_readme.py` script, which generates the `README.md` file and persists it to your local directory.

#### 3. Verify the Output

Once the container execution is finished, you should see the updated `README.md` file in the same directory where you ran the script.