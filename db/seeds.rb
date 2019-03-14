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

c = Case.create(
  content: 'Our client is the Metropolitan Symphony Orchestra (“MSO”), a non-profit orchestra based in a major U.S. city. The MSO is a critically acclaimed performing arts organization and is regarded as one of the top twenty orchestras in North America. \n

  Despite its artistic reputation, the orchestra has experienced a number of financial difficulties during its 80-year history. The recent past has proven no different, as the MSO has seen a steady drop in revenues over the last 3 years. This revenue decline has led to budget deficits that the orchestra has had to finance through borrowing.
  Like many non-profit organizations, the MSO’s revenues can be split into three main sources. The first is earned income, which primarily takes the form of ticket revenue from both single ticket sales and discounted multi-concert subscriptions. The second is annual donations by individuals, companies, government bodies, and charitable foundations. The final source is the symphony’s endowment, a pool of professionally managed donated funds of which the MSO receives a small fixed percentage or “draw” each year.
   1
  Six months ago, the MSO board welcomed a new President, Kevin Stevens, to lead the organization. Mr. Stevens has called on McKinsey to help his management team address the declining revenue problem. If revenues do not eventually improve, the MSO will likely exhaust its credit and have to drastically scale back in size – or cease performing altogether.
  What strategies should the MSO pursue to improve its revenue growth over the next 5 years?',
  name: 'Metropolitan Symphony',
  day: 1,
  industry: 'Non-profit',
  position: 1,
)

Question.create(
  content: 'Consider the MSO’s three core revenue areas: earned income, annual giving, and endowment draw. For each, what do you believe are the main sources or drivers of revenue?',
  timing: 3,
  correction: 'When thinking about earned income levers, I would want to consider ticket revenue (number of customers or concertgoers, tickets sold per concert, number of concerts per season, price paid per ticket), special events (contracted performances) and merchandise revenue (souvenirs, recordings) from the gift shop
When thinking about annual giving, I would want to think about number of donors (directly correlated with number of customers), amount contributed per donor (change the mix of donors or convince existing donors to give more).
When thinking about endowment levers, I would want to think about the size of the endowment base (donations to increase endowment base, returns from invested funds) and the annual endowment draw percentage.',
  skills: 'revenue hypothesis',
  keywords: ['number of clients', 'number of customers', 'number of concert', 'number of donors', 'mix', 'invest'],
  case_id: c.id,
  position: 1,
  )

Question.create(
  content: 'Earned income has historically been the MSO’s single biggest revenue source. However, earned income has steadily declined in recent years, which has contributed heavily to the drop in total revenues. What hypothetical opportunities could you explore to reverse this trend?',
  timing: 3,
  correction: '- Increase ticket price. MSO could be under-pricing or not taking advantage of price discrimination opportunities
- Increase number of performances. There may be room to expand the symphony season, play in other locales, and/or have more performances of each program.
- Change offering. Possibilities include changing the mix of concerts (e.g., more
mainstream classical and popular music programming) or the enhancing the overall symphony product (e.g., concert hall appearance and acoustics, pre show activities, more flexible ticket packages)
Improve promotion. There may be a need to change core messages, media choices, or frequency of promotion
Improve sales strategy. Alternatives include adjusting sales channel mix (e.g., telemarketing, internet, direct mail); sales force composition, incentives, and/or the structure of the marketing organization
Target new customer segments. MSO may be ignoring or under-serving potentially valuable customer segments.',
  skills: 'revenue hypothesis',
  keywords: ['increase price', 'offering', 'promotion', 'mix', 'customer segment'],
  case_id: c.id,
  position: 2,
  )

Question.create(
  content: 'You meet with the MSO’s sales and marketing directors to discuss the orchestra’s declining earned income. They show you the following ticket sales results from the past 3 seasons (Exhibit next page). They also tell you that during this three-year period, ticket pricing has remained essentially the same and that the MSO’s marketing strategy of focusing primarily on subscribers and subscriber renewals has not changed.
What conclusions can you draw from these data? What might explain these results?
',
  timing: 3,
  correction: 'Overall observations:
- Overall earned income is down because of a decline in subscription sales, with full-season subscription sales being particularly hard hit
- Total subscription revenues are down, but not because subscriber renewal rates are falling- Individual ticket sales are up, which partially—but not fully— offsets the decline in subscription revenues
Possible explanations for the results (Remember that pricing and marketing strategy have not changed during the past 3 years):
- Current subscribers are switching to cheaper seats. People who purchased expensive seats the year prior are renewing, but choosing to buy cheaper seats this year
- Subscribers may be migrating to shorter commitment options. The sharp decline in full-season subscriptions, relatively small decline in half-season subscriptions, and the increase in single ticket revenue suggest that customers are shifting away from up-front, higher-commitment purchases.
A very good answer might also include:
- The number of new subscribers is declining. While the MSO has managed to maintain a steady rate of subscription renewals, the number of new subscribers is shrinking:
o New subscribers tend to have lower renewal rates than long-time subscribers, so fewer new subscribers may explain why the MSO’s overall renewal rates have not suffered
- The above hypotheses could be due to one or more underlying causes
o Weak local economy and less disposable income
o General shift in customer preferences away from full-season subscriptions
and towards shorter-term subscriptions and single tickets
o Decrease in size of MSO’s historic key target customer segments (e.g.,
older, high-income individuals)
o MSO product offering has become weaker relative to other performing arts
or entertainment options.
  5',
  skills: 'data analysis',
  keywords: ['increase price', 'offering', 'promotion', 'mix', 'customer segment'],
  case_id: c.id,
  position: 3,
  )

