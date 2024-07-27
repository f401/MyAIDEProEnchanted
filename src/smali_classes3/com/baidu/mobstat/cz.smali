.class public Lcom/baidu/mobstat/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/df$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/String;
    .registers 6

    .line 186
    const-string v0, ""

    .line 188
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-static {p2, p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/baidu/mobstat/de;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_0

    .line 199
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;
    .registers 15

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    if-nez p3, :cond_0

    move-object v0, v2

    .line 182
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 136
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    iget v3, p3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 142
    iget v4, p3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    sub-float v0, v4, v0

    .line 145
    cmpg-float v4, v3, v1

    if-gez v4, :cond_1

    move v3, v1

    .line 148
    :cond_1
    cmpg-float v4, v0, v1

    if-gez v4, :cond_2

    move v0, v1

    .line 152
    :cond_2
    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->b(Landroid/content/Context;F)F

    move-result v3

    .line 153
    invoke-static {p1, v0}, Lcom/baidu/mobstat/cc;->b(Landroid/content/Context;F)F

    move-result v4

    .line 155
    invoke-static {p2}, Lcom/baidu/mobstat/de;->p(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v5, v0

    .line 156
    invoke-static {p2}, Lcom/baidu/mobstat/de;->q(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v6, v0

    .line 159
    cmpl-float v0, v5, v1

    if-eqz v0, :cond_3

    cmpl-float v0, v6, v1

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 165
    :try_start_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 167
    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 168
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 170
    const-string v2, "x"

    float-to-double v8, v3

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "y"

    float-to-double v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    mul-float v2, v3, v10

    div-float/2addr v2, v5

    .line 174
    const-string v3, "xp"

    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    mul-float v2, v4, v10

    div-float/2addr v2, v6

    .line 177
    const-string v3, "yp"

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;ZLandroid/app/Activity;)V
    .registers 39

    .line 28
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cm;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 35
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 36
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnEvent view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 38
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnEvent view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 43
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 46
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v12

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v16

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->g(Landroid/view/View;)Ljava/util/Map;

    move-result-object v17

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 58
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 59
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 60
    if-eqz p2, :cond_4

    .line 63
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v5

    const-string v7, ""

    const/4 v9, 0x1

    const-string v15, ""

    invoke-virtual/range {v5 .. v17}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/cu;->b()Landroid/graphics/PointF;

    move-result-object v4

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/mobstat/cz;->a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;

    move-result-object v32

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/cz;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/String;

    move-result-object v33

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v21

    .line 75
    new-instance v34, Lorg/json/JSONArray;

    invoke-direct/range {v34 .. v34}, Lorg/json/JSONArray;-><init>()V

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    .line 98
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object v5

    .line 100
    const-string v22, ""

    .line 102
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 104
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 105
    const-string v4, "content"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 106
    const-string v4, "content"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v22, v4

    .line 123
    :cond_5
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v18

    const-string v20, ""

    const/16 v23, 0x1

    const-string v28, ""

    move-object/from16 v19, v6

    move-wide/from16 v24, v10

    move-object/from16 v26, v14

    move-object/from16 v27, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    invoke-virtual/range {v18 .. v34}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 106
    :cond_6
    const-string v22, ""

    goto :goto_1
.end method
