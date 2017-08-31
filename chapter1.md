
--- type:NormalExercise lang:r xp:100 skills:1 key:67cac04f22
## Using facet_trelliscope()

This example creates a ggplot, then calls `facet_trelliscope()`.

*** =instructions

- Run the code to draw the plot.

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
