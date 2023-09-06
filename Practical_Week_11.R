dat <- tibble(
  uniform = runif(200, 10, 20),
  binomial = rbinom(200, 12, 0.4),
  poisson = rpois(200, 10),
  exponential = rexp(200, rate = 1),
  normal = rnorm(200, mean = 100, sd = 15)
)

ggplot(data = dat, aes(sample = exponential)) +
  geom_qq() +
  geom_qq_line()

#Q1 b
prac <- read.csv("D:\\Learn\\STAT1371\\WEEK 11\\prac_q1.csv")
prac_longer <- prac %>% 
  pivot_longer(cols = everything(),
               values_to = "values",
               names_to = "dist")

ggplot(data = prac_longer, aes(sample = values)) +
         geom_qq()+
         geom_qq_line()+
         facet_wrap(vars(dist), scale = "free")
#Q2a
wt_peas <- tibble(weight_g = c(354, 372, 333, 366, 333, 357, 351, 366, 339, 339, 342))
t.test(wt_peas$weight_g, mu = 360, conf.level = 0.95, alternative = "less")

#2b
qq_weight <- ggplot(data = wt_peas, aes(sample = weight_g)) +
  geom_qq() +
  geom_qq_line()

box_weight <- ggplot(data = wt_peas) +
  geom_boxplot(aes(y = weight_g))

library(patchwork)
qq_weight + box_weight

#Q3
options(pillar.sigfig = 7)
dat <- data.frame(oat_bran_free = c(4.61, 5.42, 5.40, 4.54, 3.98, 3.82, 5.01, 4.34,
                                    3.80, 4.56, 5.35, 3.89, 3.25, 4.24),
                  oat_bran = c(3.64, 5.57, 4.85, 4.80, 3.68, 2.96, 4.41, 3.72, 3.49,
                               3.84, 5.46, 3.53, 1.84, 4.14))
dat_tidy <- dat %>%
  pivot_longer(col = everything(),
               values_to = "cholesterol",
               names_to = "diet")
dat_tidy %>%
  group_by(diet) %>%
  summarise(n = n(), mu = mean(cholesterol), sd = sd(cholesterol))

p1 <- ggplot(data = dat) +
  geom_boxplot(aes(x = cholesterol , y = diet))
p2 <- ggplot(data = dat, aes(sample = cholesterol)) +
  geom_qq() +
  geom_qq_line() +
    face_wrap(~diet, scales = "free")
p1/p2

library(patchwork)
qq_weight + box_weight