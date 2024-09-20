{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "85bcdea1",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:30.426498Z",
     "iopub.status.busy": "2024-09-20T15:29:30.423182Z",
     "iopub.status.idle": "2024-09-20T15:29:30.823979Z",
     "shell.execute_reply": "2024-09-20T15:29:30.821774Z"
    },
    "papermill": {
     "duration": 0.412098,
     "end_time": "2024-09-20T15:29:30.827266",
     "exception": false,
     "start_time": "2024-09-20T15:29:30.415168",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-01-16</td><td>A1504</td><td>119</td><td>107</td><td> 12</td><td>51.14</td><td>419.67</td><td>5</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-01-10</td><td>A1030</td><td>170</td><td> 69</td><td>101</td><td>46.05</td><td>418.78</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-01-29</td><td>A1200</td><td> 60</td><td> 52</td><td>  8</td><td>39.03</td><td>497.31</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-01-30</td><td>A1289</td><td>150</td><td>128</td><td> 22</td><td>54.46</td><td>879.29</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-01-06</td><td>A1313</td><td>110</td><td> 95</td><td> 15</td><td>32.10</td><td>605.58</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-01-09</td><td>A1345</td><td>148</td><td> 59</td><td> 89</td><td>46.16</td><td>647.53</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-01-16 & A1504 & 119 & 107 &  12 & 51.14 & 419.67 & 5\\\\\n",
       "\t2 & 2024-01-10 & A1030 & 170 &  69 & 101 & 46.05 & 418.78 & 4\\\\\n",
       "\t3 & 2024-01-29 & A1200 &  60 &  52 &   8 & 39.03 & 497.31 & 2\\\\\n",
       "\t4 & 2024-01-30 & A1289 & 150 & 128 &  22 & 54.46 & 879.29 & 4\\\\\n",
       "\t5 & 2024-01-06 & A1313 & 110 &  95 &  15 & 32.10 & 605.58 & 1\\\\\n",
       "\t6 & 2024-01-09 & A1345 & 148 &  59 &  89 & 46.16 & 647.53 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-01-16 | A1504 | 119 | 107 |  12 | 51.14 | 419.67 | 5 |\n",
       "| 2 | 2024-01-10 | A1030 | 170 |  69 | 101 | 46.05 | 418.78 | 4 |\n",
       "| 3 | 2024-01-29 | A1200 |  60 |  52 |   8 | 39.03 | 497.31 | 2 |\n",
       "| 4 | 2024-01-30 | A1289 | 150 | 128 |  22 | 54.46 | 879.29 | 4 |\n",
       "| 5 | 2024-01-06 | A1313 | 110 |  95 |  15 | 32.10 | 605.58 | 1 |\n",
       "| 6 | 2024-01-09 | A1345 | 148 |  59 |  89 | 46.16 | 647.53 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-01-16 A1504   119        107            12            51.14        \n",
       "2 2024-01-10 A1030   170         69           101            46.05        \n",
       "3 2024-01-29 A1200    60         52             8            39.03        \n",
       "4 2024-01-30 A1289   150        128            22            54.46        \n",
       "5 2024-01-06 A1313   110         95            15            32.10        \n",
       "6 2024-01-09 A1345   148         59            89            46.16        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 419.67     5                   \n",
       "2 418.78     4                   \n",
       "3 497.31     2                   \n",
       "4 879.29     4                   \n",
       "5 605.58     1                   \n",
       "6 647.53     3                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-02-02</td><td>A1921</td><td>147</td><td> 87</td><td> 60</td><td>27.02</td><td>221.14</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-02-07</td><td>A1186</td><td>175</td><td>106</td><td> 69</td><td>25.85</td><td>749.26</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-02-11</td><td>A1379</td><td> 58</td><td> 56</td><td>  2</td><td>17.55</td><td>606.89</td><td>5</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-02-10</td><td>A1030</td><td>102</td><td> 84</td><td> 18</td><td>53.72</td><td>522.77</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-02-07</td><td>A1920</td><td>161</td><td> 41</td><td>120</td><td>16.60</td><td>826.24</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-02-25</td><td>A1674</td><td> 93</td><td> 68</td><td> 25</td><td>53.74</td><td>687.73</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-02-02 & A1921 & 147 &  87 &  60 & 27.02 & 221.14 & 2\\\\\n",
       "\t2 & 2024-02-07 & A1186 & 175 & 106 &  69 & 25.85 & 749.26 & 1\\\\\n",
       "\t3 & 2024-02-11 & A1379 &  58 &  56 &   2 & 17.55 & 606.89 & 5\\\\\n",
       "\t4 & 2024-02-10 & A1030 & 102 &  84 &  18 & 53.72 & 522.77 & 2\\\\\n",
       "\t5 & 2024-02-07 & A1920 & 161 &  41 & 120 & 16.60 & 826.24 & 1\\\\\n",
       "\t6 & 2024-02-25 & A1674 &  93 &  68 &  25 & 53.74 & 687.73 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-02-02 | A1921 | 147 |  87 |  60 | 27.02 | 221.14 | 2 |\n",
       "| 2 | 2024-02-07 | A1186 | 175 | 106 |  69 | 25.85 | 749.26 | 1 |\n",
       "| 3 | 2024-02-11 | A1379 |  58 |  56 |   2 | 17.55 | 606.89 | 5 |\n",
       "| 4 | 2024-02-10 | A1030 | 102 |  84 |  18 | 53.72 | 522.77 | 2 |\n",
       "| 5 | 2024-02-07 | A1920 | 161 |  41 | 120 | 16.60 | 826.24 | 1 |\n",
       "| 6 | 2024-02-25 | A1674 |  93 |  68 |  25 | 53.74 | 687.73 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-02-02 A1921   147         87            60            27.02        \n",
       "2 2024-02-07 A1186   175        106            69            25.85        \n",
       "3 2024-02-11 A1379    58         56             2            17.55        \n",
       "4 2024-02-10 A1030   102         84            18            53.72        \n",
       "5 2024-02-07 A1920   161         41           120            16.60        \n",
       "6 2024-02-25 A1674    93         68            25            53.74        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 221.14     2                   \n",
       "2 749.26     1                   \n",
       "3 606.89     5                   \n",
       "4 522.77     2                   \n",
       "5 826.24     1                   \n",
       "6 687.73     4                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-03-29</td><td>A1024</td><td> 80</td><td> 57</td><td> 23</td><td>13.46</td><td>759.96</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-03-18</td><td>A1058</td><td>181</td><td>121</td><td> 60</td><td>53.78</td><td>218.84</td><td>5</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-03-11</td><td>A1435</td><td>191</td><td>148</td><td> 43</td><td>39.03</td><td>566.16</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-03-13</td><td>A1395</td><td>163</td><td> 60</td><td>103</td><td>39.83</td><td>312.83</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-03-07</td><td>A1678</td><td>183</td><td> 74</td><td>109</td><td>18.07</td><td>231.97</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-03-07</td><td>A1438</td><td> 84</td><td> 48</td><td> 36</td><td>51.88</td><td>626.81</td><td>5</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-03-29 & A1024 &  80 &  57 &  23 & 13.46 & 759.96 & 3\\\\\n",
       "\t2 & 2024-03-18 & A1058 & 181 & 121 &  60 & 53.78 & 218.84 & 5\\\\\n",
       "\t3 & 2024-03-11 & A1435 & 191 & 148 &  43 & 39.03 & 566.16 & 2\\\\\n",
       "\t4 & 2024-03-13 & A1395 & 163 &  60 & 103 & 39.83 & 312.83 & 1\\\\\n",
       "\t5 & 2024-03-07 & A1678 & 183 &  74 & 109 & 18.07 & 231.97 & 4\\\\\n",
       "\t6 & 2024-03-07 & A1438 &  84 &  48 &  36 & 51.88 & 626.81 & 5\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-03-29 | A1024 |  80 |  57 |  23 | 13.46 | 759.96 | 3 |\n",
       "| 2 | 2024-03-18 | A1058 | 181 | 121 |  60 | 53.78 | 218.84 | 5 |\n",
       "| 3 | 2024-03-11 | A1435 | 191 | 148 |  43 | 39.03 | 566.16 | 2 |\n",
       "| 4 | 2024-03-13 | A1395 | 163 |  60 | 103 | 39.83 | 312.83 | 1 |\n",
       "| 5 | 2024-03-07 | A1678 | 183 |  74 | 109 | 18.07 | 231.97 | 4 |\n",
       "| 6 | 2024-03-07 | A1438 |  84 |  48 |  36 | 51.88 | 626.81 | 5 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-03-29 A1024    80         57            23            13.46        \n",
       "2 2024-03-18 A1058   181        121            60            53.78        \n",
       "3 2024-03-11 A1435   191        148            43            39.03        \n",
       "4 2024-03-13 A1395   163         60           103            39.83        \n",
       "5 2024-03-07 A1678   183         74           109            18.07        \n",
       "6 2024-03-07 A1438    84         48            36            51.88        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 759.96     3                   \n",
       "2 218.84     5                   \n",
       "3 566.16     2                   \n",
       "4 312.83     1                   \n",
       "5 231.97     4                   \n",
       "6 626.81     5                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-04-04</td><td>A1583</td><td> 63</td><td> 61</td><td> 2</td><td>56.13</td><td>617.43</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-04-16</td><td>A1881</td><td>195</td><td>171</td><td>24</td><td>29.19</td><td>647.87</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-04-05</td><td>A1545</td><td> 92</td><td> 44</td><td>48</td><td>33.93</td><td>327.31</td><td>5</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-04-01</td><td>A1684</td><td>157</td><td>105</td><td>52</td><td>11.04</td><td>868.88</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-04-11</td><td>A1759</td><td> 97</td><td> 78</td><td>19</td><td>42.15</td><td>409.07</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-04-08</td><td>A1641</td><td> 58</td><td> 50</td><td> 8</td><td>14.60</td><td>428.56</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-04-04 & A1583 &  63 &  61 &  2 & 56.13 & 617.43 & 1\\\\\n",
       "\t2 & 2024-04-16 & A1881 & 195 & 171 & 24 & 29.19 & 647.87 & 4\\\\\n",
       "\t3 & 2024-04-05 & A1545 &  92 &  44 & 48 & 33.93 & 327.31 & 5\\\\\n",
       "\t4 & 2024-04-01 & A1684 & 157 & 105 & 52 & 11.04 & 868.88 & 2\\\\\n",
       "\t5 & 2024-04-11 & A1759 &  97 &  78 & 19 & 42.15 & 409.07 & 4\\\\\n",
       "\t6 & 2024-04-08 & A1641 &  58 &  50 &  8 & 14.60 & 428.56 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-04-04 | A1583 |  63 |  61 |  2 | 56.13 | 617.43 | 1 |\n",
       "| 2 | 2024-04-16 | A1881 | 195 | 171 | 24 | 29.19 | 647.87 | 4 |\n",
       "| 3 | 2024-04-05 | A1545 |  92 |  44 | 48 | 33.93 | 327.31 | 5 |\n",
       "| 4 | 2024-04-01 | A1684 | 157 | 105 | 52 | 11.04 | 868.88 | 2 |\n",
       "| 5 | 2024-04-11 | A1759 |  97 |  78 | 19 | 42.15 | 409.07 | 4 |\n",
       "| 6 | 2024-04-08 | A1641 |  58 |  50 |  8 | 14.60 | 428.56 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-04-04 A1583    63         61            2             56.13        \n",
       "2 2024-04-16 A1881   195        171           24             29.19        \n",
       "3 2024-04-05 A1545    92         44           48             33.93        \n",
       "4 2024-04-01 A1684   157        105           52             11.04        \n",
       "5 2024-04-11 A1759    97         78           19             42.15        \n",
       "6 2024-04-08 A1641    58         50            8             14.60        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 617.43     1                   \n",
       "2 647.87     4                   \n",
       "3 327.31     5                   \n",
       "4 868.88     2                   \n",
       "5 409.07     4                   \n",
       "6 428.56     4                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-05-01</td><td>A1812</td><td>148</td><td>48</td><td>100</td><td>50.09</td><td>295.17</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-05-12</td><td>A1577</td><td>196</td><td>72</td><td>124</td><td>12.30</td><td>298.04</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-05-26</td><td>A1536</td><td>146</td><td>99</td><td> 47</td><td>14.59</td><td>265.21</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-05-28</td><td>A1622</td><td> 89</td><td>88</td><td>  1</td><td>57.01</td><td>290.17</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-05-24</td><td>A1292</td><td> 80</td><td>75</td><td>  5</td><td>26.16</td><td>625.37</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-05-15</td><td>A1039</td><td>103</td><td>45</td><td> 58</td><td>51.53</td><td>839.16</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-05-01 & A1812 & 148 & 48 & 100 & 50.09 & 295.17 & 3\\\\\n",
       "\t2 & 2024-05-12 & A1577 & 196 & 72 & 124 & 12.30 & 298.04 & 1\\\\\n",
       "\t3 & 2024-05-26 & A1536 & 146 & 99 &  47 & 14.59 & 265.21 & 4\\\\\n",
       "\t4 & 2024-05-28 & A1622 &  89 & 88 &   1 & 57.01 & 290.17 & 1\\\\\n",
       "\t5 & 2024-05-24 & A1292 &  80 & 75 &   5 & 26.16 & 625.37 & 4\\\\\n",
       "\t6 & 2024-05-15 & A1039 & 103 & 45 &  58 & 51.53 & 839.16 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-05-01 | A1812 | 148 | 48 | 100 | 50.09 | 295.17 | 3 |\n",
       "| 2 | 2024-05-12 | A1577 | 196 | 72 | 124 | 12.30 | 298.04 | 1 |\n",
       "| 3 | 2024-05-26 | A1536 | 146 | 99 |  47 | 14.59 | 265.21 | 4 |\n",
       "| 4 | 2024-05-28 | A1622 |  89 | 88 |   1 | 57.01 | 290.17 | 1 |\n",
       "| 5 | 2024-05-24 | A1292 |  80 | 75 |   5 | 26.16 | 625.37 | 4 |\n",
       "| 6 | 2024-05-15 | A1039 | 103 | 45 |  58 | 51.53 | 839.16 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-05-01 A1812   148        48            100            50.09        \n",
       "2 2024-05-12 A1577   196        72            124            12.30        \n",
       "3 2024-05-26 A1536   146        99             47            14.59        \n",
       "4 2024-05-28 A1622    89        88              1            57.01        \n",
       "5 2024-05-24 A1292    80        75              5            26.16        \n",
       "6 2024-05-15 A1039   103        45             58            51.53        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 295.17     3                   \n",
       "2 298.04     1                   \n",
       "3 265.21     4                   \n",
       "4 290.17     1                   \n",
       "5 625.37     4                   \n",
       "6 839.16     4                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Date</th><th scope=col>AgentID</th><th scope=col>TotalCalls</th><th scope=col>AnsweredCalls</th><th scope=col>AbandonedCalls</th><th scope=col>SpeedOfAnswer</th><th scope=col>CallLength</th><th scope=col>CustomerSatisfaction</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2024-06-08</td><td>A1851</td><td>178</td><td>119</td><td> 59</td><td>38.79</td><td>222.54</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2024-06-15</td><td>A1846</td><td>152</td><td> 53</td><td> 99</td><td>29.96</td><td>707.99</td><td>5</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2024-06-17</td><td>A1178</td><td> 70</td><td> 52</td><td> 18</td><td>49.43</td><td>606.64</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2024-06-29</td><td>A1029</td><td>180</td><td>109</td><td> 71</td><td>10.21</td><td>436.68</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2024-06-12</td><td>A1077</td><td> 57</td><td> 54</td><td>  3</td><td>17.46</td><td>349.67</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2024-06-26</td><td>A1804</td><td>186</td><td> 86</td><td>100</td><td>36.90</td><td>603.82</td><td>5</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & Date & AgentID & TotalCalls & AnsweredCalls & AbandonedCalls & SpeedOfAnswer & CallLength & CustomerSatisfaction\\\\\n",
       "  & <chr> & <chr> & <int> & <int> & <int> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2024-06-08 & A1851 & 178 & 119 &  59 & 38.79 & 222.54 & 1\\\\\n",
       "\t2 & 2024-06-15 & A1846 & 152 &  53 &  99 & 29.96 & 707.99 & 5\\\\\n",
       "\t3 & 2024-06-17 & A1178 &  70 &  52 &  18 & 49.43 & 606.64 & 1\\\\\n",
       "\t4 & 2024-06-29 & A1029 & 180 & 109 &  71 & 10.21 & 436.68 & 2\\\\\n",
       "\t5 & 2024-06-12 & A1077 &  57 &  54 &   3 & 17.46 & 349.67 & 1\\\\\n",
       "\t6 & 2024-06-26 & A1804 & 186 &  86 & 100 & 36.90 & 603.82 & 5\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | Date &lt;chr&gt; | AgentID &lt;chr&gt; | TotalCalls &lt;int&gt; | AnsweredCalls &lt;int&gt; | AbandonedCalls &lt;int&gt; | SpeedOfAnswer &lt;dbl&gt; | CallLength &lt;dbl&gt; | CustomerSatisfaction &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2024-06-08 | A1851 | 178 | 119 |  59 | 38.79 | 222.54 | 1 |\n",
       "| 2 | 2024-06-15 | A1846 | 152 |  53 |  99 | 29.96 | 707.99 | 5 |\n",
       "| 3 | 2024-06-17 | A1178 |  70 |  52 |  18 | 49.43 | 606.64 | 1 |\n",
       "| 4 | 2024-06-29 | A1029 | 180 | 109 |  71 | 10.21 | 436.68 | 2 |\n",
       "| 5 | 2024-06-12 | A1077 |  57 |  54 |   3 | 17.46 | 349.67 | 1 |\n",
       "| 6 | 2024-06-26 | A1804 | 186 |  86 | 100 | 36.90 | 603.82 | 5 |\n",
       "\n"
      ],
      "text/plain": [
       "  Date       AgentID TotalCalls AnsweredCalls AbandonedCalls SpeedOfAnswer\n",
       "1 2024-06-08 A1851   178        119            59            38.79        \n",
       "2 2024-06-15 A1846   152         53            99            29.96        \n",
       "3 2024-06-17 A1178    70         52            18            49.43        \n",
       "4 2024-06-29 A1029   180        109            71            10.21        \n",
       "5 2024-06-12 A1077    57         54             3            17.46        \n",
       "6 2024-06-26 A1804   186         86           100            36.90        \n",
       "  CallLength CustomerSatisfaction\n",
       "1 222.54     1                   \n",
       "2 707.99     5                   \n",
       "3 606.64     1                   \n",
       "4 436.68     2                   \n",
       "5 349.67     1                   \n",
       "6 603.82     5                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Load datasets for each month\n",
    "\n",
    "jan_records <- read.csv(\"/kaggle/input/call-center-data/Jan.csv\")\n",
    "head(jan_records)\n",
    "\n",
    "feb_records <- read.csv(\"/kaggle/input/call-center-data/Feb.csv\")\n",
    "head(feb_records)\n",
    "\n",
    "mar_records <- read.csv(\"/kaggle/input/call-center-data/Mar.csv\")\n",
    "head(mar_records)\n",
    "\n",
    "apr_records <- read.csv(\"/kaggle/input/call-center-data/April.csv\")\n",
    "head(apr_records)\n",
    "\n",
    "may_records <- read.csv(\"/kaggle/input/call-center-data/May.csv\")\n",
    "head(may_records)\n",
    "\n",
    "jun_records <- read.csv(\"/kaggle/input/call-center-data/June.csv\")\n",
    "head(jun_records)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "25c4bbc9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:30.879575Z",
     "iopub.status.busy": "2024-09-20T15:29:30.841525Z",
     "iopub.status.idle": "2024-09-20T15:29:32.238373Z",
     "shell.execute_reply": "2024-09-20T15:29:32.236319Z"
    },
    "papermill": {
     "duration": 1.408635,
     "end_time": "2024-09-20T15:29:32.241800",
     "exception": false,
     "start_time": "2024-09-20T15:29:30.833165",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "## Load packages\n",
    "\n",
    "# tidyverse\n",
    "library(tidyverse)\n",
    "\n",
    "# dplyr\n",
    "library(dplyr)\n",
    "\n",
    "# ggplot2\n",
    "library (ggplot2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d99b3183",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:32.259715Z",
     "iopub.status.busy": "2024-09-20T15:29:32.257173Z",
     "iopub.status.idle": "2024-09-20T15:29:33.160381Z",
     "shell.execute_reply": "2024-09-20T15:29:33.156953Z"
    },
    "papermill": {
     "duration": 0.915716,
     "end_time": "2024-09-20T15:29:33.163825",
     "exception": false,
     "start_time": "2024-09-20T15:29:32.248109",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 5\u001b[39m\n",
      "  AgentID Month total_answered total_calls percentage_answered\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m          \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m A1513   May              404         569                71.0\n",
      "\u001b[90m2\u001b[39m A1781   Jun              400         533                75.0\n",
      "\u001b[90m3\u001b[39m A1578   Mar              397         527                75.3\n",
      "\u001b[90m4\u001b[39m A1865   Jan              393         487                80.7\n",
      "\u001b[90m5\u001b[39m A1466   Jun              387         497                77.9\n",
      "\u001b[90m6\u001b[39m A1145   Apr              381         571                66.7\n"
     ]
    },
    {
     "data": {
      "image/png": "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\naro0T4W9YudSvZU9VbaabXp1p13FERdsUBRlwR+XrgDt+HTWDSFGESnf7tsryi5gx1O/j6nf\nqVRuvjyu2Kmed+XAmiISVbPP1hMXH5M8v29V65jg7JNSAU/F7nqulYiUqDtgz7mLq3b+j69v\nCDEqijL7cLLKjnXj6070D81dk/3EltN2YcGoDiJiCmv0j9XhZr9da73U9m3RzlQq+03NsVbk\nYx+ApwRYsMtK3qRXFEXRb0m+8j5stszEb7L/Niz6N93lcs0bVF9EdMbw+GZt68WVFpHu098S\nkfCKT+ee64sxnbPnqlK/WccOrarFBomIObLRqn8u/qlTebp02M6ZdYqiGG+9854Hhq9xuVzb\npt6S3XKp6g1u7tSxaf3qOkURkU7jvi94TdtFmUVEpw9LsF78VgR75mGTTpG87oZcEeyuLqPI\nwa7ITV2zS/NUhGDnUreVPVj2Nbfp1Z12ta2T2omITh/a+pbb776jS4OapXX6sH5jx4mI3lR2\n8KPDsr/hTM2Op34fU79TqemHPAOKynntlqN314rKjkrlazZqUL2MoijmqGavDq5RcLBzOtJH\nd6ooIoo+uGbDVq2a1M3+nH7Lxz9R37FFfyp28E0iYoosf2OzetFmvYjojTGzNv/jfr9dc71U\ntl/kM5XKHVLNsVa0Yx+ApwRYsNv3VisRiag8poBphpQJFZEG43a6XC6X07bytTFdWjWINIeU\nr9ly4ntbM8+vEpGoaq9cMdfuFW/26dysZHSYwRhUOq7+vU8+v/fCpeyo/qNOG158sHKpSJ3B\nVLPdxTPylsUze7RpXDIyVK8zhJcod9Mt97z55e5rrukPveNEJKLiZWs6rFyYiFTt/cOVxV8e\ndK4uo8jBzp2mCu7SPBUt2KnZyp4t+5rb9Ord4CqOr18d27JupWCTPiy61E3d7vtyT6LL5Xpj\nULvIIENoTMUUu9pgp6aebIXbqa7VD/kFOzXzulwuR9aZt8Y/2KRG+VCTIbJk+a4DRu0+b9k+\nIr7gYOdyuZyOjM9fHdO+YVxEsNEcGhl/U5cXP9iYu+FrdmyRg90vadZN88e0rFUx1GSIiC3X\nsc8j3+5N8lS/XWu9VLXvxplK1Q6p8oxahGMfgKcoLpcHf866eDn/z+lMh6t0ufKGXA9yXTg4\nKrrG7Ko91x7+8mb/lQaPYSvDBx4vH/7G6bRf0qyNQo3+rsVvONaAgBB4D0+ot7BtfIUKFaYf\n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\nAdkLyW63PHX/AAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Agents with highest % of answered calls versus total calls\n",
    "\n",
    "# firstly, create months column\n",
    "jan_records <- jan_records %>% mutate(Month = 'Jan')\n",
    "feb_records <- feb_records %>% mutate(Month = 'Feb')\n",
    "mar_records <- mar_records %>% mutate(Month = 'Mar')\n",
    "apr_records <- apr_records %>% mutate(Month = 'Apr')\n",
    "may_records <- may_records %>% mutate(Month = 'May')\n",
    "jun_records <- jun_records %>% mutate(Month ='Jun')\n",
    "\n",
    "# secondly combine datasets jan to june\n",
    "combined_df <- rbind(jan_records,feb_records,mar_records,apr_records,may_records,jun_records)\n",
    "\n",
    "# sum calls convert to % and group by agent\n",
    "top_agent <- combined_df %>%\n",
    "  group_by (AgentID,Month)%>%\n",
    "  summarise (total_answered = sum(AnsweredCalls,na.rm=TRUE),\n",
    "             total_calls = sum(TotalCalls,na.rm=TRUE),\n",
    "             percentage_answered = (total_answered/total_calls * 100)\n",
    "             ,.groups='drop')%>%\n",
    "  arrange(desc(total_answered))%>%\n",
    "  slice(1:6)\n",
    "\n",
    "# print results\n",
    "print(top_agent)\n",
    "\n",
    "# visualize output\n",
    "ggplot(data=top_agent, mapping =aes(x=AgentID, y=percentage_answered, color=Month))+geom_col()+\n",
    "  labs(title='Agents with the highest answered call percentage',\n",
    "              x='Agent ID',\n",
    "              y= '% Calls Answered') + theme_minimal()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "ce4f06cc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:33.181878Z",
     "iopub.status.busy": "2024-09-20T15:29:33.179768Z",
     "iopub.status.idle": "2024-09-20T15:29:33.965746Z",
     "shell.execute_reply": "2024-09-20T15:29:33.963129Z"
    },
    "papermill": {
     "duration": 0.798421,
     "end_time": "2024-09-20T15:29:33.968865",
     "exception": false,
     "start_time": "2024-09-20T15:29:33.170444",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 3\u001b[39m\n",
      "\u001b[90m# Groups:   Month [6]\u001b[39m\n",
      "  AgentID Month total_abandoned\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m A1345   Apr               235\n",
      "\u001b[90m2\u001b[39m A1713   Feb               233\n",
      "\u001b[90m3\u001b[39m A1745   Jan               240\n",
      "\u001b[90m4\u001b[39m A1420   Jun               216\n",
      "\u001b[90m5\u001b[39m A1420   Mar               250\n",
      "\u001b[90m6\u001b[39m A1252   May               345\n"
     ]
    },
    {
     "data": {
      "image/png": "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\ng0vlAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Agents with higher abandoned calls\n",
    "high_abandonment <- combined_df %>%\n",
    "  group_by (AgentID,Month)%>%\n",
    "  summarise(total_abandoned = sum(AbandonedCalls,na.rm=TRUE),.groups='drop')%>%\n",
    "    group_by (Month)%>%\n",
    "  slice_max(total_abandoned,n=1)\n",
    "\n",
    "# print results\n",
    "print(high_abandonment)\n",
    "\n",
    "# visualize output\n",
    "ggplot(data=high_abandonment, mapping=aes(x=AgentID, y=total_abandoned, fill=Month))+\n",
    "  geom_col()+ labs(title='Agents with highest abandon')\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "7ecce27a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:33.988730Z",
     "iopub.status.busy": "2024-09-20T15:29:33.986191Z",
     "iopub.status.idle": "2024-09-20T15:29:34.047056Z",
     "shell.execute_reply": "2024-09-20T15:29:34.044259Z"
    },
    "papermill": {
     "duration": 0.074053,
     "end_time": "2024-09-20T15:29:34.050118",
     "exception": false,
     "start_time": "2024-09-20T15:29:33.976065",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 4\u001b[39m\n",
      "  Month avg_satisfaction avg_call_length avg_speed_answer\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m            \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m            \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m Apr               2.97            548.             34.9\n",
      "\u001b[90m2\u001b[39m Feb               2.98            542.             33.4\n",
      "\u001b[90m3\u001b[39m Jan               3.07            547.             35.0\n",
      "\u001b[90m4\u001b[39m Jun               3.06            532.             34.2\n",
      "\u001b[90m5\u001b[39m Mar               2.98            526.             35.0\n",
      "\u001b[90m6\u001b[39m May               3.07            547.             34.2\n"
     ]
    }
   ],
   "source": [
    "# Monthly Avg customer satisfaction, and how call length & speed of answer contributed to it\n",
    "\n",
    "monthly_satisfaction <- combined_df %>%\n",
    "  group_by (Month)%>%\n",
    "  summarise(avg_satisfaction = mean(CustomerSatisfaction,na.rm=TRUE),\n",
    "            avg_call_length = mean(CallLength,na.rm=TRUE),\n",
    "            avg_speed_answer = mean(SpeedOfAnswer,na.rm=TRUE)\n",
    "            ,.groups='drop')\n",
    "\n",
    "print(monthly_satisfaction)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "fc2a6fca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:34.069920Z",
     "iopub.status.busy": "2024-09-20T15:29:34.067763Z",
     "iopub.status.idle": "2024-09-20T15:29:34.472553Z",
     "shell.execute_reply": "2024-09-20T15:29:34.470395Z"
    },
    "papermill": {
     "duration": 0.418355,
     "end_time": "2024-09-20T15:29:34.475737",
     "exception": false,
     "start_time": "2024-09-20T15:29:34.057382",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 3\u001b[39m\n",
      "  Month avg_total_calls avg_abandoned_calls\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m Apr              125.                41.7\n",
      "\u001b[90m2\u001b[39m Feb              123.                41.4\n",
      "\u001b[90m3\u001b[39m Jan              127.                41.1\n",
      "\u001b[90m4\u001b[39m Jun              126.                42.4\n",
      "\u001b[90m5\u001b[39m Mar              125.                42.4\n",
      "\u001b[90m6\u001b[39m May              125.                43.9\n"
     ]
    },
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#What trends can be identified in total calls and abandoned calls month-over-month? \n",
    "trend_analysis <- combined_df %>%\n",
    "  group_by(Month)%>%\n",
    "  summarise(avg_total_calls = mean(TotalCalls),\n",
    "            avg_abandoned_calls = mean(AbandonedCalls),.groups='drop')\n",
    "\n",
    "print(trend_analysis)\n",
    "\n",
    "# Visualize output\n",
    "ggplot(data=trend_analysis,mapping=aes(x=avg_total_calls,y=avg_abandoned_calls, fill=Month))+\n",
    "  geom_col()+labs(title='Total calls and Abandoned Calls',\n",
    "                               x='avg_total_calls')+\n",
    "  theme_minimal()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "ce71df44",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-09-20T15:29:34.499195Z",
     "iopub.status.busy": "2024-09-20T15:29:34.497398Z",
     "iopub.status.idle": "2024-09-20T15:29:34.585469Z",
     "shell.execute_reply": "2024-09-20T15:29:34.583267Z"
    },
    "papermill": {
     "duration": 0.103868,
     "end_time": "2024-09-20T15:29:34.588359",
     "exception": false,
     "start_time": "2024-09-20T15:29:34.484491",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 3\u001b[39m\n",
      "\u001b[90m# Groups:   Month [6]\u001b[39m\n",
      "  AgentID Month avg_speed\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m     \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m A1028   Apr        59.9\n",
      "\u001b[90m2\u001b[39m A1277   Feb        59.8\n",
      "\u001b[90m3\u001b[39m A1816   Jan        59.9\n",
      "\u001b[90m4\u001b[39m A1847   Jun        60.0\n",
      "\u001b[90m5\u001b[39m A1906   Mar        59.9\n",
      "\u001b[90m6\u001b[39m A1944   May        59.6\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] -0.0427999\n"
     ]
    }
   ],
   "source": [
    "# Which agent has the highest speed of answering calls in each month?\n",
    "  speed <- combined_df %>%\n",
    "    group_by (AgentID,Month)%>%\n",
    "    summarise(avg_speed = mean(SpeedOfAnswer),.groups='drop')%>%\n",
    "    group_by (Month)%>%\n",
    "    slice_max(avg_speed,n=1)\n",
    "  \n",
    "# print results\n",
    "  print(speed)\n",
    "  \n",
    "# How does that correlate to customer satisfaction?\n",
    "  cor.data <- cor(combined_df$CustomerSatisfaction,combined_df$SpeedOfAnswer)\n",
    "  print(cor.data)"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 5739182,
     "sourceId": 9443659,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 7.853441,
   "end_time": "2024-09-20T15:29:34.722633",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-09-20T15:29:26.869192",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
