#include <iostream>
#include <fstream>
#include <ios>
using namespace std;

int number_of_lines = 0;
void numberoflines();

int main()
{
   ofstream MyFile("README.md");
   MyFile << "# Shell script to guess the number of files in the current directory\n";
   time_t tt;
   struct tm * ti;
   time (&tt);
   ti = localtime(&tt); 
    MyFile << "**Make file ran at =**" 
             << asctime(ti); 
MyFile.close();

string line;
    ifstream myfile("guessinggame.sh");

    if(myfile.is_open()){
        while(!myfile.eof()){
            getline(myfile,line);
            cout<< line << endl;
            number_of_lines++;
        }
        myfile.close();
    }
    numberoflines();
    return 0;
}

void numberoflines(){
    number_of_lines--;
    std::ofstream log("README.md", std::ios_base::app | std::ios_base::out);
    log << "**Number of lines in guessinggame.sh is:**" << number_of_lines;

}