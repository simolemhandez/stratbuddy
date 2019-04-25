# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Answer.destroy_all
Question.destroy_all
Attempt.destroy_all
Case.destroy_all
Order.destroy_all
User.destroy_all
Company.destroy_all

# CASE 1 ---------------------------------------------------------

cccc = Case.create(
  content: 'As the market for long-haul jet manufacturers is a duopoly between Boeing and Airbus, the market for regional jet manufacturers is also a duopoly between Bombardier of Canada and Embraer of Brazil. However, the market appears to be in for a period of transition due to at least two new entrants, Competitor “R” of Russia and Competitor “C” of China.',
  name: 'Regional Jet',
  day: 1,
  industry: 'Airline',
  position: 1
  )

Question.create(
  content: 'What advantages and disadvantages would you expect Russian and Chinese jet manufacturers to have compared to their competitors?',
  timing: 4,
  correction: '
  👉 This is a question of creativity where you should show your business acumen and understanding of world geopolitics. <br>

  <strong> Concerning the advantages: <br></strong>
  • State backing
  • Lower cost of production
  • Access to home markets which may be growing faster than developed markets <br><br>

  <strong> Concerning the disadvantages: <br></strong>
  • Poorer reputation for safety
  • Trouble with certification in developed countries
  • Lack of R&D strength <br>

  👉 Here, the list is not exhaustive.
',
  skills: 'Business sense & culture',
  keywords: ['R&D', 'state', 'cost', 'certification', 'reputation'],
  case_id: cccc.id,
  position: 1,
  )