Question.create(
  content: 'Your team believes that, despite a gradual market shift towards single ticket purchases, maintaining a core subscriber base remains essential in the MSO’s near to mid-term survival. Specifically, you believe the MSO needs to increase its pipeline of new subscribers and—perhaps more importantly—find ways of retaining these customers over time.
Although new subscribers tend to have relatively low renewal rates and high acquisition costs, once subscribers enter their third consecutive season, they tend to remain loyal to the symphony thereafter by consistently renewing their subscription and making annual donations.
Thus, the “lifetime value” (e.g., total discounted value of all future revenue from a customer) for such subscribers is quite high.
You’ve been asked to use the current season’s subscriber data to determine the average lifetime value of a brand new subscriber. (For simplicity, fous on revenue and ignore customer acquisition and retention costs.) You have already estimated the following:
Average revenue from a new subscriber in Year 1 = $300 Average discounted revenue from a subscriber in Year 2 = $400
Total average discounted revenue for a subscriber from Year 3 onward = $2900
Number of new subscribers last year = 2,800
Number of second-year subscribers last year = 1,200.
When you find that you need additional information or clarification of the information you have received, you should not hesitate to ask the interviewer. In this case, when asked, the interviewer would provide
you with the following data:
Renewal rate after Year 1 = 40%
Renewal rate after Year 2 = 50%
Renewal rates for Years 3+ are factored into the revenue numbers above and can therefore be ignored (or we can just assume they are near 100%).',
  timing: 3,
  correction: '
I would calculate the expected revenue per subscriber each year and then calculate the total lifetime revenue per subscriber
Expected revenue per subscriber in Year 1 = $300
  6
Expected revenue per subscriber in Year 2 = 0.4 * $400 = $160
Expected revenue per subscriber for Years 3+ = 0.4 * 0.5 * $2,900 = $580 Thus, expected lifetime revenue per new subscriber = ($300 + $160 + $580) = $1040',
  skills: 'calculation',
  keywords: ['1040'],
  case_id: c.id,
  position: 4,
  )

