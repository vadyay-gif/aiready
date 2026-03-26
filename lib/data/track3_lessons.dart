import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT3 = {
  // LESSON 1 — Create Slide Outlines
  't3_l1': [
    const Scenario(
      id: 't3_l1_s1_strategy_deck',
      situation:
          'You need to create a 6-slide outline for a quarterly strategy update presentation to the executive team. The deck should cover current performance, key challenges, strategic priorities, and next steps.',
      prompt:
          'Create a 6-slide outline for a quarterly strategy update presentation to executives.',
      baseOutput: '''Slide 1: Executive Summary
• Q3 Performance Highlights (3 key metrics)
• Strategic Wins & Challenges
• Q4 Priorities Overview

Slide 2: Current Performance
• Revenue Growth: +15% vs target +12%
• Customer Acquisition: 2,500 new customers
• Market Share: 23% (up from 20%)
• Key Performance Indicators Dashboard

Slide 3: Strategic Challenges
• Supply Chain Disruptions Impact
• Talent Acquisition Bottlenecks
• Competitive Pressure in Core Markets
• Risk Mitigation Strategies

Slide 4: Strategic Priorities
• Priority 1: Expand to 3 New Markets
• Priority 2: Launch Mobile App Platform
• Priority 3: Implement AI-Powered Analytics
• Success Metrics & Timeline

Slide 5: Resource Requirements
• Budget Allocation: \$2.5M for Q4
• Team Expansion: 15 new hires
• Technology Investments: \$800k
• Partnership Opportunities

Slide 6: Next Steps & Timeline
• Immediate Actions (Next 30 Days)
• Q4 Milestones & Deadlines
• Success Metrics & KPIs
• Follow-up Schedule''',
      refinements: [
        Refinement(
            label: 'Problem-Solution Focus', output: '''Slide 1: The Challenge
• Current Market Position & Gaps
• Competitive Landscape Analysis
• Strategic Opportunity Overview

Slide 2: Root Cause Analysis
• Why We're Falling Behind
• Internal vs External Factors
• Data-Driven Insights

Slide 3: Our Solution
• Strategic Approach & Methodology
• Competitive Advantages
• Innovation Pipeline

Slide 4: Implementation Plan
• Phase 1: Foundation (Months 1-3)
• Phase 2: Scale (Months 4-6)
• Phase 3: Optimize (Months 7-9)

Slide 5: Investment Case
• ROI Projections & Timeline
• Risk Assessment & Mitigation
• Resource Requirements

Slide 6: Call to Action
• Immediate Decisions Needed
• Next Steps & Timeline
• Success Metrics'''),
        Refinement(
            label: 'Data-Driven Narrative',
            output: '''Slide 1: Key Metrics Dashboard
• Revenue Growth: +15% YoY
• Customer Acquisition: 2,500 new
• Market Share: 23% (up 3%)
• Customer Satisfaction: 4.6/5

Slide 2: Performance Analysis
• Regional Performance Breakdown
• Product Line Performance
• Customer Segment Analysis
• Trend Analysis & Projections

Slide 3: Competitive Intelligence
• Market Share Comparison
• Feature Comparison Matrix
• Pricing Analysis
• Competitive Threats

Slide 4: Strategic Opportunities
• Market Expansion Potential
• Product Development Pipeline
• Partnership Opportunities
• Investment Priorities

Slide 5: Financial Impact
• Revenue Projections
• Cost Structure Analysis
• Profitability Metrics
• Investment Requirements

Slide 6: Action Plan
• Prioritized Initiatives
• Timeline & Milestones
• Success Metrics
• Resource Allocation'''),
        Refinement(label: 'Executive Brief', output: '''Slide 1: Bottom Line
• We're winning but need to accelerate
• 3 strategic priorities for Q4
• \$2.5M investment required

Slide 2: What's Working
• 15% revenue growth (above target)
• Strong customer acquisition
• Market share gains

Slide 3: What's Not Working
• Supply chain delays
• Hiring bottlenecks
• Competitive pressure

Slide 4: Strategic Plan
• Expand to 3 new markets
• Launch mobile platform
• Implement AI analytics

Slide 5: Investment Case
• \$2.5M budget needed
• 15 new hires required
• 6-month ROI timeline

Slide 6: Next Steps
• Approve budget by Friday
• Start hiring immediately
• Monthly progress reviews'''),
      ],
      takeaway:
          'AI helps structure complex presentations by organizing information into logical flow, ensuring each slide has a clear purpose and builds toward your key message. Perfect for any executive presentation.',
    ),
  ],

  // LESSON 2 — Turn Data Into Talking Points
  't3_l2': [
    const Scenario(
      id: 't3_l2_s1_sales_regions',
      situation:
          'You have quarterly sales data broken down by region. You need to extract 3 key insights and suggest 2 specific actions to improve performance. Focus on patterns, trends, and actionable recommendations.',
      prompt:
          'Analyze this regional sales data and provide 3 insights plus 2 actionable recommendations.',
      baseOutput: '''Regional Sales Analysis: Q3 2023

Key Insights:

1. West Coast Dominance Continues (45% of total revenue)
   - California alone accounts for 35% of sales
   - 60% growth in Pacific Northwest (Oregon, Washington)
   - Average deal size 40% higher than other regions
   - Tech sector driving 80% of West Coast revenue

2. Southeast Shows Strong Growth Potential (25% revenue, 50% growth)
   - Florida and Georgia leading expansion
   - Healthcare and manufacturing sectors growing rapidly
   - Average deal size increasing 25% quarter-over-quarter
   - New office in Atlanta driving 30% of regional growth

3. Midwest Underperforming (15% revenue, 5% growth)
   - Illinois and Michigan showing decline
   - Manufacturing sector struggling (-20% vs Q2)
   - Average deal size 30% below company average
   - Sales team turnover highest in this region

Recommended Actions:

1. Double Down on Southeast Expansion
   - Increase sales team in Atlanta from 3 to 6 reps
   - Allocate \$200k additional marketing budget for Southeast
   - Create region-specific product bundles for healthcare sector
   - Target: 40% revenue growth in Q4

2. Midwest Recovery Plan
   - Replace underperforming sales manager in Chicago
   - Develop manufacturing-specific solution packages
   - Increase customer success team support for existing clients
   - Target: 15% growth and 90% retention rate

Expected Impact:
• 25% overall revenue growth in Q4
• Improved regional balance (West Coast: 40%, Southeast: 30%, Midwest: 20%)
• Reduced customer churn in Midwest
• Increased average deal size across all regions''',
      refinements: [
        Refinement(
            label: 'Growth Focus',
            output:
                '''Insights: West Coast 45% revenue, Southeast 50% growth, Midwest struggling. Actions: Expand Southeast team, fix Midwest leadership. Target: 25% overall growth, better regional balance.'''),
        Refinement(
            label: 'Problem-Solution',
            output:
                '''Problem: Midwest underperforming, regional imbalance. Solution: Southeast expansion, Midwest recovery plan. Actions: Add 3 sales reps Southeast, replace Chicago manager.'''),
        Refinement(
            label: 'Data-Driven',
            output:
                '''West Coast: 45% revenue, 60% growth Pacific Northwest. Southeast: 25% revenue, 50% growth, 25% deal size increase. Midwest: 15% revenue, 5% growth, 30% below average deals.'''),
      ],
      takeaway:
          'AI transforms raw sales data into actionable insights by identifying patterns, highlighting opportunities, and providing specific recommendations. Focuses on data-driven decision making rather than assumptions.',
    ),
  ],

  // LESSON 3 — Generate Speaker Notes
  't3_l3': [
    const Scenario(
      id: 't3_l3_s1_outline_notes',
      situation:
          'You have a presentation outline with 6 slides. You need to create 1-minute speaker notes for each slide that provide talking points, transitions, and key messages. Focus on natural flow and audience engagement.',
      prompt:
          'Create 1-minute speaker notes for each slide in this presentation outline.',
      baseOutput: '''Slide 1: Executive Summary (1 minute)
"Good morning everyone. Today I'm going to walk you through our Q3 performance and Q4 strategy. The bottom line is this: we're performing well, but we need to accelerate. We hit 15% revenue growth against a 12% target, acquired 2,500 new customers, and increased market share to 23%. However, we're facing some challenges that require immediate attention. Let me break this down for you."

Key Points:
• Start with positive news to build confidence
• Acknowledge challenges without being defensive
• Set expectations for what's coming
• Keep it high-level, save details for later slides

Slide 2: Current Performance (1 minute)
"Let's dive into the numbers. Our revenue growth of 15% exceeded our target by 3 percentage points. We're particularly proud of our customer acquisition - 2,500 new customers this quarter alone. Our market share has grown from 20% to 23%, showing we're gaining ground on competitors. But here's what's really interesting: our customer satisfaction scores are at an all-time high of 4.6 out of 5."

Key Points:
• Lead with the strongest metrics
• Provide context and comparison
• Connect metrics to business impact
• Transition to challenges naturally

Slide 3: Strategic Challenges (1 minute)
"Now, let's talk about what's keeping us up at night. We're facing three main challenges. First, supply chain disruptions are impacting our delivery timelines. Second, we're struggling to hire the talent we need - our open positions are taking 60 days to fill versus our target of 30. And third, we're seeing increased competitive pressure in our core markets. But here's the good news: we have strategies to address each of these."

Key Points:
• Be honest but solution-oriented
• Quantify challenges where possible
• Show you're on top of the issues
• End with hope and action

Slide 4: Strategic Priorities (1 minute)
"Here's our game plan for Q4. We're focusing on three strategic priorities. First, we're expanding into three new markets where we see significant opportunity. Second, we're launching our mobile app platform to meet growing customer demand. And third, we're implementing AI-powered analytics to give us a competitive edge. Each of these initiatives has clear success metrics and timelines."

Key Points:
• Present priorities as strategic choices
• Connect to market opportunities
• Show clear accountability
• Demonstrate strategic thinking

Slide 5: Resource Requirements (1 minute)
"To execute this plan, we need your support in three areas. We're requesting a \$2.5 million budget allocation for Q4, which includes \$800k for technology investments. We need to hire 15 new team members across engineering, sales, and customer success. And we're exploring strategic partnerships that could accelerate our growth. The ROI on this investment is projected at 300% within 18 months."

Key Points:
• Be specific about what you need
• Connect resources to outcomes
• Show ROI and business case
• Make it easy to say yes

Slide 6: Next Steps & Timeline (1 minute)
"Here's what happens next. We need your approval on the budget by Friday so we can start hiring immediately. We'll provide monthly progress updates and adjust our strategy based on market conditions. Our success metrics are clear: 25% revenue growth, 3,000 new customers, and 25% market share by year-end. I'm confident we can deliver on these commitments with your support."

Key Points:
• Be specific about immediate actions
• Set clear expectations
• Show accountability and follow-up
• End with confidence and call to action''',
      refinements: [
        Refinement(
            label: 'Conversational Style',
            output:
                '''Slide 1: "Hey team, great to see everyone. We've got some really good news to share today, but also some challenges we need to tackle together. Our Q3 numbers look solid - 15% growth, 2,500 new customers - but we're hitting some roadblocks that we need your help with."

Slide 2: "The numbers tell a great story. We're growing faster than expected, our customers love us, and we're taking market share from competitors. But let me show you what's really driving this growth and where we see opportunities."

Slide 3: "Now for the reality check. We're dealing with supply chain issues, hiring challenges, and competitive pressure. But here's what I want you to know: we have plans to address each of these, and I'm confident we can turn these challenges into opportunities."

Slide 4: "Here's our playbook for Q4. We're going big on three strategic initiatives that will position us for long-term success. Each one has clear ownership, timelines, and success metrics."

Slide 5: "To make this happen, we need your support. I'm asking for \$2.5M in budget and approval to hire 15 people. The business case is solid - we expect 300% ROI within 18 months."

Slide 6: "Here's what I need from you: budget approval by Friday, and your commitment to monthly check-ins. I'm confident we can deliver 25% growth and 3,000 new customers by year-end."'''),
        Refinement(
            label: 'Data-Focused',
            output:
                '''Slide 1: "Our Q3 performance shows 15% revenue growth against 12% target, 2,500 new customer acquisitions, and market share increase from 20% to 23%. However, three key challenges require immediate attention."

Slide 2: "Revenue growth of 15% represents \$3.2M in additional revenue. Customer acquisition cost decreased 20% to \$1,800, while customer lifetime value increased 25% to \$12,000. Market share gains came primarily from competitor X and Y."

Slide 3: "Supply chain disruptions impact 30% of our product lines, extending delivery times by 15 days. Talent acquisition challenges result in 60-day average time-to-fill versus 30-day target. Competitive pressure increased pricing pressure by 10%."

Slide 4: "Market expansion targets \$50M in new revenue opportunity. Mobile platform development requires 12 weeks and \$500k investment. AI analytics implementation will reduce customer churn by 25%."

Slide 5: "Budget breakdown: \$1.5M for hiring, \$800k for technology, \$200k for partnerships. Team expansion includes 8 engineers, 4 sales reps, 3 customer success managers. ROI projection: 300% within 18 months."

Slide 6: "Timeline: Budget approval by Friday, hiring starts next week, first progress report in 30 days. Success metrics: 25% revenue growth, 3,000 new customers, 25% market share by Q4 end."'''),
        Refinement(
            label: 'Story-Driven',
            output:
                '''Slide 1: "Let me tell you a story about our Q3 journey. We started the quarter with ambitious goals, and I'm proud to say we exceeded most of them. But like any good story, we also faced some unexpected challenges that made us stronger."

Slide 2: "The hero of our story is our team. Their dedication drove 15% revenue growth and brought 2,500 new customers into our family. Our market share grew to 23%, showing we're becoming the trusted choice in our industry."

Slide 3: "Every story has its challenges, and ours came in three forms: supply chain disruptions that tested our resilience, hiring challenges that pushed our creativity, and competitive pressure that sharpened our strategy."

Slide 4: "Now for the exciting part - our next chapter. We're writing a story of expansion, innovation, and market leadership. Three strategic initiatives will define our success: new markets, mobile platform, and AI analytics."

Slide 5: "Every great story needs resources. We're asking for \$2.5M to write this next chapter, with a team of 15 new heroes joining our journey. The payoff? A 300% ROI story that we'll be proud to tell."

Slide 6: "Here's how our story ends: with your support, we'll achieve 25% growth, welcome 3,000 new customers, and reach 25% market share. The next chapter starts Friday with your budget approval."'''),
      ],
      takeaway:
          'AI transforms presentation outlines into engaging speaker notes by adding natural language, transitions, and audience connection. Adapts tone (conversational, data-focused, story-driven) while maintaining key messages and flow.',
    ),
  ],

  // LESSON 4 — Visual Storytelling
  't3_l4': [
    const Scenario(
      id: 't3_l4_s1_before_after',
      situation:
          'You need to create a before/after slide that tells a compelling story. The slide should show the transformation from a problem state to a solution state, with clear narrative arc and visual impact.',
      prompt:
          'Create a before/after slide narrative that tells a compelling transformation story.',
      baseOutput: '''Before/After Slide: Customer Analytics Transformation

Narrative Arc: From Data Chaos to Actionable Insights

BEFORE: "The Data Nightmare"
• Customer data scattered across 8 different systems
• Reports took 3-5 days to generate manually
• Decisions made on gut feeling, not data
• 40% of team time spent on data collection
• Monthly revenue reviews based on outdated information
• No real-time visibility into customer behavior

Visual Elements:
• Red warning icons and chaotic layout
• Multiple disconnected data sources
• Clock showing "3-5 days" for reports
• Team members looking stressed and overwhelmed
• Revenue chart with question marks

AFTER: "The Data-Driven Dream"
• Single unified dashboard with real-time insights
• Reports generated automatically in minutes
• AI-powered recommendations drive decisions
• 80% reduction in manual data work
• Daily revenue monitoring with predictive alerts
• Complete customer journey visibility

Visual Elements:
• Clean, organized dashboard layout
• Green success indicators and checkmarks
• Clock showing "2 minutes" for insights
• Team members looking confident and productive
• Revenue chart with upward trend and predictions

Key Transformation Points:
1. Data Consolidation: 8 systems → 1 platform
2. Speed: 3-5 days → 2 minutes
3. Decision Quality: Gut feeling → Data-driven
4. Team Efficiency: 40% manual work → 80% automation
5. Revenue Impact: Reactive → Proactive

Story Elements:
• Problem: "We were flying blind"
• Solution: "Now we have a clear view"
• Impact: "Revenue increased 25% in 6 months"
• Future: "Scaling to 10x more customers"

Call to Action:
• "Transform your data chaos into competitive advantage"
• "Join 500+ companies already seeing results"
• "Start your transformation today"''',
      refinements: [
        Refinement(
            label: 'Problem-Focused',
            output:
                '''BEFORE: Data scattered, reports slow, decisions by gut, manual work, outdated info, no visibility.
AFTER: Unified dashboard, instant reports, AI recommendations, automation, real-time monitoring, complete visibility.
Story: From chaos to clarity, 25% revenue increase, scaling to 10x customers.'''),
        Refinement(
            label: 'Solution-Driven',
            output:
                '''BEFORE: 8 disconnected systems, 3-5 day reports, gut decisions, 40% manual work, monthly reviews, blind spots.
AFTER: Single platform, 2-minute insights, data-driven decisions, 80% automation, daily monitoring, full visibility.
Transformation: Consolidation, speed, quality, efficiency, impact, future growth.'''),
        Refinement(
            label: 'Impact-Heavy',
            output:
                '''BEFORE: Data nightmare - scattered systems, slow reports, gut decisions, manual work, outdated info.
AFTER: Data dream - unified platform, instant insights, AI recommendations, automation, real-time monitoring.
Results: 25% revenue increase, 80% efficiency gain, 10x customer scaling potential.'''),
      ],
      takeaway:
          'AI creates compelling before/after narratives by contrasting problem states with solution states, using specific metrics and visual elements to tell a transformation story that resonates with audiences.',
    ),
  ],

  // LESSON 5 — Tailor to Audience
  't3_l5': [
    const Scenario(
      id: 't3_l5_s1_exec_audience',
      situation:
          'You\'re presenting to an executive audience that wants bottom-line results first. You need to restructure your presentation to lead with key decisions, financial impact, and strategic implications. Focus on brevity and business impact.',
      prompt:
          'Restructure this presentation for an executive audience with bottom-line first approach.',
      baseOutput: '''Executive Presentation: AI Analytics Platform Investment

BOTTOM LINE FIRST (30 seconds)
"We need \$2.5M investment to launch our AI analytics platform. This will generate \$10M in additional revenue within 18 months, representing a 300% ROI. The strategic opportunity is \$500M in addressable market with only 15% penetration."

Key Decisions Needed:
• Approve \$2.5M budget allocation
• Hire 15 additional team members
• Launch beta program with 50 customers
• Set 18-month revenue target of \$10M

Financial Impact:
• Investment: \$2.5M (Q4 2023)
• Revenue Impact: \$10M additional ARR (Q2 2025)
• ROI: 300% within 18 months
• Break-even: Month 12

Strategic Implications:
• Market Leadership: First-mover advantage in AI analytics
• Competitive Moat: Proprietary algorithms and data network
• Customer Lock-in: High switching costs and integration dependencies
• Scalability: Platform supports 10x customer growth

Risk Assessment:
• Technology Risk: Low (proven AI algorithms)
• Market Risk: Medium (competitive landscape)
• Execution Risk: Medium (team scaling)
• Mitigation: Phased rollout with customer validation

Success Metrics:
• Revenue: \$10M ARR by Q2 2025
• Customers: 500 paying customers
• Market Share: 25% of target segment
• Team: 50 employees across engineering and sales

Next Steps:
• Budget approval by Friday
• Team hiring starts next week
• Beta launch in 30 days
• Monthly progress reviews

Supporting Details (Available if needed):
• Technical architecture and scalability
• Competitive analysis and differentiation
• Customer validation and feedback
• Team structure and hiring plan
• Marketing strategy and go-to-market plan

Executive Summary:
• Investment: \$2.5M
• Return: \$10M ARR (300% ROI)
• Timeline: 18 months
• Risk: Medium (manageable)
• Strategic Value: High (market leadership)

Recommendation: Proceed with investment. The business case is strong, the market opportunity is significant, and the strategic value justifies the investment.''',
      refinements: [
        Refinement(
            label: 'Ultra-Concise',
            output:
                '''Bottom Line: \$2.5M investment → \$10M revenue (300% ROI) in 18 months.
Decisions: Approve budget, hire 15 people, launch beta, set \$10M target.
Impact: \$500M market opportunity, 15% penetration, first-mover advantage.
Risk: Medium (manageable), break-even Month 12.
Next: Budget approval Friday, hiring starts next week, beta in 30 days.'''),
        Refinement(
            label: 'Financial Focus', output: '''Investment: \$2.5M Q4 2023
Revenue: \$10M ARR Q2 2025
ROI: 300% in 18 months
Break-even: Month 12
Market: \$500M opportunity, 15% penetration
Risk: Medium, manageable
Recommendation: Proceed - strong business case, high strategic value.'''),
        Refinement(
            label: 'Strategic View',
            output:
                '''Bottom Line: \$2.5M for \$10M revenue, 300% ROI, 18 months.
Strategic Value: \$500M market, first-mover advantage, competitive moat.
Decisions: Budget, hiring, beta launch, revenue target.
Risk: Medium, break-even Month 12.
Action: Approve Friday, start hiring next week, beta in 30 days.'''),
      ],
      takeaway:
          'AI restructures presentations for executives by leading with bottom-line results, key decisions, and financial impact. Focuses on brevity, business impact, and strategic implications rather than technical details.',
    ),
  ],
};