Question.create(
  content: 'What is the CAGR for demand in the overall market between 2013 and 2016?',
  timing: 8,
  correction: '
CAGR is ((EndingValue/Beginning Value)^(1/# of years)) - 1 <br>
👉  CAGR is frequently computed in strategy consulting to understand average growth rate.

Calculation <br>
• 260/185 = 1.405
• 1.405 ^ (1/3) = 1.12
• 1.12–1 = 0.12
• CAGR is approximately 12%
',
  skills: 'Mathematics skills',
  keywords: ['12%'],
  case_id: cccc.id,
  position: 2,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556096039/Capture_d_e%CC%81cran_2019-04-24_a%CC%80_10.25.57.png",
  )

Question.create(
  content: 'Capacity, in term of number of jets, of players : 100 jets per year for Bombardier, 90 jets per year for Embraer, 60 jets per year for R and 100 jets per year for C.<br>

  What is the expected cost per plane for each manufacturer in 2014?
  ',
  timing: 8,
  correction: '
  We will start by calculating total costs for each manufacturer in 2014, taking into account fixed costs are not dependent on demand level and variable costs are.<br>

  • Labor and parts are variable costs and should be allocated as a % of full capacity
  In 2014, total labor costs for Bombardier are : Demand / Capacity * Cost = 105 / 100 * 1.0 = 1.05 $Bn
  In 2014, total parts costs for Bombardier are : Demand / Capacity * Cost = 105 / 100 * 1.5 = 1.6 $Bn<br>

  • SG&A and Advertising should be fully allocated
  In 2014, total SG&A costs are 1.2 $Bn and total advertising costs are 1.3 $Bn.<br>

  Hence, total costs in 2014 for Bombardier are 5.15 $Bn.
  With the same approach, we find total costs in 2014 for Embraer are 4.05 $Bn, 2.65 $Bn for R and 2.375 $Bn for C.<br>

  Then, after dividing by the number of planes, we have:
  Cost per plane for Bombardier : 0.05 $Bn = 50 $M
  Cost per plane for Embraer : 0.05 $Bn = 50 $M
  Cost per plane for R : 0.06 $Bn = 60 $M
  Cost per plane for C : 0.1 $Bn = 100 $M',
  skills: 'Mathematics skills',
  keywords: ['50', '60', '100'],
  case_id: cccc.id,
  position: 3,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556096462/Capture_d_e%CC%81cran_2019-04-24_a%CC%80_10.58.04.png",
  )


Question.create(
  content: '
  In 2017, we have:
  Cost per plane for Bombardier : 0.05 $Bn = 50 $M
  Cost per plane for Embraer : 0.045 $Bn = 45 $M
  Cost per plane for R : 0.053 $Bn = 53 $M
  Cost per plane for C : 0.0475 $Bn = 47.5 $M <br>

  What can you interpret from the current and future cost per plane of the Chinese and Russian competitors?
  ',
  timing: 8,
  correction: '
  • Currently, the new entrants cannot compete on a cost per plane basis due to a lock of demand necessary to sufficiently amortize fixed costs
  • It may be possible that their governments are providing subsidies and tax breaks that are not being taken into account
  • By 2017, their cost per plane is much more in line with the current market conditions
',
  skills: 'Mathematics skills',
  keywords: ['fixed cost', 'amortiz'],
  case_id: cccc.id,
  position: 4,
  )

# CASE 2 ---------------------------------------------------------

cc = Case.create(
  content: 'Your client is a France based energy company. They recruit you to consider the acquisition of a publicly traded wind turbine manufacturer, EnergyCo, with manufacturing locations in Asia. <br>',
  name: 'EnergyCo',
  day: 1,
  industry: 'Oil & gas',
  position: 2
  )

Question.create(
  content: 'When advising on the potential acquisition, which pieces of information would you look to acquire/review? Where would you find these pieces of information?',
  timing: 7,
  correction: 'Here, we have three main areas of analysis :<br>

  First, company informations :<br>
  <strong> Financials</strong><br>
• Past profitability (from financial statements)<br>
• Financial health of the target (from financial statements)<br>
• Revenue and cost breakdown by product, including fixed an variable costs (may not be available but could ask market experts)<br><br>

<strong> Operations </strong><br>
• Current product range (from customers and/or target webs ite)<br>
• Target’s customer list (from target testimonials or may be public information for utility customers)<br>
• Location of target’s plants (most likely public information)<br>
• If target is sought by competitors (may not be available but prior bids may have been made public)<br><br>

Second, market informations: <br>
• Market size, growth and segmentation (from market experts)<br>
• Tariffs on exports (from government websites)<br>
• Technological specifications (from market experts) <br>
• Customer preferences (from market experts) <br>
• Competitors and their market shares (from market experts or industry reports)<br><br>

Third, deal informations : <br>
• Revenue synergies (synergies of products, of clients, etc - obtained from market experts)<br>
• Costs synergies (synergies of production, supply chain, distribution, etc.)<br>
• Price paid for the acquisition<br>
• Financial ratios after the deal (Margin, revenue, costs, Leverage, rating, NPV)<br>


  <br><br> 👉 Here, the interviewer prompt you to draw a tree. Strong candidates will structure their brainstorming in mutually exclusive and collectively exhaustive categories (MECE).
  <br>👉 In consulting firms, this process is named due diligence.
  <br>👉 Do not hesitate to take time to draw your tree.
  <br>👉 Here, it is important to not only draw the classic M&A tree, but to adapt it to this specific case.',
  skills: 'Logic and rigorous thinking',
  keywords: ['profitability', 'breakdown', 'customer', 'market size', 'barriers', 'competitors', 'synergies', 'financial ratio'],
  case_id: cc.id,
  position: 1
  )

Question.create(
  content: 'Can you walk me through the following three charts? What market is more attractive for our upcoming product, 100 KW Turbine?',
  timing: 7,
  correction: '
<strong>Analysis from exhibit 1 suggest: <br></strong>
• Output and costs are important to Asia<br>
• Aesthetics and output are important to the U.S.<br>
• Size and output are important to Europe<br>
• Durability isn’t really important to any market<br>

<strong>Analysis from exhibit 2 suggest: <br></strong>
• Based on what we know about preferences (Chart 1) and ranking on key attributes against competitors (Chart 2), our company turbine is suitable for both the U.S. and Europe markets<br>
• It is not comparable to competitors in the Asian market<br>
• This could mean that there are competitors in Asia which are not yet in Europe. These competitors could threaten our company if they enter<br>

<strong>Analysis from exhibit 3 suggest: <br></strong>
• Next year incremental demand in Asia : 4,5 * 1,02 = 4,59<br>
• Next year incremental demand in U.S. : 5,0 * 1,09 = 5,45<br>
• Next year incremental demand in Europe : 6,0 * 0,87 = 5,22<br>
• U.S. and Europe are the biggest markets currently<br>
• U.S. market becomes biggest next year due to growth rates<br>
<br><br> 👉 Here, You have to be very rigorous on the way you analyze each chart, and make sure you take the most out of the data given by the interviewer.
',
  skills: 'Mathematics skills',
  keywords: ['US', 'Europe', '4,59', '5,45', '5,22'],
  case_id: cc.id,
  position: 2,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556186127/Capture_d_e%CC%81cran_2019-04-25_a%CC%80_11.53.07.png",
  )

Question.create(
  content: 'How many units would you predict our company will sell in each of the three markets?',
  timing: 3,
  correction: '
  We will multiply the number of turbines needed in each market next year by the projected market share in each market.<br>
👉 Always explain the approach you will take. Reasoning is often more important than figures !<br>

If we do not have market share information, we can deduce it from a combination of Exhibits 1 and 2. <br><br>
First, for Asia: <br>
• Demand (GW) : 4,5 (Exhibit 2) <br>
• Number of turbines in the market this year: 45 000 (knowing that 1 GW = 1000 KW and that each turbine has 100 KW)<br>
• Market growth rate: 2% (Exhibit 2)<br>
• Number of turbines in the market next year: 45 900 (i.e. 45 000 * (1 + 2%))<br>
• Assumed market share: 10% <br>
• Then, Expected EnerForce turbine sales next year: 4 590<br>

Using the same methodology, we find 27 250 fot the U.S. and 20 880 for Europe',
  skills: 'Mathematics skills',
  keywords: ['4590', '27250', '20880'],
  case_id: cc.id,
  position: 3,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556186127/Capture_d_e%CC%81cran_2019-04-25_a%CC%80_11.53.07.png",
  )

# CASE 3 ---------------------------------------------------------

ccc = Case.create(
  content: 'Our client is a pharmaceutical company that has developed a remedy for female balding. The drug has cleared a lengthy and delayed testing process. The drug will be off patent in five years. Before initiating drug production, the client wants us to determine whether the drug will be profitable and whether or not to go ahead with production.',
  name: 'Drug Profitability',
  day: 1,
  industry: 'Pharmaceuticals',
  position: 3
  )

Question.create(
  content: 'Do you have any clarifying questions? List here all clarifying questions you think about.',
  timing: 7,
  correction: '
  Three types of clarifying questions: <br>
👉 Always propose a framework. <br>


  1. Market<br>
  - What is the market size? What is our market share?   <br>
  - When do women start balding? Are they all concerned? <br>
👉 For clarifying, always adapt it to the precise context. <br>

Answers: <br>
• Post-patent expiry client’s share will shrink to 20% of share pre-patent expiry<br>
• Average woman starts balding at age 40 and between the ages of 30-40 the drug
has some preventative benefits<br>
• Starting at 60,even the most effective drugs cannot remedy female balding
• No information on current market size<br>

  2. Product <br>
  - Are there existing substitutes? <br>
  - Who is paying for the product? insurance plan? the patient? healthcare security? <br>
  - What are the pros and the cons of our product vs. the substitute ? <br><br>

Answers: <br>
• One comparable substitute currently exists that will divide market share equally
with client once client’s drug is in market<br>
• Assume that the price of the product is comparable to the substitute at
$2,000/treatment, and that one treatment is needed per year<br>
• Assume that our drug and current comparable substitute have no comparative
advantage over the other (both will charge the same price and split the market)<br>
• Payment for the product is not covered by most health insurance plans<br><br>

  3. Company <br>
  - What are the main costs areas of your product?

Answers: <br>
• $ spent on testing: $8B.
👉 The candidate should mention here that $ spent on testing or R&D are considered as sunk cost (a cost that has already been incurred and cannot be recovered). Very important notion to take business decisions. <br>
• Production: $1B/year<br>
• Marketing and sales efforts: $2.5B/year <br>
• Distribution: $800M/year <br>

👉 To think about clarifying questions, think about the data you need to answer the overall questions. <br>
For instance, here, I want to know if my company will be profitable: <br>
- I need to know my market (hypothesis: If my market is growing, my company should be growing as well in the future). <br>
- I need to know my product (hypothesis: If my product is good compared to competition, customers should continue buying it)<br>
- I need to know my company (hypothesis: My company will generate profit only if it is well structured enough)',
  skills: 'Business sense & culture',
  keywords: ['costs', 'substitute', 'insurance', 'healthcare', 'market size', 'market share'],
  case_id: ccc.id,
  position: 1
  )

Question.create(
  content: 'Can you please do for us a market sizing.',
  timing: 7,
  correction: '
• U.S. population ~320M, while females make up roughly 50% or 160M of this population <br>
• Not all women will have the same interest for our product. With a life expectancy of 80 years, let’s say that
women aged 40-80 are largely at risk of balding<br>
• 60% of women between 40 and 60 (24M) and 0% of women between 60 and 80 years of age are
interested in our drug<br>
• Additionally assume that 40% of women between 30 and 40 are also interested in the drug for prevention (8M)<br>
• Assumption: each 10 year age bracket is evenly distributed<br><br>

• 32M seems a little high,this is likely because the estimate of the percantage interested should be revised down. Let’s say that 20% of women aged 30-40 (4M) and 30% of women aged 40-60 are interested (12M)<br>
• This would mean that a total of 16 M women are interested in the product<br><br>
👉 Very impressive when candidate show self-criticism. Always ask yourself if the results you propose make sense, especially in market sizings.

• With a price tag of $2,000/treatment, not all of those that are interested in the drug will be able to buy it<br>
• I am going to assume that 60% of the population is middle class while the remainder is evenly distributed<br>
• In terms of affordability, I will assume that 100% of the upper bracket can buy the drug,30% of the middle
bracket, and 0% of the lower bracket<br><br>
👉 Try to use all the data given. Here, price impact ability to pay.

>> Then, out of the 16 M women interested : <br>
• 3M are lower class, with 0% having an ability to pay : 0M <br>
• 10M are middle class, with  30% having an ability to pay : 3M<br>
• 3M are upper class, with 100% having an ability to pay :  3M<br>
The total is 6M market <br><br>

• Given that we will split this market evenly with the comparable substitute, the target population is about 3M<br>
• Expected annual revenue is therefore about $6B pre-patent expiry<br>
• Given that the market share will shrink to 20% after patent expiry, our client will earn roughly $1.2B/year atthe
current price post-expiry<br><br>
• Since testing is a sunk cost,total yearly cost is about $4.3B. Given these assumptions, the drug is only profitable
pre-patent expiry (assuming constant market sizing and costs)
',
  skills: 'Mathematics skills',
  keywords: ['320', 'assumption', 'insurance', 'healthcare', 'market size', 'market share', 'pre-patent'],
  case_id: ccc.id,
  position: 2
  )

Question.create(
  content: 'What are your recommendations? the potential risks associated? the next steps?',
  timing: 6,
  correction: '
<strong> Recommendations: <br></strong>
• Given our assumptions, client should pursue drug production for next five years if the market size allows it to be profitable
• Drug will become less profitable after patent expiry and decision on whether drug production should continue will be determined by the market size and profitability estimation<br>
👉 When you give recommendations, be straight to the point.

<strong> Risks: <br></strong>
• Estimated marketing costs may not be adequate to educate customers regarding the existence of this product
• Analysis needs to factor in the competitive response of the comparable product that exists in market today, particularly if the product has a lower cost structure, and can therefore be sold at a lower price
• If the competitor’s product goes off-patent in under 5 years, the client’s drug will likely lose market share or be forced to lower the price
• Given that the market appears very attractive and the need is relatively unmet (only 2 products), other products might enter the market<br>

<strong> Next steps: <br></strong>
• The client can continue production after patent expiry if they can lower price to gain market share profitably
• Maybe worth while to look at international markets where testing in the U.S. would be readily accepted, or other U.S. market segments (e.g., men, hair regrowth)
',
  skills: 'Business sense & culture',
  keywords: ['patent', 'compet', 'marketing', 'sunk'],
  case_id: ccc.id,
  position: 3
  )

Question.create(
  content: '
Based on the results from clinical trials, the client received approval for the product in two different formulations:<br>
• Formulation 1 : Once-daily application / Less effective / Lowerprice
• Formulation 2 : Twice-daily application / Most effective / Higher price <br>
The client conducted market research among customers of different ages. Using the results of this research, formulate a market entry strategy and recommend which formulation the client should launch. Include risks analysis and next steps. ',
  timing: 8,
  correction: '
  <strong> Exhibit analysis: <br></strong>
• The older demographic form a larger potential market for formulation 1
• The older demographic has a smaller lifetime value for formulation 1
• Conversely, younger consumers may use the product over a longer period of time resulting in greater lifetime value for formulation 2
• The younger demographic forms a smaller potential market for formulation 2

<strong> Recommendations: <br></strong>
• Given that primary market for this product will be women aged 40+, the client should produce formulation 1
• The product branding strategy should focus on once-a-day convenience, and be marketed primarily to women aged 40-50
• The client should not pursue both formulations at launch, as this might confuse branding to customers and divide limited marketing resources <br>

<strong> Risks: <br></strong>
• There is a large difference in price- sensitivity between ages 40-50 and 50- 60
• This strategy may cause the client to lose out on a segment of the population which is younger and would be willing to pay more for better results<br>

<strong> Next steps: <br></strong>
• For launch, need to look into if the product should be launched in certain geographies or markets first (‘soft launch’)
• Start working on marketing plans and training the sales-force
• Post-launch, once the brand has a solid base, the client may want to consider launching the second formulation as a premium alternative, offered at a mark-upra
',
  skills: 'Business sense & culture',
  keywords: ['patent', 'compet', 'marketing', 'sunk'],
  case_id: ccc.id,
  position: 4,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556032755/Capture_d_e%CC%81cran_2019-04-23_a%CC%80_17.15.17.png",
  )


# CASE 4 ---------------------------------------------------------

ccccc = Case.create(
  content: "
  Our client is an online dating startup named Wanna-Date, which specializes in matching graduate students with other graduate students. Grad-U-Date has finished building their website and are now looking for your assistance in deciding on a strategy to monetize their website.
  What is Wanna-Date’s best method of monetization? How profitable will the company be?
",
  name: "Wanna-Date",
  day: 1,
  industry: 'Technology, Media & Telecommunication',
  position: 4,
)

Question.create(
  content: 'Are there any additional information you would like to obtain? List here all clarifying questions you think about.',
  timing: 6,
  correction: '
  We would like to obtain additional information overt three main areas
  <strong>  1. Market </strong>
  What is our market geography?
  What is our market size? Or do we have any information concerning our market?
  Is there any competition? <br>

  <strong> 2. Product </strong>
  Is our product already available? <br>

  <strong> 3. Company </strong>
  Is there a revenue model already being used? <br>

  👉 Always use a structure (framework), even to ask your questions. Here are the answers below, make sure to take notes :

  <strong>  1. Market </strong>
  • Gender ratio of users will be a 50/50
  • MBA, law and medical students are considered professional students
  • Wanna-Date will only operate within the United States
  • There are 4 major competitors and hundreds of small competitors
  • There has been a significant increase in the number of free dating phone apps starting in late 2012
  • There are currently no other online dating services that focuses only on graduate students<br>

  <strong> 2. Product </strong>
  • The website has already been built, and is considered a sunk cost<br>

  <strong> 3. Company </strong>
  • We only know that only one revenue model can be used
',
  skills: 'Logic and rigorous thinking',
  keywords: ['market', 'product', 'company'],
  case_id: ccccc.id,
  position: 1,
  )

Question.create(
  content: 'What types of monetization models could Wanna-Date use? ',
  timing: 4,
  correction: '
• Monthly Fee
• Advertising
• Pay for Premium Account
• Profile Consulting Services
• Pay per Message

  👉 This is a creativity question. You should give at least three solutions.
',
  skills: 'Business sense & culture',
  keywords: ['fee', 'advertise', 'premium', 'per message'],
  case_id: ccccc.id,
  position: 2,
  )

Question.create(
  content: 'Wanna-Date is considering limiting the site to only MBA students what issues might there be with an MBA only dating website? ',
  timing: 4,
  correction: '
• There are more men than women at most MBA programs, there will be a significant gender skew
• It would unnecessarily limit the size of the market
• Most MBA students tend to be older than other students, so many are already married or in a committed relationship

  👉 This is also a creativity question. You should give at least three issues.
',
  skills: 'Business sense & culture',
  keywords: ['men', 'women', 'size', 'old'],
  case_id: ccccc.id,
  position: 3,
  )

Question.create(
  content: 'What is the potential market size for Wanna-Date (not limited to MBA) ? ',
  timing: 4,
  correction: '
For each segment, we will compute the total number of student for a given year by multiplying the number of years for the degree by the number of student by year.
• Medical = 450 x 4 = 1,800
• MBA=300x2=600
• Law=200x3=600
• Non-Professional = 1,000 x 3 = 3,000
• Grad Students per University =1,800+600+600+3,000 =6,000
• Market Size = 6,000 * 1,000 = 6,000,000

  👉 The key is not to find the solutions, but to explain well, orally, how you are reasoning.
',
  skills: 'Mathematics skills',
  keywords: ['6000000'],
  case_id: ccccc.id,
  position: 4,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556111363/Capture_d_e%CC%81cran_2019-04-24_a%CC%80_15.07.28.png",
  )

Question.create(
  content: 'Calculate the profit of each revenue model. Fixed costs are $10,000,000 a year and variable operating cost is $1 per member per year. Which revenue model would you recommend? ',
  timing: 8,
  correction: '
<strong>Monthly Fee:</strong>
Customers = 6,000,000 x 5% = 300,000 users
Revenue = 300,000 x $10 x 12 = $36 M
Profit = $36,000,000 - $10,000,000 – 300,000 x $1 = $25.7 M <br>

<strong>Premium Account:</strong>
Customers = 6,000,000 x 30% = 1,800,000 users
Revenue = 1,800,000 x (50% x 40% + 50% x 25%) x $5 x 12 = $35.1 M
Profit = $35,100,000 - $10,000,000 – 1,800,000 x $1 = $23.3 M <br>

<strong>Advertising:</strong>
Customers = 6,000,000 x 40% = 2,400,000 users
Revenue = 2,400,000 x ((1000/1950) x $0.75 + (950/1950) x $1.25) x 12 ~ $28.6 M
Profit = $28,600,000 - $10,000,000 – 2,400,000 x $1 = $16.2 M <br>

The solution with the highest potential profit is Monthly Fee. I recommend to go for it.
👉 The key is not to find the solutions, but to explain well, orally, how you are reasoning.
',
  skills: 'Mathematics skills',
  keywords: ['25', '23', '16', 'monthly fee'],
  case_id: ccccc.id,
  position: 5,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556111845/Capture_d_e%CC%81cran_2019-04-24_a%CC%80_15.15.56.png",
  )

Question.create(
  content: 'What can you conclude from this graph?',
  timing: 5,
  correction: '
  👉 This is an open question. Do not have only a descriptive approach, you should provide the interviewer with insights. This is the time to show your analytics mindset!

First, the percentage of users paying monthly fees dropped quickly in 2013. This can be due to several reasons:
• Increased competition in online dating market
• Quality free dating apps released that are more convenient
• Tinder app launched in late 2012 <br>

This also leads me to reconsider my recommendation:
• I switch recommendation from monthly fee to premium account
• The portion of customers willing to pay a fee and the average fee paid have been rapidly decreasing since 2008
• It is unlikely that current profitability will be maintained in the future <br>

👉 In strategy consulting, additional data should comfort you in your recommendation. But if it is not the case, do not hesitate to change your recommendation and make your client know why. The key is not the recommendation itself, but the reasoning behind.
',
  skills: 'Logic and rigorous thinking',
  keywords: ['25', '23', '16'],
  case_id: ccccc.id,
  position: 6,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1556123132/Capture_d_e%CC%81cran_2019-04-24_a%CC%80_18.24.04.png",
  )


Question.create(
  content: 'Conclude please.',
  timing: 5,
  correction: '
  👉 For your conclusions, you can adopt the framework :
  <strong>1. Recommendations
  2. Risks
  3. Next steps</strong> <br>

<strong> 1. Recommendations </strong>
• Wanna-Date should adopt the premium account revenue model
• Monthly fee revenue model should not be selected because this segment is rapidly disappearing due to competitive pressure
• The premium account model is expected to bring in $23.3M in annual profit <br>

<strong> 2. Risks </strong>
• Premium account could be seeing a similar decrease in share as fee
• Graduate students may not be able to afford to buy premium accounts
• Grad students may not want to limit their dating pool to grad students

<strong> 3. Next steps </strong>
• Explore building an app
• Consider expanding into new markets such as undergraduates or other countries
• Offer additional services: profile consulting services and date deals
• Add micro-transactions such as increasing the traffic to your profile
• Incorporate social media
• Can premium account and ads work together ...?
',
  skills: 'Logic and rigorous thinking',
  keywords: ['25', '23', '16'],
  case_id: ccccc.id,
  position: 7,
  )


# CASE 5 ---------------------------------------------------------

a = Case.create(
  content: "
  Your client is a private equity firm that has recently purchased a plastic materials manufacturer that makes products such as plastic soda bottles.
  The client is looking to cash out of their investment within 5 years and wants you to help improve the profitability of the manufacturer.
",
  name: "Acquiring Soda Firm",
  day: 1,
  industry: 'Private Equity',
  position: 5,
)


Question.create(
  content: 'Are there any additional information you would like to obtain? List here all clarifying questions you think about.',
  timing: 6,
  correction: '
  We would like to obtain additional information overt three main areas
  <strong>  1. Market </strong>
  What is our market size? growth? market share? <br>

  <strong> 2. Product </strong>
  What types of products are we manufacturing?
  What are their characteristics, especially compared to competitors? <br>

  <strong> 3. Company </strong>
  How do our operations look like?
  How many plants we have and where are they located?
  What are each plants responsible for?
  What are our revenue and costs? Do we have a breakdown? <br>

  👉 Always use a structure (framework), even to ask your questions. Here are the answers below, make sure to take notes :

  <strong>  1. Market </strong>
  • Bottling market is growing at 10% a year in North America
  • The firm has 30% share of the bottling market
  • The firm’s bottling sales have been growing at 15% a year, projected 15% growth for each of the next two
years<br>

  <strong> 2. Product </strong>
  • The firm manufactures two types of products - bottles and non-bottling goods
  • The bottles are delivered locally to the clients,large bottlers such as Coke or Pepsi
  • Non-bottling products (such as advertising displays for stores) are delivered directly to the establishments that will use them, such as gas stations
  • Bottles are made to spec whereas the non-bottling goods are not
  • Firm has higher quality products and manufactures at lower costs due to more efficient machinery
  <br>

  <strong> 3. Company </strong>
  • The firm has two plants: One plant in south-east US that manufactures only bottles with capacity of 1.5B bottles and another plant in Canada that can produce both bottles and non-bottling materials with capacity of 500M products. Currently producing non-bottling
  • No down time,plants are fully utilized
  • Plants are using new,highly efficient machinery
  • Bottles sell for 5 cents each
  • Non-Bottling generates $20M in revenues
  • Bottles costs: COGS (plastic) – 2 cents per bottle ; Machinery – 1 cent per bottle ; Labor - 0.5 cent per bottle
  • Non-bottling has total variable costs of $18M
  • SG&A across the entire firm is $20M
',
  skills: 'Logic and rigorous thinking',
  keywords: ['market', 'product', 'company'],
  case_id: a.id,
  position: 1,
  )

Question.create(
  content: 'How do the two products our company manufactures compare?',
  timing: 6,
  correction: '
  We will start first by comparing the total variable costs for the bottling and non-bottling products, then the profits and last the profit margins.
  👉 Always explain clearly your amproach. <br>

  <strong> 1. Total variable costs </strong> <br>

  For the bottling product,
  • Manufacturing capacity : 1.5 B
  • Revenues : 5 cents / bottle
  • COGS : 2 cents / bottle
  • Machinery : 1 cent / bottle
  • Labor : 0.5 cents / bottle
  Hence, total variable costs are 3.5 cents per bottle. <br>

  Total variable for non-bottling is 18 $M. <br>

  <strong> 2. Total profit </strong> <br>

  Bottling profit = (manufacturing capacity) x ((total revenues) – (total variable cost)) = 22.5 $M <br>

  Non-bottling profit = (total revenues – total costs) = 2 $M <br>

  <strong> 3. Profit margin </strong> <br>

  The profit margin is 30% for bottling and 10% for non-bottling.
  The bottling is segment is not only more interesting in term of revenue but also in term of margin.
  ',
  skills: 'Mathematics skills',
  keywords: ['30%', '10%', '3.5', '22.5'],
  case_id: a.id,
  position: 2,
  )

Question.create(
  content: 'Should the firm convert the non-bottling production to bottling in its Canada plant? (The cost of conversion is $3M)',
  timing: 6,
  correction: '
  To decide if the firm should convert its plant, we should compute the margin it would generate after conversion and comparing it to current margin. <br>
  👉 As always, we specify our reasoning.

  Based on previous question, the current profit in Canada is 2 $M with a 10% profit margin.
  The number of additional bottles is 0.5 B (stated in the beginning that the Canada plant can produce both bottles and non-bottling materials with capacity of 500M products for both).
  The profit per bottle is 1.5 cents.
  👉 We remind the data we obtained previously in the case and that we will use for this question. <br>

  Hence, the profit from conversion is 7.5 $M. <br>

  The conversion could potentially add $5.5M in annual profit, if the firm can sell the entire capacity. Breakeven is in the 1st year.
  👉 Important here to conclude with a clear recommendation. Consultants are C-level advisors and must be straight to the point.
  👉 Here, we have to decide by comparing the profit generate by both options annually, and then taking into account switching investment.
  ',
  skills: 'Logic and rigorous thinking',
  keywords: ['7.5', '5.5', 'breakeven'],
  case_id: a.id,
  position: 3,
  )

Question.create(
  content: 'What are some non-financial risks to consider before converting non-bottling production to bottling in its Canada plant?',
  timing: 6,
  correction: '
  👉 As always, we use a clear, structured framework.

  <strong>• Implementation timeframe:</strong>
  • How much time will it take?
  • Do we need to take a phased approach? <br>

  <strong>• Distribution Channels:</strong>
  • Will the current distribution network need to change to reach customers?
  • How will distribution centers scale up given the growth projections? <br>

  <strong>• Costs:</strong>
  • Will there be any additional costs to consider besides the one time conversion cost?
  • Will there be any changes in variable costs like Labor?
  • Can we re-negotiate supplier contracts to reduce COGS given higher volumes?<br>
  • Will the client need to hire new workers in the Canada factory or train current workers?<br>
  ',
  skills: 'Business sense & culture',
  keywords: ['time', 'clients', 'distribution'],
  case_id: a.id,
  position: 4,
  )

Question.create(
  content: 'How much additional market share should the firm gain in the next 2 years to accompagny the growth of its sales? ',
  timing: 6,
  correction: '
  👉 As always, we remind our approach and the data from previous questions we will be using here.
  We will start by calculating current market size. We will then compute market size in 2years and our sales in 2years and deduce our market share.

  From previous questions, we can deduce bottling market size.
  • Number of bottles currently manufactured : 1.5B
  • Firm’s current market share : 30% (said in the beginning)
  • Hence, bottling market size : 5B bottles <br>

  We also know bottling market is growing at 10% per year in North America and the firm’s sales are growing at 15% per year.
  Then, in two years, firms sales will be 1.98 Bn ( 1.5 * (1 + 15%)^2) and market size will be 6.05 Bn ( 5.0 * (1 + 10%)^2 ) <br>

  Then, in 2 years, our market share should be 33% (1.98 / 6.05).

  Our conclusion is that gaining ~3% market share in 2 years seams feasible. The firm looks able to accompagny the growth of its sales.

  ',
  skills: 'Mathematics skills',
  keywords: ['3%', '33%'],
  case_id: a.id,
  position: 5,
  )

Question.create(
  content: 'Conclude please.',
  timing: 5,
  correction: '
  👉 For your conclusions, you can adopt the framework :
  <strong>1. Recommendations
  2. Risks
  3. Next steps</strong> <br>

<strong> 1. Recommendations </strong>
• The manufacturer should convert the non-bottling manufacturing in Canada to bottling, as it offers better margins, assuming that the firm can maintain sales growth
• The additional capacity is needed to match next year’s anticipated demand
• If market and sales grow according to projections, the firm will run out of capacity at the end of the second year <br>

<strong> 2. Risks </strong>
• The market might not continue growing at the same rate or may enter a period of decline
• It may be difficult for the company to continue to grow faster than the market
• The non-bottling market and firm’s sales might be growing at a faster rate (no information was given) and therefore capital may be better spend on that part of the business

<strong> 3. Next steps </strong>
•  Client should explore what needs to be done to convert the non-bottling manufacturing to bottling (e.g. retraining, recruitment, purchasing new machinery etc.)
• Consider adding another plant or expanding existing plants to keep pace with the sales growth. Expansion plans
should fit within the PE firm’s goal of exiting within 5 years
• Renting out additional capacity from other plants may be a feasible option which ties up less capital and allows
an easier reversal of the strategy if market trends sour
• Increase prices due to higher quality products may be possible. Should go for a demand elasticity to price analysis as increase in price will make our company lose market share.
',
  skills: 'Logic and rigorous thinking',
  keywords: ['25', '23', '16'],
  case_id: a.id,
  position: 6,
  )
# CASE 6 ---------------------------------------------------------

c = Case.create(
  content: "Our client is the Metropolitan Symphony Orchestra (“MSO”), a non-profit orchestra based in a major U.S. city. The MSO is a critically acclaimed performing arts organization and is regarded as one of the top twenty orchestras in North America.<br><br>


  Despite its artistic reputation, the orchestra has experienced a number of financial difficulties during its 80-year history. The recent past has proven no different, as the MSO has seen a steady drop in revenues over the last 3 years. This revenue decline has led to budget deficits that the orchestra has had to finance through borrowing.<br><br>

  Like many non-profit organizations, the MSO’s revenues can be split into three main sources. The first is earned income, which primarily takes the form of ticket revenue from both single ticket sales and discounted multi-concert subscriptions. The second is annual donations by individuals, companies, government bodies, and charitable foundations. The final source is the symphony’s endowment, a pool of professionally managed donated funds of which the MSO receives a small fixed percentage or “draw” each year. <br><br>

  Six months ago, the MSO board welcomed a new President, Kevin Stevens, to lead the organization. Mr. Stevens has called on McKinsey to help his management team address the declining revenue problem. If revenues do not eventually improve, the MSO will likely exhaust its credit and have to drastically scale back in size – or cease performing altogether.<br><br>
  <strong> What strategies should the MSO pursue to improve its revenue growth over the next 5 years? </strong>",
  name: "Metropolitan Symphony",
  day: 1,
  industry: 'Public sector',
  position: 6,
)

Question.create(
  content: 'Consider the MSO’s three core revenue areas: earned income, annual giving, and endowment draw. <br>

  For each, what do you believe are the main sources or drivers of revenue?',
  timing: 5,
  correction: 'When thinking about <strong> earned income </strong>levers, I would want to consider <strong>ticket revenue</strong> (number of customers or concertgoers, tickets sold per concert, number of concerts per season, price paid per ticket), special events (contracted performances) and merchandise revenue (souvenirs, recordings) from the gift shop
<br>When thinking about <strong>annual giving</strong>, I would want to think about number of donors (directly correlated with number of customers), amount contributed per donor (change the mix of donors or convince existing donors to give more).

<br>When thinking about <strong>endowment</strong> levers, I would want to think about the size of the endowment base (donations to increase endowment base, returns from invested funds) and the annual endowment draw percentage.

<br> 👉 <strong>Hypotesis driven thinking</strong> is key in consulting projects. You will be faced with issues and will have to identify drivers potentially causing this issues.',
  skills: 'Logic and rigorous thinking',
  keywords: ['number of clients', 'number of customers', 'number of concert', 'number of donors'],
  case_id: c.id,
  position: 1,
  )

Question.create(
  content: 'Earned income has historically been the MSO’s single biggest revenue source. However, earned income has steadily declined in recent years, which has contributed heavily to the drop in total revenues. What hypothetical opportunities could you explore to reverse this trend?',
  timing: 5,
  correction: 'I have identified 5 potential solutions: <br>
  - <strong>Increase ticket price: </strong> MSO could be under-pricing or not taking advantage of price discrimination opportunities<br>
- <strong>Increase number of performances: </strong> There may be room to expand the symphony season, play in other locales, and/or have more performances of each program.<br>
- <strong>Change offering: </strong> Possibilities include changing the mix of concerts (e.g., more mainstream classical and popular music programming) or the enhancing the overall symphony product (e.g., concert hall appearance and acoustics, pre show activities, more flexible ticket packages)
<br><strong>Improve promotion: </strong> There may be a need to change core messages, media choices, or frequency of promotion
<br><strong>Improve sales strategy: </strong> Alternatives include adjusting sales channel mix (e.g., telemarketing, internet, direct mail); sales force composition, incentives, and/or the structure of the marketing organization
Target new customer segments. MSO may be ignoring or under-serving potentially valuable customer segments.

<br><br> 👉 In strategy consulting, creative thinking may help you differentiate yourself.
  <br>Being creative does not mean having a messy reasoning. You still have to be creative within a well structured reasoning.',
  skills: 'Logic and rigorous thinking',
  keywords: ['increase price', 'increase volume', 'offering', 'promotion', 'marketing', 'mix', 'customer segment'],
  case_id: c.id,
  position: 2,
  )

Question.create(
  content: 'You meet with the MSO’s sales and marketing directors to discuss the orchestra’s declining earned income.<br><br> They show you the following ticket sales results from the past 3 seasons. They also tell you that during this three-year period, ticket pricing has remained essentially the same and that the MSO’s marketing strategy of focusing primarily on subscribers and subscriber renewals has not changed.<br>
What conclusions can you draw from these data? What might explain these results?
',
  timing: 7,
  correction: '<strong>Overall observations:</strong><br>
- Overall earned income is down because of a decline in subscription sales, with full-season subscription sales being particularly hard hit<br>
- Total subscription revenues are down, but not because subscriber renewal rates are falling<br>
- Individual ticket sales are up, which partially—but not fully— offsets the decline in subscription revenues<br>
***<br>
<strong>Possible explanations for the results</strong> (Remember that pricing and marketing strategy have not changed during the past 3 years):<br>
- Current subscribers are switching to cheaper seats. People who purchased expensive seats the year prior are renewing, but choosing to buy cheaper seats this year<br>
- Subscribers may be migrating to shorter commitment options. The sharp decline in full-season subscriptions, relatively small decline in half-season subscriptions, and the increase in single ticket revenue suggest that customers are shifting away from up-front, higher-commitment purchases.<br>
***<br>
<strong>A very good answer might also include:</strong>
- The number of new subscribers is declining. While the MSO has managed to maintain a steady rate of subscription renewals, the number of new subscribers is shrinking:<br>
> New subscribers tend to have lower renewal rates than long-time subscribers, so fewer new subscribers may explain why the MSO’s overall renewal rates have not suffered<br>
- The above hypotheses could be due to one or more underlying causes<br>
> Weak local economy and less disposable income<br>
> General shift in customer preferences away from full-season subscriptions and towards shorter-term subscriptions and single tickets<br>
> Decrease in size of MSO’s historic key target customer segments (e.g., older, high-income individuals)<br>
> MSO product offering has become weaker relative to other performing arts or entertainment options.<br>',
  skills: 'Business sense & culture',
  keywords: ['increase price', 'offering', 'promotion', 'mix', 'customer segment'],
  case_id: c.id,
  position: 3,
  photo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1555311043/Capture_d_e%CC%81cran_2019-04-15_a%CC%80_08.49.25.png"
  )

Question.create(
  content: 'Your team believes that, despite a gradual market shift towards single ticket purchases, maintaining a core subscriber base remains essential in the MSO’s near to mid-term survival. Specifically, you believe the MSO needs to increase its pipeline of new subscribers and—perhaps more importantly—find ways of retaining these customers over time.<br><br>
Although new subscribers tend to have relatively low renewal rates and high acquisition costs, once subscribers enter their third consecutive season, they tend to remain loyal to the symphony thereafter by consistently renewing their subscription and making annual donations.<br><br>
Thus, the “lifetime value” (e.g., total discounted value of all future revenue from a customer) for such subscribers is quite high.<br><br>
You’ve been asked to use the current season’s subscriber data to determine the average lifetime value of a brand new subscriber. (For simplicity, fous on revenue and ignore customer acquisition and retention costs.) You have already estimated the following:<br>
Average revenue from a new subscriber in Year 1 = $300 Average discounted revenue from a subscriber in Year 2 = $400<br>
Total average discounted revenue for a subscriber from Year 3 onward = $2900<br>
Number of new subscribers last year = 2,800<br>
Number of second-year subscribers last year = 1,200.<br><br>
When you find that you need additional information or clarification of the information you have received, you should not hesitate to ask the interviewer. In this case, when asked, the interviewer would provide
you with the following data:<br>
Renewal rate after Year 1 = 40%<br>
Renewal rate after Year 2 = 50%<br>
Renewal rates for Years 3+ are factored into the revenue numbers above and can therefore be ignored (or we can just assume they are near 100%).<br>',
  timing: 5,
  correction: '
I would calculate the expected revenue per subscriber each year and then calculate the total lifetime revenue per subscriber<br>
Expected revenue per subscriber in Year 1 = $300<br>
  6
Expected revenue per subscriber in Year 2 = 0.4 * $400 = $160<br>
Expected revenue per subscriber for Years 3+ = 0.4 * 0.5 * $2,900 = $580 Thus, expected lifetime revenue per new subscriber = ($300 + $160 + $580) = $1040<br>',
  skills: 'Mathematics skills',
  keywords: ['1040'],
  case_id: c.id,
  position: 4,
  )

Question.create(
  content: 'Team analysis suggests that new subscribers at more financially successful symphonies have an expected lifetime value of approximately $1300. How much would the first-year renewal rate have to increase to raise the expected lifetime value of a new MSO subscriber to $1300? (Assume second- year renewal rate does not change.)',
  timing: 8,
  correction: '
I would calculate the renewal rate using the following:<br>
If X = required renewal rate<br>
$1300= $300+(X*$400)+(X*0.5*$290, X=54%(rounded)
Current renewal rate = 40%
Required improvement in renewal rate = 54 - 40% = 14%<br>
The first-year renewal rate must increase by approximately 14 percentage points.<br>',
  skills: 'Mathematics skills',
  keywords: ['14%'],
  case_id: c.id,
  position: 5,
  )


Question.create(
  content: 'Though earned income appears to represent the best area for improvement opportunity, Mr. Stevens also wonders if the organization could improve its performance with respect to annual giving (e.g., donations from individuals, corporations, government, and charitable foundations). What methods could you employ to test whether there are strong revenue improvement opportunities in annual giving?<br>',
  timing: 5,
  correction: '
A good answer might include the following:<br><br>
<strong>Benchmarking</strong><br>
• Benchmark MSO’s annual giving performance against those of peer
orchestras as well as other local non-profit organizations. Relevant comparisons might include:<br>
> Level of donations per capita within the metro area<br>
> Mix of donation sources (e.g., percentage from individuals vs. percentage from
corporations vs. percentage from foundations) <br><br>
<strong>Market share analyses</strong><br>
• Estimate the size of donor market and the MSO’s penetration of that market. Example analyses include:<br>
> MSO donations as  percentage of estimated total giving potential (from both local and national sources) by donor type<br>
> percentage of wealthiest 50/100/500 local corporations/ foundations / people currently not giving to MSO<br>
> Inventory of local, state, and/or national government funding sources not being utilized by MSO.<br><br>
<strong>Historical trend analyses</strong><br>
• Look for declines or flat-lining in each source of giving, particularly if they are
being masked/offset by increases/decreases in other sources of giving<br>
• Look for recent losses of key donors; changes in donor retention or attrition
rates<br>',
  skills: 'Business sense & culture',
  keywords: ['benchmarking', 'historical trends analysis', 'market share'],
  case_id: c.id,
  position: 6,
  )

Question.create(
  content: 'Taking into account what you’ve learned thus far as well as your own additional hypotheses, what initiatives would you recommend to Mr. Stevens at this point? What would be the primary challenges (both strategic and implementation) related to your recommendations?',
  timing: 10,
  correction: '<span style="text-decoration:underline;"><strong> Potential recommendations:</strong></span> <br>
<strong> Improve subscriber renewal rates (especially first-year subscribers)</strong> <br>
• MSO should focus improving subscriber retention rates and usher new subscribers into their 3rd year (when they become “locked-in” and extremely loyal). Focused market research efforts to understand why new subscribers are not renewing should be undertaken, and appropriate adjustments (product, advertising, channel, pricing) should be made
Explore ways to cost effectively increase the number of new subscribers<br>
• Given that the MSO’s audience is aging, finding ways to appeal new—and perhaps younger—market segments is a bold but potentially winning strategy. However, new customers carry high acquisition costs, so this might be a second- priority initiative (e.g., one that is pursued after renewal rates improve).<br>
<br><br><span style="text-decoration:underline;">Challenges:</span>
<br> <strong>Cannibalization</strong>
<br>• Ticket sales. Encouraging sales of single ticket and shorter (i.e., lower-
priced) subscription packages may further exacerbate the decline in full- season subscription revenue and hurt—rather than help—the top line. (It is essential to determine whether the people in the market for shorter- commitment tickets are the largely the same as those who would buy longer subscriptions. If they are, then MSO needs to be more concerned with cannibalization)
<br>• Donations. MSO would likely be approaching the same set of donors for both the endowment campaign and its annual giving campaigns. Since many donors would substitute annual giving for endowment giving, MSO needs to account for the likely decline in its near-term giving revenue.
<br>***
<br>A very good answer might include the following:
<br><span style="text-decoration:underline;"><strong> Potential recommendations:</strong></span>
<br>Take changing consumer preferences and market trends into account
<br>• The gradual shift in consumer preferences towards single ticket sales may signal
opportunity to further boost this revenue source. Determining who these single ticket buyers are and how are how to better serve/market to them could be key
Consider launching an endowment campaign to increase the endowment base • The MSO’s annual giving is strong and suggests a campaign to garner
endowment contributions could succeed. This would also help diversify the MSO’s overall revenue portfolio, which currently relies heavily on earned income and annual giving
<br><span style="text-decoration:underline;"><strong> Challenges:</strong></span>
<br><strong>MSO’s lack of sales and marketing acumen, skills</strong>
<br>• MSO sales and marketing track record (e.g., strategy, pricing, and product have remained stagnant even though revenues have continually fallen) suggests a lack of strength in these areas
Timing of costs and benefits associated with endowment campaign
<br>• Launching an endowment campaign requires front-loaded, short-term costs
(e.g., planning time, development of promotional materials, donor identification and strategy), whereas endowment campaign benefits tend to be long-term in nature
<br>• MSO needs to assess whether it can financially afford to wait before realizing the long-term benefits of a campaign
<br><strong>Value proposition to endowment campaign donors</strong>
<br>• Because of its checkered financial record and history of financial
irresponsibility, some potential donors (particularly foundations) may be skeptical of giving the MSO additional money during an endowment campaign. These donors might want to see credible proof of fiscal responsibility and greater self-sufficiency prior to giving
<br> <strong> Diversion of organization’s attention and focus</strong>
<br>• Given the resource-consuming nature of an endowment campaign and/or
new marketing efforts, management could become distracted and fail to focus on the day-to-day operations of the symphony.',
  skills: 'Logic and rigorous thinking',
  keywords: ['cannibalization', 'renewal rate'],
  case_id: c.id,
  position: 7
  )



e = Company.create(
  name: "McKinsey",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552920209/Logo-McKinsey.png")

f = Company.create(
  name: "BCG",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552920259/BCG_MONOGRAM_RGB_GREEN_tcm9-210235.png")


f = Company.create(
  name: "Accenture",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552920283/Logo-accenture2017.png")

f = Company.create(
  name: "Capgemini",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552921394/capgemini-reveals-new-brand-identity-new-messages-to-mark-anniversary.jpg")

f = Company.create(
  name: "Accuracy",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552921445/te%CC%81le%CC%81chargement.png")

f = Company.create(
  name: "Bain",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552921469/bain-logo.png")

f = Company.create(
  name: "Roland Berger",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552921494/Roland_Berger_Logo_2015.png")

f = Company.create(
  name: "Oliver Wyman",
  logo: "https://res.cloudinary.com/dtzmk5eym/image/upload/v1552921572/logo-oliver-wyman.png")