Question.create(
  content: 'Team analysis suggests that new subscribers at more financially successful symphonies have an expected lifetime value of approximately $1300. How much would the first-year renewal rate have to increase to raise the expected lifetime value of a new MSO subscriber to $1300? (Assume second- year renewal rate does not change.)',
  timing: 3,
  correction: '
I would calculate the renewal rate using the following:
If X = required renewal rate
$1300= $300+(X*$400)+(X*0.5*$290, X=54%(rounded)
Current renewal rate = 40%
Required improvement in renewal rate = 54 - 40% = 14%
The first-year renewal rate must increase by approximately 14 percentage points.',
  skills: 'calculation',
  keywords: ['14%'],
  case_id: c.id,
  position: 5,
  )


Question.create(
  content: 'Though earned income appears to represent the best area for improvement opportunity, Mr. Stevens also wonders if the organization could improve its performance with respect to annual giving (e.g., donations from individuals, corporations, government, and charitable foundations). What methods could you employ to test whether there are strong revenue improvement opportunities in annual giving?',
  timing: 3,
  correction: '
A good answer might include the following:
Benchmarking
• Benchmark MSO’s annual giving performance against those of peer
orchestras as well as other local non-profit organizations. Relevant comparisons might include:
o Level of donations per capita within the metro area
o Mix of donation sources (e.g., percentage from individuals vs. percentage from
corporations vs. percentage from foundations) Market share analyses
   7
• Estimate the size of donor market and the MSO’s penetration of that market. Example analyses include:
o MSO donations as  percentage of estimated total giving potential (from both local and national sources) by donor type
o percentage of wealthiest 50/100/500 local corporations/ foundations / people currently not giving to MSO
o Inventory of local, state, and/or national government funding sources not being utilized by MSO.
A very good answer might include the following:
Historical trend analyses
• Look for declines or flat-lining in each source of giving, particularly if they are
being masked/offset by increases/decreases in other sources of giving
• Look for recent losses of key donors; changes in donor retention or attrition
rates',
  skills: 'revenue hypothesis',
  keywords: ['benchmarking', 'historical trends analysis', 'market share'],
  case_id: c.id,
  position: 6,
  )

Question.create(
  content: 'Taking into account what you’ve learned thus far as well as your own additional hypotheses, what initiatives would you recommend to Mr. Stevens at this point? What would be the primary challenges (both strategic and implementation) related to your recommendations?',
  timing: 3,
  correction: 'Potential recommendations:
Improve subscriber renewal rates (especially first-year subscribers)
  9
• MSO should focus improving subscriber retention rates and usher new subscribers into their 3rd year (when they become “locked-in” and extremely loyal). Focused market research efforts to understand why new subscribers are not renewing should be undertaken, and appropriate adjustments (product, advertising, channel, pricing) should be made
Explore ways to cost effectively increase the number of new subscribers
• Given that the MSO’s audience is aging, finding ways to appeal new—and
perhaps younger—market segments is a bold but potentially winning strategy. However, new customers carry high acquisition costs, so this might be a second- priority initiative (e.g., one that is pursued after renewal rates improve).
Challenges:
Cannibalization
• Ticket sales. Encouraging sales of single ticket and shorter (i.e., lower-
priced) subscription packages may further exacerbate the decline in full- season subscription revenue and hurt—rather than help—the top line. (It is essential to determine whether the people in the market for shorter- commitment tickets are the largely the same as those who would buy longer subscriptions. If they are, then MSO needs to be more concerned with cannibalization)
• Donations. MSO would likely be approaching the same set of donors for both the endowment campaign and its annual giving campaigns. Since many donors would substitute annual giving for endowment giving, MSO needs to account for the likely decline in its near-term giving revenue.
A very good answer might include the following:
Potential Recommendations:
Take changing consumer preferences and market trends into account
• The gradual shift in consumer preferences towards single ticket sales may signal
opportunity to further boost this revenue source. Determining who these single ticket buyers are and how are how to better serve/market to them could be key
Consider launching an endowment campaign to increase the endowment base • The MSO’s annual giving is strong and suggests a campaign to garner
endowment contributions could succeed. This would also help diversify the MSO’s overall revenue portfolio, which currently relies heavily on earned income and annual giving
Challenges:
MSO’s lack of sales and marketing acumen, skills
   10
• MSO sales and marketing track record (e.g., strategy, pricing, and product have remained stagnant even though revenues have continually fallen) suggests a lack of strength in these areas
Timing of costs and benefits associated with endowment campaign
• Launching an endowment campaign requires front-loaded, short-term costs
(e.g., planning time, development of promotional materials, donor identification and strategy), whereas endowment campaign benefits tend to be long-term in nature
• MSO needs to assess whether it can financially afford to wait before realizing the long-term benefits of a campaign
Value proposition to endowment campaign donors
• Because of its checkered financial record and history of financial
irresponsibility, some potential donors (particularly foundations) may be skeptical of giving the MSO additional money during an endowment campaign. These donors might want to see credible proof of fiscal responsibility and greater self-sufficiency prior to giving
Diversion of organization’s attention and focus
• Given the resource-consuming nature of an endowment campaign and/or
new marketing efforts, management could become distracted and fail to focus on the day-to-day operations of the symphony.',
  skills: 'conclusion',
  keywords: ['cannibalization', 'renewal rate'],
  case_id: c.id,
  position: 6,
  )

cc = Case.create(
  content: 'Your client is Dealer Jack’s, a large US based grocery retailer with stores located on the East Coast. Dealer Jack’s stores provide a full grocery offering with produce, deli, and fresh bakery departments and a mix of national and private label brands. The company, affectionately referred to as “DJ’s” by its customers, experienced strong growth for the better part of the past two decades outpacing the industry until recently.
  Over the past three years however, Dealer Jack’s annual profits have stagnated and even declined in the past year while the grocery industry has continued to grow with hard discounters such as Trader Joe’s leading the way. The CEO has been getting increasing pressure from the board to turn things around, and we have been hired to diagnose the cause of DJ’s profitability issues and find ways to improve it.',
  name: 'Dealer Jack',
  day: 1,
  industry: 'retail',
  position: 2,
  )

Question.create(
  content: 'Are there any additional data you would like to obtain?',
  timing: 3,
  correction: '• Dealer Jack’s management has examined same store sales for all \n
  of its 300 locations, and profitability appears to be a pervasive issue across \n
  all stores. They do not believe targeting and closing underperforming stores is an appropriate solution.
• While the Dealer Jack’s brand is strong on the East Coast, management sees geographic expansion as too capital intensive in the short term.
• All non-operating expenses/costs are appropriately benchmarked to the industry.
• Private label brands are commonly referred to as store brands like 365 at Whole Foods or Kirkland’s at Costco. Hard discounters such as Trader Joe’s rely heavily on private label brands. National brands come from CPG firms such as General Mills or Kraft. CPG firms require a margin on their products that’s not applicable to private label brands.
• DJ’s had 2016 revenue of $60 billion with 30 percent gross margin and 3 percent profit margin.
• Management wants to increase the profits by 10% within the next year',
  skills: 'initial clarifications',
  keywords: ['gross margin', 'revenue'],
  case_id: cc.id,
  position: 1,
  )


ccc = Case.create(
  content: 'Your client is Dealer Jack’s, a large US based grocery retailer with stores located on the East Coast. Dealer Jack’s stores provide a full grocery offering with produce, deli, and fresh bakery departments and a mix of national and private label brands. The company, affectionately referred to as “DJ’s” by its customers, experienced strong growth for the better part of the past two decades outpacing the industry until recently.
  Over the past three years however, Dealer Jack’s annual profits have stagnated and even declined in the past year while the grocery industry has continued to grow with hard discounters such as Trader Joe’s leading the way. The CEO has been getting increasing pressure from the board to turn things around, and we have been hired to diagnose the cause of DJ’s profitability issues and find ways to improve it.',
  name: 'Dealer Jack',
  day: 2,
  industry: 'retail',
  position: 3,
  )

Question.create(
  content: 'Are there any additional data you would like to obtain?',
  timing: 3,
  correction: '• Dealer Jack’s management has examined same store sales for all \n
  of its 300 locations, and profitability appears to be a pervasive issue across \n
  all stores. They do not believe targeting and closing underperforming stores is an appropriate solution.
• While the Dealer Jack’s brand is strong on the East Coast, management sees geographic expansion as too capital intensive in the short term.
• All non-operating expenses/costs are appropriately benchmarked to the industry.
• Private label brands are commonly referred to as store brands like 365 at Whole Foods or Kirkland’s at Costco. Hard discounters such as Trader Joe’s rely heavily on private label brands. National brands come from CPG firms such as General Mills or Kraft. CPG firms require a margin on their products that’s not applicable to private label brands.
• DJ’s had 2016 revenue of $60 billion with 30 percent gross margin and 3 percent profit margin.
• Management wants to increase the profits by 10% within the next year',
  skills: 'initial clarifications',
  keywords: ['gross margin', 'revenue'],
  case_id: ccc.id,
  position: 1,
  )

d = Case.create(
  content: 'Your client is Dealer Jack’s, a large US based grocery retailer with stores located on the East Coast. Dealer Jack’s stores provide a full grocery offering with produce, deli, and fresh bakery departments and a mix of national and private label brands. The company, affectionately referred to as “DJ’s” by its customers, experienced strong growth for the better part of the past two decades outpacing the industry until recently.
  Over the past three years however, Dealer Jack’s annual profits have stagnated and even declined in the past year while the grocery industry has continued to grow with hard discounters such as Trader Joe’s leading the way. The CEO has been getting increasing pressure from the board to turn things around, and we have been hired to diagnose the cause of DJ’s profitability issues and find ways to improve it.',
  name: 'Dealer Jack',
  day: 2,
  industry: 'retail',
  position: 4,
  )

Question.create(
  content: 'Are there any additional data you would like to obtain?',
  timing: 3,
  correction: '• Dealer Jack’s management has examined same store sales for all \n
  of its 300 locations, and profitability appears to be a pervasive issue across \n
  all stores. They do not believe targeting and closing underperforming stores is an appropriate solution.
• While the Dealer Jack’s brand is strong on the East Coast, management sees geographic expansion as too capital intensive in the short term.
• All non-operating expenses/costs are appropriately benchmarked to the industry.
• Private label brands are commonly referred to as store brands like 365 at Whole Foods or Kirkland’s at Costco. Hard discounters such as Trader Joe’s rely heavily on private label brands. National brands come from CPG firms such as General Mills or Kraft. CPG firms require a margin on their products that’s not applicable to private label brands.
• DJ’s had 2016 revenue of $60 billion with 30 percent gross margin and 3 percent profit margin.
• Management wants to increase the profits by 10% within the next year',
  skills: 'initial clarifications',
  keywords: ['gross margin', 'revenue'],
  case_id: d.id,
  position: 1,
  )
