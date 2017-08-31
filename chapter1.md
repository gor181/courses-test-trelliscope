
--- type:PlainMultipleChoiceExercise lang:r xp:50 skills:1 key:0ca7223a49
## The problems

What problems will the [Visualizing Big Data with trelliscope](https://github.com//datacamp/courses-visualizing-big-data-with-trelliscope) course face?

*** =instructions

- Although the code runs, the plots aren't appearing.
- I'm not sure how to test that a plot works OK; new SCTs maybe needed.
- All of the above.

*** =hint

*** =pre_exercise_code
```{r}

```

*** =sct
```{r}
test_mc(3)
```


--- type:NormalExercise lang:r xp:100 skills:1 key:67cac04f22
## Using facet_trelliscope()

This example creates a ggplot, then calls `facet_trelliscope()`.

More examples here: https://hafen.github.io/trelliscopejs

*** =instructions

- Run the code to draw the plot. A plot should appear in an HTML pane.

*** =hint

*** =pre_exercise_code
```{r}
library(trelliscopejs)
library(ggplot2)
```

*** =sample_code
```{r}
library(trelliscopejs)
library(ggplot2)

# Make a regular ggplot
ggplot(CO2, aes(conc, uptake)) + 
  geom_point() + 
  # Then use facet_trelliscope()
  facet_trelliscope(~ Plant)
```

*** =solution
```{r}
library(trelliscopejs)
library(ggplot2)

# Make a regular ggplot
ggplot(CO2, aes(conc, uptake)) + 
  geom_point() + 
  # Then use facet_trelliscope()
  facet_trelliscope(~ Plant)
```

*** =sct
```{r}

```

--- type:NormalExercise lang:r xp:100 skills:1 key:50367f2327
## An rbokeh single panel example

This example creates a plot using rbokeh's `figure()` function.

More examples here: https://hafen.github.io/rbokeh

*** =instructions

- Run the code to draw the plot. A plot should appear in an HTML pane.

*** =hint

*** =pre_exercise_code
```{r}

```

*** =sample_code
```{r}
library(rbokeh)
library(dplyr)

# Draw a bokeh plot
CO2 %>% 
  figure() %>% 
  ly_points(conc, uptake)
```

*** =solution
```{r}
library(rbokeh)
library(dplyr)

# Draw a bokeh plot
CO2 %>% 
  figure() %>% 
  ly_points(conc, uptake)
```

*** =sct
```{r}

```
--- type:NormalExercise lang:r xp:100 skills:1 key:9e3f412c5f
## An rbokeh grid_plot() example


*** =instructions

- Run the code to draw the plot. A plot should appear in an HTML pane.

*** =hint

*** =pre_exercise_code
```{r}

```

*** =sample_code
```{r}
library(rbokeh)
library(dplyr)

# Create a bokeh plot for each Plant subset
plots <- lapply(
  levels(CO2$Plant), 
  function(plant) {
    CO2 %>% 
      filter(Plant == plant) %>% 
      figure() %>% 
      ly_points(conc, uptake)
  }
)
# Draw them in a grid
grid_plot(plots, nrow = 3)
```

*** =solution
```{r}
library(rbokeh)
library(dplyr)

# Create a bokeh plot for each Plant subset
plots <- lapply(
  levels(CO2$Plant), 
  function(plant) {
    CO2 %>% 
      filter(Plant == plant) %>% 
      figure() %>% 
      ly_points(conc, uptake)
  }
)
# Draw them in a grid
grid_plot(plots, nrow = 3)
```

*** =sct
```{r}

```
