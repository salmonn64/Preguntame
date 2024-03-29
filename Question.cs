﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace Preguntame
{
    /// <summary>
    /// Provides methods to access to the info of a question and check if a given answer is right.
    /// </summary>
    public class Question
    {
        [JsonInclude]
        string imgName;
        string question;
        string[] optionsRight;
        string[] optionsWrong;
        string[] imgRight;
        string[] imgWrong;

        /// <summary>
        /// A list of options for the question with a determined number of right and wrong answers, has to be set with the
        /// function GenerateListOfOptions
        /// </summary>
        List<QuestionOption> qOption;

        /// <summary>
        /// The TAG of the theme wich question corresponds to.
        /// </summary>
        public string TAG;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="question">body of the question</param>
        /// <param name="optionsRight">correct options for the questions</param>
        /// <param name="optionsWrong">wrong options for the question</param>
        /// <param name="TAG"></param>
        public Question(string question = "", string[] optionsRight = null, string[] optionsWrong = null, string TAG = "default",
            string imgName = "", string[] imgWrong = null, string[] imgRight = null )
        {
            qOption = new List<QuestionOption>();
            this.question = question;
            this.optionsRight = optionsRight;
            this.optionsWrong = optionsWrong;
            this.imgRight = imgRight;
            this.imgWrong = imgWrong;
            this.TAG = TAG;
            this.imgName = imgName;
        }
        
        /// <summary>
        /// Returns 0 if succesfully sets qOption with the specified parameters, -1 if not.
        /// If the number of required right answers is bigger than the number of right answers
        /// on the question data, it will take all the right answers for the options.
        /// </summary>
        /// <param name="rightOptions">number of right answers, has to be =>0 </param>
        /// <param name="totalOptions">number of totalOptions</param>
        /// <returns></returns>
        int GenerateListOfOptions( int rightOptions, int totalOptions)
        {
            if (rightOptions < 0 || totalOptions - rightOptions <0 || totalOptions == 0)
                return -1;
            Random rand = new Random();
            if(Data.settings.randRightOptions)
                rightOptions = rand.Next(totalOptions)+1;
            if (rightOptions > optionsRight.Length)
                rightOptions = optionsRight.Length;
            int wrongOptions = totalOptions - rightOptions;
            
            List<string> rlist = optionsRight.ToList<string>();
            List<string> wlist = optionsWrong.ToList<string>();
            List<string> imgrlist = imgRight.ToList<string>();
            List<string> imgwlist = imgWrong.ToList<string>();
            qOption.Clear();
            List<QuestionOption> auxOption = new List<QuestionOption>();
            while(rlist.Count > 0 && auxOption.Count < rightOptions)
            {
                int index = rand.Next(rlist.Count);
                auxOption.Add(new QuestionOption(true, rlist[index], imgrlist[index]));
                rlist.RemoveAt(index);
                imgrlist.RemoveAt(index);
            }
            int wrongCounter = 0;
            while(wrongCounter < wrongOptions && wlist.Count > 0)
            {
                int index = rand.Next(wlist.Count);
                auxOption.Add(new QuestionOption(false, wlist[index], imgwlist[index]));
                wlist.RemoveAt(index);
                imgwlist.RemoveAt(index);
                wrongCounter++;
            }
            while(auxOption.Count > 0)
            {
                int index = rand.Next(auxOption.Count);
                qOption.Add(auxOption[index]);
                auxOption.RemoveAt(index);
            }
            return 0;
        }

        /// <summary>
        /// Returns true if the answer selected is right.
        /// </summary>
        /// <param name="number">index of qOption</param>
        /// <returns></returns>
        public bool CheckAnswer(int number)
        {
            return qOption[number].IsRight();
        }

        /// <summary>
        /// Returns true if all the answers selected are right.
        /// </summary>
        /// <param name="numbers">index of qOption</param>
        /// <returns></returns>
        public bool CheckAnswers(int[] numbers)
        {
            for(int i=0; i<numbers.Length; i++)
            {
                if (!qOption[numbers[i]].IsRight())
                    return false;
            }
            return true;
        }

        /// <summary>
        /// Get the question text.
        /// </summary>
        /// <returns></returns>
        public string GetQuestionText()
        {
            return question;
        }

        /// <summary>
        /// Generate a random set of options with the specified right and wrong answers. 
        /// </summary>
        /// <returns>returns </returns>
        public List<QuestionOption> GenerateAndGetListOfOptions( int rightOptions, int totalOptions)
        {
            GenerateListOfOptions(rightOptions, totalOptions);
            return qOption;
        }

        /// <summary>
        /// Returns the image name for the question body.
        /// </summary>
        /// <returns></returns>
        public string GetImageName()
        {
            return imgName;
        }
    }
}
