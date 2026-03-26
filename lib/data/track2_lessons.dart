import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT2 = {
  // LESSON 1 — Summarize Meetings
  't2_l1': [
    const Scenario(
      id: 't2_l1_s1_cross_functional',
      situation:
          'You attended a 90-minute cross-functional sync with engineering, design, and marketing teams. Your manager needs a concise recap of decisions made, blockers identified, and next steps.',
      prompt:
          'Summarize this cross-functional meeting into a manager update with key decisions, blockers, and next steps.',
      baseOutput: '''Key Decisions:
• Launch date confirmed for March 15 (2 weeks later than planned)
• Marketing budget increased by \$25k for Q1 campaigns
• Engineering will prioritize mobile app over web dashboard

Blockers:
• Design team needs 3 additional designers (hiring in progress)
• API integration delayed due to third-party vendor issues
• Legal review of new features pending (expected by Friday)

Next Steps:
• Jordan: Finalize design specs by Wednesday
• Priya: Complete API documentation by Monday
• Alex: Schedule follow-up with legal team''',
      refinements: [
        Refinement(
            label: 'Executive Summary',
            output:
                '''Launch March 15; budget +\$25k; mobile priority. Blockers: design hiring, API delays, legal review. On track with 2-week delay.'''),
        Refinement(
            label: 'Detailed Action Items',
            output:
                '''Decisions: Launch March 15, budget +\$25k, mobile priority over web.
Blockers: Need 3 designers, API vendor delays, legal review pending.
Actions: Jordan (design specs Wed), Priya (API docs Mon), Alex (legal follow-up).'''),
        Refinement(
            label: 'Risk-Focused',
            output:
                '''Launch delayed to March 15 due to design capacity and API integration issues. Budget increased \$25k to support timeline. Legal review remains critical blocker.'''),
      ],
      takeaway:
          'AI transforms meeting chaos into structured updates by extracting decisions, identifying blockers, and assigning clear next steps. Perfect for keeping stakeholders informed without the meeting overhead.',
    ),
    const Scenario(
      id: 't2_l1_s2_client_workshop',
      situation:
          'You facilitated a 4-hour client workshop to gather requirements and feedback. The client provided extensive input across multiple areas. You need to distill this into clear decisions and potential risks.',
      prompt:
          'Summarize this client workshop into key decisions made and potential risks identified.',
      baseOutput: '''Client Decisions:
• Platform will focus on B2B enterprise customers (not SMB)
• Must integrate with Salesforce and HubSpot (non-negotiable)
• Pricing model: subscription-based with usage tiers
• Launch timeline: Q3 2024 (6 months from now)

Key Risks:
• Enterprise sales cycle longer than anticipated (6-12 months)
• Integration complexity may delay development timeline
• Client wants custom features that could impact scalability
• Budget constraints may limit feature scope

Next Phase:
• Technical feasibility assessment (2 weeks)
• Detailed integration requirements (1 month)
• Pilot customer identification and outreach''',
      refinements: [
        Refinement(
            label: 'Strategic Overview',
            output:
                '''B2B enterprise focus with Salesforce/HubSpot integration. Subscription pricing, Q3 launch. Risks: long sales cycles, integration complexity, scope creep.'''),
        Refinement(
            label: 'Action-Oriented',
            output:
                '''Decisions: B2B enterprise, Salesforce/HubSpot integration, subscription pricing, Q3 launch.
Risks: Sales cycle length, integration complexity, custom features.
Next: Tech assessment (2 weeks), integration specs (1 month), pilot customers.'''),
        Refinement(
            label: 'Risk Mitigation',
            output:
                '''B2B enterprise platform with subscription pricing. Q3 launch at risk due to integration complexity and long sales cycles. Need pilot customers and technical assessment.'''),
      ],
      takeaway:
          'AI helps you extract strategic decisions from client workshops while identifying risks that could impact project success. Essential for keeping projects on track and stakeholders aligned.',
    ),
    const Scenario(
      id: 't2_l1_s3_standup_review',
      situation:
          'You\'re preparing a week-in-review summary from daily standups. The team made progress on multiple fronts but encountered some blockers. You want to highlight achievements and identify areas needing support.',
      prompt:
          'Summarize this week\'s standups into key highlights and blockers that need attention.',
      baseOutput: '''Week Highlights:
• User authentication system completed and tested
• Mobile app beta launched to 50 internal users
• Customer feedback survey collected 200+ responses
• Performance optimization improved load times by 40%

Current Blockers:
• Database migration stuck due to data integrity issues
• Frontend team waiting for API documentation (blocking 3 developers)
• Marketing materials delayed due to brand approval process
• QA team understaffed for current sprint velocity

Support Needed:
• Database expert consultation for migration issues
• API documentation completion by end of day
• Brand team approval for marketing assets
• Additional QA resources for next sprint''',
      refinements: [
        Refinement(
            label: 'Achievement Focused',
            output:
                '''Completed auth system, launched mobile beta, collected 200+ survey responses, improved performance 40%. Strong progress despite some technical blockers.'''),
        Refinement(
            label: 'Blocker Priority',
            output:
                '''Highlights: Auth complete, mobile beta live, 200+ surveys, 40% performance gain.
Critical blockers: Database migration, API docs, brand approval, QA capacity.
Need: DB expert, API docs today, brand approval, QA resources.'''),
        Refinement(
            label: 'Executive Summary',
            output:
                '''Good progress: auth system, mobile beta, performance gains. Blockers: database migration, API docs, brand approval, QA capacity. On track with support.'''),
      ],
      takeaway:
          'AI transforms daily standup data into meaningful weekly insights by highlighting achievements and surfacing blockers that need escalation. Keeps teams focused and leadership informed.',
    ),
  ],

  // LESSON 2 — Summarize Long Docs
  't2_l2': [
    const Scenario(
      id: 't2_l2_s1_proposal_exec',
      situation:
          'You have a 15-page proposal document for a new product feature. Your executive team needs a 5-bullet summary to make a quick decision. Focus on business impact, costs, and timeline.',
      prompt:
          'Summarize this 15-page proposal into 5 bullet points for executive decision-making.',
      baseOutput:
          '''• New AI-powered recommendation engine will increase user engagement by 25% and drive \$2M additional revenue annually
• Development requires 6 months and \$500k budget (3 engineers, 1 designer, 1 data scientist)
• Integration with existing platform requires minimal changes to current architecture
• Risk assessment shows low technical risk but medium market adoption uncertainty
• Success metrics: 20% increase in user retention, 15% boost in conversion rates, positive ROI within 18 months''',
      refinements: [
        Refinement(
            label: 'Financial Focus',
            output:
                '''\$2M annual revenue potential, \$500k development cost, 18-month ROI. 25% engagement increase, 20% retention boost. Low technical risk.'''),
        Refinement(
            label: 'Timeline Driven',
            output:
                '''6-month development, \$500k budget, 18-month ROI. 25% engagement boost, \$2M revenue potential. Ready to start Q1.'''),
        Refinement(
            label: 'Risk Assessment',
            output:
                '''\$2M revenue potential, \$500k cost, 6-month timeline. Low technical risk, medium adoption uncertainty. Strong ROI metrics.'''),
      ],
      takeaway:
          'AI distills complex proposals into executive-friendly summaries by focusing on business impact, costs, and timeline. Enables quick decision-making without losing critical details.',
    ),
    const Scenario(
      id: 't2_l2_s2_research_tldr',
      situation:
          'You read a technical research article about machine learning algorithms. Your non-technical team needs a simple explanation of the key findings and how they might apply to your business.',
      prompt:
          'Summarize this technical research article into a TL;DR for non-technical team members.',
      baseOutput:
          '''TL;DR: New AI technique improves recommendation accuracy by 30% while using 50% less computing power.

What it means for us:
• Could make our product recommendations 30% more accurate
• Would reduce our server costs by half
• Implementation would take 3-4 months with our current team
• No major changes needed to our existing system

Key findings:
• Uses a new approach called "attention mechanisms" to focus on relevant data
• Works better with smaller datasets (good for our user base)
• More transparent than current black-box AI systems
• Already being adopted by major tech companies

Bottom line: Worth exploring for our next product update.''',
      refinements: [
        Refinement(
            label: 'Business Impact',
            output:
                '''30% better recommendations, 50% cost savings, 3-4 month implementation. No system changes needed. Major companies already using it.'''),
        Refinement(
            label: 'Technical Summary',
            output:
                '''New AI technique: 30% accuracy boost, 50% less computing power. Uses "attention mechanisms," works with small datasets, more transparent. 3-4 month implementation.'''),
        Refinement(
            label: 'Action Oriented',
            output:
                '''30% better recommendations, 50% cost savings. 3-4 months to implement, no system changes. Worth exploring for next update.'''),
      ],
      takeaway:
          'AI bridges the gap between technical research and business applications by translating complex findings into actionable insights. Helps non-technical teams make informed decisions about new technologies.',
    ),
    const Scenario(
      id: 't2_l2_s3_contract_review',
      situation:
          'You have a 20-page contract draft for a new vendor partnership. Your legal team needs a summary of key points that require their review and potential concerns.',
      prompt:
          'Summarize this contract draft into key points for legal review and potential concerns.',
      baseOutput: '''Contract Overview:
• 2-year partnership with renewable terms
• \$500k annual contract value with quarterly payments
• Vendor provides AI services and technical support
• 30-day termination notice required

Key Points for Legal Review:
• Intellectual property ownership unclear (vendor claims rights to improvements)
• Liability cap at \$100k (seems low for \$500k contract)
• Data security requirements not fully specified
• Dispute resolution requires arbitration in vendor's home state
• Force majeure clause very broad (could excuse performance issues)

Potential Concerns:
• IP ownership could limit our ability to build on their technology
• Low liability cap doesn't match contract value
• Data security gaps could create compliance issues
• Arbitration location favors vendor
• Broad force majeure could leave us unprotected

Recommendations:
• Clarify IP ownership terms
• Increase liability cap to match contract value
• Add specific data security requirements
• Negotiate neutral arbitration location
• Narrow force majeure scope''',
      refinements: [
        Refinement(
            label: 'Risk Assessment',
            output:
                '''2-year, \$500k contract. Concerns: IP ownership unclear, \$100k liability cap too low, data security gaps, vendor-favorable arbitration, broad force majeure.'''),
        Refinement(
            label: 'Legal Priorities',
            output:
                '''\$500k annual contract. Legal review needed: IP ownership, liability cap, data security, arbitration location, force majeure scope. Several terms favor vendor.'''),
        Refinement(
            label: 'Executive Summary',
            output:
                '''2-year vendor partnership, \$500k annually. IP, liability, and data security terms need legal review. Several clauses favor vendor and need negotiation.'''),
      ],
      takeaway:
          'AI helps identify contract risks and legal review priorities by extracting key terms and flagging potential issues. Ensures legal teams focus on the most critical areas for negotiation.',
    ),
  ],

  // LESSON 3 — Write Executive Summaries
  't2_l3': [
    const Scenario(
      id: 't2_l3_s1_project_health',
      situation:
          'You need to provide a project health update to senior leadership. Include current status, top 3 risks, and recommendations. Use RAG (Red/Amber/Green) status indicators.',
      prompt:
          'Write an executive summary of project health with RAG status, top 3 risks, and recommendations.',
      baseOutput: '''Project Health: AMBER (On track with minor delays)

Current Status:
• Development: 75% complete (2 weeks behind schedule)
• Budget: 80% spent (within 5% of planned)
• Team: Fully staffed with strong performance
• Quality: All major milestones met with high standards

Top 3 Risks:
1. RED: Third-party API integration delayed by 3 weeks (critical path)
   - Impact: Could delay launch by 2-4 weeks
   - Mitigation: Exploring alternative vendors and parallel development

2. AMBER: User acceptance testing taking longer than expected
   - Impact: May compress final testing phase
   - Mitigation: Adding additional QA resources and extending timeline

3. GREEN: Marketing campaign timeline (low risk, on track)
   - Impact: Minimal
   - Mitigation: Standard monitoring and communication

Recommendations:
• Approve additional \$50k budget for alternative API solutions
• Extend project timeline by 2 weeks to accommodate testing delays
• Maintain current team structure and performance incentives
• Schedule weekly risk review meetings with stakeholders''',
      refinements: [
        Refinement(
            label: 'Risk Focused',
            output:
                '''AMBER status: 75% complete, 2 weeks behind. Critical risk: API integration 3 weeks delayed. Need \$50k for alternatives, 2-week timeline extension.'''),
        Refinement(
            label: 'Action Oriented',
            output:
                '''AMBER project: 75% done, 2 weeks behind. Top risk: API integration delay. Recommendations: \$50k budget increase, 2-week extension, weekly risk reviews.'''),
        Refinement(
            label: 'Executive Brief',
            output:
                '''AMBER status, 75% complete. Critical: API integration delayed. Need \$50k and 2-week extension. Team performing well, quality high.'''),
      ],
      takeaway:
          'AI structures project updates using RAG status to quickly communicate health while highlighting critical risks and actionable recommendations. Enables executives to make informed decisions quickly.',
    ),
    const Scenario(
      id: 't2_l3_s2_product_launch',
      situation:
          'You\'re preparing a product launch brief for executive approval. Include objectives, success metrics, resource requirements, and key asks from leadership.',
      prompt:
          'Write an executive summary for product launch with objectives, metrics, and key asks.',
      baseOutput: '''Product Launch Brief: AI-Powered Analytics Dashboard

Objectives:
• Launch new analytics platform to 10,000 existing customers
• Achieve 25% adoption rate within 3 months
• Generate \$2M in additional annual recurring revenue
• Establish market leadership in AI-powered business intelligence

Success Metrics:
• User adoption: 25% of target customers active within 90 days
• Revenue impact: \$2M ARR within 12 months
• Customer satisfaction: 4.5/5 rating on launch features
• Technical performance: 99.9% uptime during launch period

Resource Requirements:
• Development team: 8 engineers, 3 designers, 2 QA (3 months)
• Marketing budget: \$500k for launch campaign and materials
• Customer success: 4 additional team members for onboarding
• Infrastructure: \$200k for scaling and monitoring tools

Key Asks:
• Executive sponsorship for customer outreach and partnerships
• Approval for \$700k total budget (marketing + infrastructure)
• Cross-functional support for customer onboarding process
• PR and communications support for launch announcement

Timeline:
• Development: 3 months (current sprint)
• Beta testing: 1 month (500 customers)
• Launch: Q2 2024
• Full rollout: 6 months post-launch''',
      refinements: [
        Refinement(
            label: 'Financial Focus',
            output:
                '''Launch AI analytics to 10k customers, target 25% adoption, \$2M ARR. Need \$700k budget, 8 engineers, 3 designers. 3-month development, Q2 launch.'''),
        Refinement(
            label: 'Resource Summary',
            output:
                '''AI analytics launch: 10k customers, 25% adoption target, \$2M ARR. Resources: 8 engineers, \$500k marketing, \$200k infrastructure. 3-month timeline.'''),
        Refinement(
            label: 'Executive Asks',
            output:
                '''Launch AI analytics platform: 10k customers, \$2M ARR target. Need \$700k budget, executive sponsorship, cross-functional support. Q2 launch timeline.'''),
      ],
      takeaway:
          'AI structures launch briefs to clearly communicate objectives, resource needs, and executive asks. Ensures leadership has all information needed for approval and support.',
    ),
    const Scenario(
      id: 't2_l3_s3_quarterly_review',
      situation:
          'You\'re preparing a quarterly business review for your department. Include key wins, performance gaps, and strategic next steps for the upcoming quarter.',
      prompt:
          'Write an executive summary for quarterly business review with wins, gaps, and next steps.',
      baseOutput: '''Q4 2023 Business Review: Product Development Team

Key Wins:
• Successfully launched 3 major product features ahead of schedule
• Reduced customer churn by 15% through improved onboarding
• Achieved 120% of quarterly revenue targets (\$3.6M vs \$3M)
• Improved team productivity by 25% through process optimization
• Received 4.8/5 customer satisfaction rating (highest in company)

Performance Gaps:
• Mobile app development 3 weeks behind schedule due to technical debt
• Customer support response time increased to 24 hours (target: 4 hours)
• Team burnout indicators up 20% due to aggressive timeline
• Integration with new CRM system delayed by 1 month
• Marketing collaboration needs improvement (only 60% of planned campaigns executed)

Strategic Next Steps:
• Q1 2024 Priorities:
  - Complete mobile app development and launch by February
  - Implement automated customer support system (target: 2-hour response)
  - Hire 2 additional developers to reduce team workload
  - Complete CRM integration by March
  - Establish weekly marketing-product alignment meetings

• Resource Requirements:
  - Additional \$300k budget for mobile development acceleration
  - 2 new developer hires (\$200k annual cost)
  - Customer support automation tools (\$50k)
  - Team wellness initiatives (\$25k)

• Success Metrics for Q1:
  - Launch mobile app on time (February)
  - Achieve 2-hour customer support response time
  - Maintain team satisfaction scores above 4.0
  - Complete CRM integration
  - Execute 100% of planned marketing campaigns''',
      refinements: [
        Refinement(
            label: 'Achievement Focused',
            output:
                '''Q4 wins: 3 features launched early, 15% churn reduction, 120% revenue target, 25% productivity gain, 4.8/5 satisfaction. Strong quarter despite some delays.'''),
        Refinement(
            label: 'Gap Analysis',
            output:
                '''Q4: 120% revenue target, 15% churn reduction. Gaps: mobile 3 weeks behind, support response 24 hours, team burnout up 20%. Q1 focus: mobile launch, support automation.'''),
        Refinement(
            label: 'Executive Summary',
            output:
                '''Q4: Strong revenue (120% target), 3 features launched, 15% churn reduction. Q1 priorities: mobile launch, support automation, team hiring. Need \$575k additional budget.'''),
      ],
      takeaway:
          'AI structures quarterly reviews to highlight achievements while honestly addressing gaps and providing clear next steps. Balances celebration of wins with actionable improvement plans.',
    ),
  ],

  // LESSON 4 — Spot Key Takeaways
  't2_l4': [
    const Scenario(
      id: 't2_l4_s1_survey_insights',
      situation:
          'You conducted a customer satisfaction survey with 2,000 responses. The data shows various trends and patterns. You need to extract the top 3 insights that will drive product decisions.',
      prompt:
          'Analyze this customer survey data and identify the top 3 insights for product decision-making.',
      baseOutput: '''Survey Overview: 2,000 responses, 85% completion rate

Top 3 Insights:

1. Mobile Experience is Critical (78% of users primarily mobile)
   - 65% of negative feedback relates to mobile app performance
   - Users spend 3x more time on mobile vs desktop
   - Mobile conversion rate 40% lower than desktop
   - Recommendation: Prioritize mobile app improvements in next quarter

2. Customer Support Quality Drives Retention (92% correlation)
   - Customers who rated support 4+ stars had 85% retention rate
   - Support response time is biggest pain point (avg 8 hours)
   - 73% of churned customers cited poor support experience
   - Recommendation: Invest in support team and automation tools

3. Feature Complexity is Barrier to Adoption (surprising finding)
   - 62% of new users abandon during onboarding
   - Most requested feature: "simpler interface" (not more features)
   - Power users (top 20%) love advanced features, casual users overwhelmed
   - Recommendation: Create simplified user interface for new users

Actionable Recommendations:
• Allocate 40% of Q1 development budget to mobile improvements
• Increase support team by 3 people and implement 2-hour response SLA
• Design simplified onboarding flow for new users
• Create separate "advanced" and "basic" interface modes''',
      refinements: [
        Refinement(
            label: 'Mobile Priority',
            output:
                '''78% mobile users, 65% negative feedback mobile-related, 40% lower conversion. Mobile experience is critical for success.'''),
        Refinement(
            label: 'Support Impact',
            output:
                '''92% correlation between support quality and retention. 8-hour response time, 73% of churned customers cited poor support.'''),
        Refinement(
            label: 'Simplicity Need',
            output:
                '''62% abandon during onboarding, "simpler interface" most requested. Power users want advanced features, casual users overwhelmed.'''),
      ],
      takeaway:
          'AI extracts actionable insights from survey data by identifying patterns, correlations, and surprising findings. Transforms raw data into strategic recommendations for product development.',
    ),
    const Scenario(
      id: 't2_l4_s2_sales_performance',
      situation:
          'You have quarterly sales performance data across different regions and products. You need to identify the top 3 drivers of success and 2 key actions to improve performance.',
      prompt:
          'Analyze this sales performance data and identify 3 drivers of success and 2 key actions.',
      baseOutput: '''Sales Performance Analysis: Q4 2023

Top 3 Success Drivers:

1. Enterprise Segment Growth (45% of total revenue)
   - Enterprise deals up 60% vs Q3, average deal size \$250k
   - 80% of enterprise customers came from existing customer referrals
   - Sales cycle reduced from 6 months to 4 months average
   - Key factor: Strong customer success team driving referrals

2. West Coast Market Expansion (32% revenue growth)
   - New office in San Francisco driving 40% of new business
   - Local partnerships with tech companies generating leads
   - Regional sales team exceeded quota by 25%
   - Key factor: Strategic partnerships and local presence

3. Product-Led Growth (28% of new customers)
   - 40% of new customers started with free trial
   - Self-service conversion rate improved from 15% to 22%
   - Customer acquisition cost reduced by 35%
   - Key factor: Improved product onboarding and feature discovery

2 Key Actions for Q1:

1. Expand Enterprise Focus
   - Hire 3 additional enterprise sales representatives
   - Develop formal customer referral program with incentives
   - Create enterprise-specific marketing materials
   - Target: 50% revenue from enterprise segment

2. Replicate West Coast Success
   - Open new office in Austin (similar tech ecosystem)
   - Establish partnerships with local business organizations
   - Transfer successful West Coast sales strategies
   - Target: 25% revenue growth in new markets

Expected Impact:
• 30% increase in enterprise revenue
• 20% growth in new market expansion
• 15% reduction in customer acquisition costs
• 25% improvement in sales team productivity''',
      refinements: [
        Refinement(
            label: 'Revenue Focus',
            output:
                '''Enterprise: 45% of revenue, 60% growth, \$250k average deal. West Coast: 32% growth, 40% from new office. Product-led: 28% new customers, 22% conversion rate.'''),
        Refinement(
            label: 'Growth Strategy',
            output:
                '''Drivers: Enterprise referrals, West Coast expansion, product-led growth. Actions: Expand enterprise team, replicate West Coast success in Austin. 30% revenue increase expected.'''),
        Refinement(
            label: 'Executive Summary',
            output:
                '''Enterprise and West Coast driving growth. Actions: Hire 3 enterprise reps, open Austin office. Target: 30% revenue increase, 15% cost reduction.'''),
      ],
      takeaway:
          'AI analyzes sales data to identify what\'s working and creates actionable strategies to replicate success. Focuses on data-driven decisions rather than assumptions.',
    ),
    const Scenario(
      id: 't2_l4_s3_incident_postmortem',
      situation:
          'Your system experienced a major outage that affected 50,000 customers for 4 hours. You need to analyze the root causes and identify fixes to prevent future incidents.',
      prompt:
          'Analyze this incident postmortem and identify root causes and preventive fixes.',
      baseOutput: '''Incident Summary: 4-hour outage affecting 50,000 customers

Root Causes Analysis:

1. Primary Cause: Database Connection Pool Exhaustion
   - Connection pool reached maximum capacity (100 connections)
   - New connections were blocked, causing cascading failures
   - Monitoring alerts were set too high (80% threshold)
   - Root cause: Sudden traffic spike from marketing campaign

2. Secondary Cause: Inadequate Auto-scaling Configuration
   - Auto-scaling rules didn't account for connection pool limits
   - Additional servers were added but connection pool wasn't increased
   - Load balancer couldn't distribute traffic effectively
   - Root cause: Configuration mismatch between scaling and database

3. Contributing Factor: Delayed Response Time
   - First alert at 2:15 PM, incident declared at 2:45 PM
   - On-call engineer was in meeting, delayed response by 30 minutes
   - Escalation procedures not followed properly
   - Root cause: Poor incident response processes

Preventive Fixes:

1. Immediate Actions (This Week):
   - Increase database connection pool to 200 connections
   - Lower monitoring alert threshold to 60%
   - Update auto-scaling configuration to include connection pool limits
   - Implement automated connection pool scaling

2. Process Improvements (Next 2 Weeks):
   - Establish 5-minute incident response SLA
   - Create incident escalation matrix with backup contacts
   - Implement automated incident declaration based on error rates
   - Add connection pool monitoring to main dashboard

3. Long-term Improvements (Next Month):
   - Implement circuit breakers to prevent cascading failures
   - Add load testing for marketing campaign scenarios
   - Create incident response playbook with specific procedures
   - Establish post-incident review process with action tracking

Success Metrics:
• Zero outages from connection pool issues
• Incident response time under 5 minutes
• 99.9% uptime maintained during traffic spikes
• Customer satisfaction scores maintained above 4.5/5''',
      refinements: [
        Refinement(
            label: 'Technical Focus',
            output:
                '''Root cause: Database connection pool exhaustion (100 connections max). Auto-scaling didn't increase pool, monitoring alerts too high. Fix: Increase pool to 200, lower alerts to 60%.'''),
        Refinement(
            label: 'Process Issues',
            output:
                '''Technical: Connection pool exhaustion, auto-scaling mismatch. Process: 30-minute delayed response, poor escalation. Fixes: 5-minute SLA, automated alerts, escalation matrix.'''),
        Refinement(
            label: 'Action Summary',
            output:
                '''Causes: Connection pool exhaustion, auto-scaling issues, delayed response. Fixes: Increase pool capacity, improve monitoring, establish 5-minute SLA, add circuit breakers.'''),
      ],
      takeaway:
          'AI structures incident analysis to identify both technical and process root causes, then provides prioritized fixes. Ensures comprehensive incident response and prevention strategies.',
    ),
  ],

  // LESSON 5 — Write Progress Reports
  't2_l5': [
    const Scenario(
      id: 't2_l5_s1_weekly_pm',
      situation:
          'You\'re a project manager preparing a weekly status update for stakeholders. Include current status, risks, and specific asks for support or decisions needed.',
      prompt:
          'Write a weekly project manager update with status, risks, and asks.',
      baseOutput: '''Weekly Project Update: AI Analytics Platform
Week 8 of 12 (67% complete)

Current Status:
• Development: 67% complete (on track)
• Testing: 45% complete (slightly behind)
• Documentation: 80% complete (ahead of schedule)
• Budget: 72% spent (within 5% of planned)

This Week's Progress:
✅ Completed user authentication system
✅ Finished mobile app beta testing
✅ Delivered API documentation to frontend team
✅ Conducted security review (passed with minor findings)

Next Week's Plan:
• Complete integration testing (3 days)
• Begin user acceptance testing (2 days)
• Finalize marketing materials
• Prepare launch checklist

Current Risks:
1. HIGH: User acceptance testing may take longer than planned
   - Impact: Could delay launch by 1 week
   - Mitigation: Adding 2 additional QA resources

2. MEDIUM: Marketing campaign timeline is tight
   - Impact: May not have full campaign ready for launch
   - Mitigation: Prioritizing essential materials first

3. LOW: Budget overrun risk (5% buffer remaining)
   - Impact: May need additional funding
   - Mitigation: Monitoring expenses closely

Asks for This Week:
• Decision needed: Approve additional \$25k for QA resources
• Support needed: Marketing team to prioritize launch materials
• Information needed: Legal review timeline for terms of service
• Feedback needed: Beta user feedback summary (due Friday)

Success Metrics:
• On track for March 15 launch date
• All major milestones completed on time
• Team satisfaction score: 4.2/5 (good)
• Stakeholder confidence: 85% (target: 80%)''',
      refinements: [
        Refinement(
            label: 'Status Focus',
            output:
                '''Week 8/12: 67% complete, on track. Completed auth system, mobile beta, API docs. Next: integration testing, user acceptance testing. March 15 launch target.'''),
        Refinement(
            label: 'Risk Summary',
            output:
                '''67% complete, on track. Risks: User testing may delay launch 1 week, marketing timeline tight, 5% budget buffer. Need \$25k for QA resources, marketing priority.'''),
        Refinement(
            label: 'Executive Brief',
            output:
                '''Week 8: 67% complete, March 15 launch target. Need \$25k for QA, marketing priority, legal review timeline. On track with minor risks.'''),
      ],
      takeaway:
          'AI structures weekly updates to show progress, identify risks early, and make specific asks for support. Keeps stakeholders informed and enables timely decision-making.',
    ),
    const Scenario(
      id: 't2_l5_s2_marketing_sprint',
      situation:
          'You\'re reporting on a 2-week marketing sprint. Include outcomes achieved, key metrics, and learnings for future campaigns.',
      prompt: 'Write a marketing sprint report with outcomes and metrics.',
      baseOutput: '''Marketing Sprint Report: Q1 Campaign Launch
Sprint: January 15-28, 2024

Sprint Objectives:
• Launch new product campaign to 50,000 prospects
• Generate 500 qualified leads
• Achieve 15% email open rate
• Test 3 different messaging approaches

Outcomes Achieved:
✅ Campaign launched to 52,000 prospects (104% of target)
✅ Generated 487 qualified leads (97% of target)
✅ Achieved 16.2% email open rate (108% of target)
✅ Successfully tested 3 messaging variants

Key Metrics:
• Email Open Rate: 16.2% (target: 15%, industry avg: 12%)
• Click-Through Rate: 4.8% (target: 4%, industry avg: 3.2%)
• Lead Conversion Rate: 0.94% (target: 1%, industry avg: 0.8%)
• Cost per Lead: \$45 (target: \$50, budget: \$22,500)
• Total Campaign Cost: \$21,915 (97% of budget)

Messaging Test Results:
1. "Problem-Solution" approach: 18.5% open rate, 5.2% CTR
2. "Social Proof" approach: 15.8% open rate, 4.5% CTR
3. "Feature-Benefit" approach: 14.3% open rate, 4.1% CTR

Key Learnings:
• Problem-solution messaging performs 20% better than alternatives
• Tuesday/Wednesday emails get 15% higher engagement
• Subject lines with numbers perform 25% better
• Mobile users have 40% lower conversion rate

Next Sprint Actions:
• Scale problem-solution messaging to full campaign
• Optimize for mobile conversion rates
• Test Tuesday/Wednesday send times
• Implement lead scoring improvements

Success Metrics:
• Exceeded most KPIs (open rate, CTR, cost per lead)
• Generated high-quality leads (87% meet qualification criteria)
• Under budget by 3%
• Established clear messaging winner for future campaigns''',
      refinements: [
        Refinement(
            label: 'Performance Summary',
            output:
                '''Sprint results: 52k prospects, 487 leads, 16.2% open rate, \$45 cost per lead. Problem-solution messaging won (18.5% open rate). Under budget by 3%.'''),
        Refinement(
            label: 'Key Insights',
            output:
                '''Exceeded targets: 16.2% open rate, 4.8% CTR, \$45 cost per lead. Problem-solution messaging 20% better. Tuesday/Wednesday emails 15% higher engagement.'''),
        Refinement(
            label: 'Action Items',
            output:
                '''Results: 487 leads, 16.2% open rate, under budget. Learnings: Problem-solution messaging best, Tuesday/Wednesday timing optimal. Next: Scale winning approach, optimize mobile.'''),
      ],
      takeaway:
          'AI structures marketing reports to show clear outcomes, identify what worked, and provide actionable insights for future campaigns. Focuses on data-driven optimization.',
    ),
    const Scenario(
      id: 't2_l5_s3_data_analysis',
      situation:
          'You completed a data analysis project examining user behavior patterns. You need to summarize key insights and recommend next steps for testing or implementation.',
      prompt:
          'Write a data analysis summary with key insights and next testing steps.',
      baseOutput: '''Data Analysis Summary: User Behavior Patterns
Analysis Period: December 2023 (30 days)
Dataset: 100,000 active users, 2.5M user sessions

Key Insights:

1. User Engagement Patterns
   - Peak usage: 2-4 PM daily (40% of sessions)
   - Weekend usage 60% lower than weekdays
   - Mobile users 3x more likely to abandon during onboarding
   - Power users (top 10%) account for 45% of total engagement

2. Feature Adoption Trends
   - Most popular feature: Dashboard customization (78% adoption)
   - Least used: Advanced analytics (12% adoption)
   - Feature discovery: 65% find features through help documentation
   - Time to first value: 15 minutes average (target: 10 minutes)

3. Conversion Funnel Analysis
   - Signup to first action: 85% completion rate
   - First action to 7-day retention: 45% (industry avg: 35%)
   - 7-day to 30-day retention: 28% (industry avg: 25%)
   - Main drop-off point: Feature complexity (40% of abandonments)

4. Revenue Impact Findings
   - Users who complete onboarding: 3x more likely to upgrade
   - Power users: 8x more likely to purchase premium features
   - Mobile users: 50% less likely to upgrade than desktop
   - Feature usage correlates strongly with upgrade probability

Next Testing Steps:

1. A/B Test: Simplified Onboarding Flow
   - Hypothesis: Reducing onboarding steps will increase completion rate
   - Test: 5-step vs 3-step onboarding process
   - Success metric: 7-day retention rate
   - Timeline: 2 weeks, 10,000 users

2. Feature Discovery Experiment
   - Hypothesis: In-app feature discovery will increase adoption
   - Test: Guided tour vs help documentation
   - Success metric: Feature adoption rate
   - Timeline: 3 weeks, 15,000 users

3. Mobile Optimization Test
   - Hypothesis: Mobile-specific features will increase upgrade rate
   - Test: Mobile-first interface vs responsive design
   - Success metric: Mobile upgrade rate
   - Timeline: 4 weeks, 20,000 users

Expected Outcomes:
• 20% increase in onboarding completion rate
• 15% improvement in feature adoption
• 25% increase in mobile upgrade rate
• 10% overall improvement in user retention

Implementation Priority:
1. Simplified onboarding (highest impact, lowest effort)
2. Mobile optimization (high impact, medium effort)
3. Feature discovery (medium impact, high effort)''',
      refinements: [
        Refinement(
            label: 'Engagement Insights',
            output:
                '''Peak usage 2-4 PM, weekends 60% lower, mobile 3x more likely to abandon. Power users (10%) drive 45% engagement. Dashboard customization most popular (78% adoption).'''),
        Refinement(
            label: 'Testing Plan',
            output:
                '''Key findings: Mobile abandonment, feature complexity drop-off, onboarding impact on upgrades. Tests: Simplified onboarding, feature discovery, mobile optimization.'''),
        Refinement(
            label: 'Action Summary',
            output:
                '''Insights: Mobile abandonment high, feature complexity barrier, onboarding critical for upgrades. Next: A/B test simplified onboarding, mobile optimization, feature discovery.'''),
      ],
      takeaway:
          'AI transforms data analysis into actionable insights by identifying patterns, correlations, and opportunities for testing. Provides clear next steps for data-driven product improvements.',
    ),
  ],
};
