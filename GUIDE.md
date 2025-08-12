# Project Guide: Quantitative Social Science Course Website

This guide provides step-by-step instructions for maintaining and updating your Hugo Blogdown-based course website. Follow these instructions to add or edit exams, problem sets, weeks, schedule, tutorials, data, and lectures.

---

## Table of Contents

- [General Structure](#general-structure)
- [Adding or Editing Exams](#adding-or-editing-exams)
- [Adding or Editing Problem Sets](#adding-or-editing-problem-sets)
- [Editing Weeks](#editing-weeks)
- [Editing the Schedule](#editing-the-schedule)
- [Adding or Editing Tutorials](#adding-or-editing-tutorials)
- [Adding New Data Files](#adding-new-data-files)
- [Placing Lectures](#placing-lectures)
- [Markdown Header Info](#markdown-header-info)

---

## General Structure

- **Exams:** `content/exams/`
- **Problem Sets:** `content/problemsets/`
- **Weeks:** `content/weeks/`
- **Schedule Data:** `data/schedule.yaml`
- **Tutorials:** `content/tutorials/`
- **Lectures (PDFs, slides):** `static/lectures/`
- **Data files:** `static/data/` or `data/`

---

## Adding or Editing Exams

1. Go to `content/exams/`.
2. Add a new `.Rmd` or `.md` file for your exam, e.g. `psc4375_s25_exam3.Rmd`.
3. Use the header info template below (see [Markdown Header Info](#markdown-header-info)).
4. To link the exam in the schedule, update `data/schedule.yaml` under the relevant week, in the `assignments` section:

   ```yaml
   assignments:
     - name:
         "Exam 3"

         # Name of the .Rmd file created(if it is .pdf specify)
       link: "/exams/psc4375_s25_exam3"
       due: 2025-12-15
   ```

---

## Adding or Editing Problem Sets

1. Go to `content/problemsets/`.
2. Add a new `.Rmd` or `.md` file, e.g. `psc4375_s25_pset5.Rmd`.
3. Use the header info template below.
4. Update `data/schedule.yaml` for the relevant week:

   ```yaml
   assignments:
     - name:
         "Problem Set 5"

         # Name of the .Rmd file created(if it is .pdf specify)
       link: "/problemsets/psc4375_s25_pset5"
       due: 2025-10-10
   ```

---

## Editing Weeks

1. Go to `content/weeks/`.
2. Each week has a markdown file, e.g. `01-intro.md`, `02-causality-randomized.md`, etc.
3. Edit the file to update the week’s title, date, or content.
4. To add a new week, copy an existing file and update the front matter:

   ```markdown
   ---
   title: "Your Week Title"
   
   /*Must [For left panel to show weeknm, and template to match data/schedule.yaml content and associated markdown for week]*/
   
   linktitle: "N: Short Title"
   week_id: "XX-custom-id"
   
   date: YYYY-MM-DD
   menu:
     weeks:
       parent: Weeks
       weight: N
   
    /*Must [Predefined layout looks into week_id and places content within the built file]*/
   type: weeks
   ---
   ```

5. Update `data/schedule.yaml` to add the new week’s metadata.

---

## Editing the Schedule

1. Open `data/schedule.yaml`.
2. Each week is an entry under `lessons:`.
3. Add or edit fields such as `title`, `date`, `week`, `assignments`, `readings`, `slides`, `classMaterials`, etc.
4. Example:
   ```yaml
   - title: "Probability: Basics"
     weeknum: 9
     date: 2025-03-17
     week: "10-probability-basics"
     assignments:
       - name: "QSS Tidyverse Tutorial 7"
         due: 2025-03-18
   ```

---

## Adding or Editing Tutorials

1. Go to `content/tutorials/`.
2. Add a new `.Rmd` or `.md` file, e.g. `tutorial7.Rmd`.
3. Use the header info template below.
4. Link the tutorial in `data/schedule.yaml` under the relevant week’s `assignments` or `classMaterials`.

---

## Adding New Data Files

- For downloadable datasets, place files in `static/data/`.
- For data used by the site (e.g., YAML, TOML), use the `data/` directory.
- Reference data files in your content or schedule as needed.
- Either run `R/files.R`, or manually update `data/files.yaml`.

---

## Placing Lectures

- Place lecture slides (PDFs, etc.) in `static/lectures/`.
- Reference them in `data/schedule.yaml` under the `slides` section for the relevant week:
  ```yaml
  slides:
    - day: "Monday"
      name: "Lecture 1"
      link: "/lectures/lecture1.pdf"
  ```

---

## Markdown Header Info (Front Matter)

For any new week, exam, problem set, or tutorial, use this template at the top of your `.md` or `.Rmd` file:

```markdown
---
title: "Descriptive Title"
linktitle: "Short Nav Title"
week_id: "unique-week-or-content-id" # Only for weeks
slug: "short-url-slug" # Optional, for nice URLs, this file shall be referenced with it
summary: "Short summary of the content"
date: YYYY-MM-DD
menu:
  weeks:
    parent: Weeks
    weight: N
layout: single # or another layout if needed
type: weeks # or exams or none for default
output:
  blogdown::html_page:
    toc: TRUE
---
```

- Adjust fields as needed for the content type.
- For weeks, be sure to set `week_id` to match the `week` field in `data/schedule.yaml`.
- For exams/problem sets/tutorials, use `slug` and `summary` for better navigation.

---

For further customization, see the Hugo Academic theme documentation or your site’s README.
