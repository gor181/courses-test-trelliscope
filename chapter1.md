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
success_msg("nothing to see here")
```
