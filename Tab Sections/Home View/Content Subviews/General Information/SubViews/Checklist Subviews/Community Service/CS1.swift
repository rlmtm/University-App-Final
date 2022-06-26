//
//  CS1.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 05/01/2022.
//

import SwiftUI

struct CS1: View {
    var body: some View {
        Text("Why is Community Service Important ?")
            .padding(.top, 90)
            .font(.title3.weight(.bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        
        ZStack {
            Rectangle()
                .frame(width: 370, height: 480, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.white)
            Text("""
                According to the survey, community service is important to colleges because it indicates that the student:
                
                - Is likely to be active on campus outside of class.
                - Is likely to contribute to the university’s mission.
                - Shares the school’s values.

                Of course, volunteering in your community also demonstrates a level of civic awareness and empathy for others, and it can reflect issues that you’re passionate about. Together, this helps form a complete (and positive) picture of who you are as an individual.
                
                In this guide, we’ll examine what colleges consider important when it comes to community service, including how many service hours you need and how schools evaluate your community service experiences.
                """)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 29)
                .frame(width: 380, height: 480, alignment: .leading)
                .font(.system(size: 16))
        }
        
        Text("How Many Hours of Community Service Do I Need ?")
            .font(.title3.weight(.bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        
        ZStack {
            Rectangle()
                .frame(width: 370, height: 1550, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.white)
            Text("""
                Colleges want students to participate in authentic, meaningful community service that deepens their sense of gratitude, responsibility for the future, and appreciation of diversity.
                
                In a 2016 report published by Harvard’s Graduate School of Education, a coalition of college admissions officers joined together to create and endorse recommendations related to community service and ethical engagement, among other topics.
                
                In summary, the report recommended the following:

                - Students should engage in authentically chosen community service. This means that the volunteer opportunities you choose should emerge from your interests and passions.
                
                - Ideally, students should spend at least a year on sustained service or community engagement. Community engagement refers to working in groups on community problems, like beautifying a local park or participating in an environmental initiative. The report states that individual service is also valuable, but community engagement develops problem-solving skills, group awareness, and an understanding of and investment in the common good. This also means consistency and commitment are important. Working on one project over a long period of time is better than working on twelve different projects to “collect” hours.
                
                - Students should also work on community service projects that deepen their understanding of diversity. The report specifies that this should not be a patronizing act of “doing for” students from different backgrounds. Instead, students should “do with,” collaborating with diverse groups on school and community issues.
                
                - The report explains that there is no need to “game” community service by seeking high-profile or exotic service opportunities in faraway places. The emotional and ethical awareness and skills generated by community service experiences are far more important.

                - Of course, volunteering in your community also demonstrates a level of civic awareness and empathy for others, and it can reflect issues that you’re passionate about. Together, this helps form a complete (and positive) picture of who you are as an individual.
                
                - In this guide, we’ll examine what colleges consider important when it comes to community service, including how many service hours you need and how schools evaluate your community service experiences.
                
                So, it’s not about how much community service you do, and it’s not about serving your community in ways that no applicant has ever served their community before.
                
                Colleges value community service that you’re passionate about, that you’re committed to, that betters your community or school, and that builds skills and deepens your understanding of diversity and ethics.
                """)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 29)
                .frame(width: 380, height: 1550, alignment: .leading)
                .font(.system(size: 16))
        }
        
        Text("Writing About Community Service on College Applications:")
            .font(.title3.weight(.bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        
        ZStack {
            Rectangle()
                .frame(width: 370, height: 1350, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.white)
            Text("""
                On your college applications, you’ll list your community service along with your other extracurricular activities. The essay and/or personal statement provides another opportunity to share your community service experiences with admissions officers. So, how can you write about your community service hours in a compelling way?
                
                First, a word of caution: Community service essays are common, and many share similar themes and ideas (e.g. helping the less fortunate, gaining a new perspective and learning to appreciate what you have, developing a passion for helping others, etc.). If you choose to write about community service, try to take a unique approach.
                
                Share a very specific experience, perhaps occurring in just one day, one hour, or even less. Avoid a “big-picture” essay about a project or generalizations about how community service changed your life. Home in on one significant moment and explain why it was meaningful to you and what you learned as a result.
                
                If you do write about community service in response to short answer questions, a personal statement, or an essay, remember these principles:

                - Be reflective. Explain what you learned and how you grew from the experience.
                
                - At the same time, be honest and specific. Avoid generic or cliché statements about how community service made you a better person or taught you to appreciate what you have. Think deeply about what you’ve really learned through community service.
                
                - Focus on one anecdote or experience. This will make it easier to get specific and develop a more personal reflection about how your community service experiences have impacted you and your perspective.
                
                - Remember what colleges consider important when it comes to community service: authentic passion, sustained commitment, community engagement, diversity, ethical and emotional awareness, and skills developed. If you have a genuine story related to one or more of these principles, share it.

                Keep in mind that you don’t have to write about community service (unless a college asks a question prompting you to do so). And if you don’t have a compelling story to share that fits the guidelines above, it’s probably best to avoid this topic.
                
                If, however, you can think of a meaningful experience that genuinely impacted you, a reflective essay about community service may be the way to go.
                """)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 29)
                .frame(width: 380, height: 1350, alignment: .leading)
                .font(.system(size: 16))
        }
        
        Text("Importance of Community Service for College Admissions:")
            .font(.title3.weight(.bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        
        ZStack {
            Rectangle()
                .frame(width: 370, height: 710, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.white)
            Text("""
                Not only is community service important for personal development and for our society, but it can also be the deciding factor in a college admissions tiebreaker scenario. With more students competing for fewer spots, that makes community service a very valuable component of your college applications.
                
                Make the most of your community service experiences by:

                - Choosing projects that relate to your passions and interests
                - Committing to one or two meaningful projects for a sustained length of time, rather than racing to complete the most volunteer hours
                - Prioritizing projects related to community engagement and diversity (“doing with” rather than “doing for” diverse groups)
                
                And if you write about community service on your college applications, focus on a specific experience, reflecting on why it was meaningful to you and how it impacted you.
                
                Ironically, if you really want to impress colleges with your community service, you need to stop thinking about impressing colleges. Find service projects that you enjoy and consider important, commit to working on them, and you’re sure to have the exact sort of meaningful and enlightening community service experiences that admissions officers value.
                """)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 29)
                .frame(width: 380, height: 710, alignment: .leading)
                .font(.system(size: 16))
        }
    }
}

struct CS1_Previews: PreviewProvider {
    static var previews: some View {
        CS1()
    }
}