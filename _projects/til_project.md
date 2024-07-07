---
layout: page
title: AI Competition Champions!
description: Defence Science and Technology Agency - Today I Learnt AI Competition, Advanced Category Champions
img: assets/img/award.jpg
importance: 1
category: fun
related_publications: false
---

Thrilled to be crowned the Champions at DSTA's BrainHack: Today I Learnt - Artificial Intelligence (Advanced Track) competition! 

After two years serving in the army, our team, Team Anti Heroes, was excited to finally get our hands dirty and train some machine learning models! Over 4 weeks from May-June, we managed to develop resilient models to solve 3 different tasks (Vision Language Models, Natural Language Processing and Automatic Speech Recognition), which culminated in a final robotics segment, where we controlled a DJI Robomaster turret to identify targets based on audio instructions. 


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/til_team.jpg" title="TIL Team" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/til_medal.jpg" title="TIL Medal" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/dji.jpg" title="DJI Robot" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Left: Team Anti Heroes. Middle: DSTA Brainhack TIL Medal. Right: DJI Robomaster used in competition.
</div>

Due to work commitments while serving in the army, I haven't had the opportunity to learn about the latest developments in AI, and this competition really accelerated my learning in the fields of computer vision, natural language processing and automatic speech recognition. Gone are the days where training simple LSTMs, or CNN-based architectures were sufficient in winning these AI competitions, which is really testament to how fast this field is evolving.

I especially enjoyed working on the vision language model tasks, where I developed a two-step object detection and captioning model for our team, which significantly outperformed many of the end-to-end models such as OwlViT and Grounding Dino on the test set.

<div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/simulator.jpg" title="Simulator" class="img-fluid rounded z-depth-1" %}
</div>
<div class="caption">
    Simulated testing environment before finals.
</div>

One of the challenges I faced was our limited compute power. We soley relied on the Tesla T4 GPU provided to us on the Google Cloud Platform, which resulted in our slow training times, while other teams were training on their local GPUs or more powerful cloud-based GPUs. However, this also proved to be our team's advantage, as we had to use smaller and more suitable models, which improved our inference times during our robotics evaluation, and allowed our model to generalize better.

I also gained valuable exposure into how machine learning models can be deployed, via Google's Artifact Registry and Docker containers, which I found pretty interesting.

Will definitely be keeping myself updated on exciting developments in machine learning in the years to come!

<div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/ceremony.jpg" title="Ceremony" class="img-fluid rounded z-depth-1" %}
</div>
<div class="caption">
    Prize Presentation Ceremony, with GOH Senior Minister of State for Defence of Singapore, Mr. Heng Chee How
</div>

Github Repository: <a href="https://github.com/jzh001/til-ai-2024">https://github.com/jzh001/til-ai-2024</a>

## References
- Images from <a href="https://www.linkedin.com/posts/angelhack_ai-brainhack2024-activity-7211322385407311873-p34h?utm_source=share&utm_medium=member_desktop">AngelHack LinkedIn Post</a>
