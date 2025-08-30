# Corruption Perception Index 2024 - World Map Visualization

This project visualizes the **Corruption Perception Index (CPI) 2024** across countries using a world map. The CPI measures the perceived levels of public sector corruption worldwide, compiled by **Transparency International**.


## 📊 Overview

- **Dataset:** Transparency International - CPI 2024  
- **Countries Covered:** All countries with available CPI data  
- **Purpose:** To provide a clear visual representation of corruption perception around the world.  

## 🗺️ Features

- **Choropleth World Map:** Each country is colored based on its CPI score.  
- **Color Scale:** `viridis` color palette (plasma) for perceptual uniformity and colorblind-friendliness.  
- **Missing Data:** Countries without CPI data are shown in grey.  
- **Clean Design:** Axes and grids removed for a map-focused presentation.  
- **Fixed Aspect Ratio:** Maintains correct geographic proportions with `coord_fixed()`.

## 🔧 Implementation

The visualization is built in **R** using the following packages:

- `ggplot2` — For creating the map and plotting polygons.  
- `maps` — Provides world map coordinates.  
- `tidyverse` — For data manipulation and joining CPI data with map coordinates.  
- `viridis` — For an intuitive and colorblind friendly color scale.

