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

    .line 188
    const-string v0, ""

    if-eqz p1, :cond_21

    if-nez p2, :cond_7

    goto :goto_21

    .line 192
    :cond_7
    invoke-static {p2, p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    .line 193
    invoke-static {p2}, Lcom/baidu/mobstat/de;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    .line 199
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    move-object v0, p1

    :cond_21
    :goto_21
    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 135
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 136
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    iget v2, p3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 142
    iget p3, p3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr p3, v1

    const/4 v1, 0x0

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1e

    const/4 v2, 0x0

    :cond_1e
    cmpg-float v3, p3, v1

    if-gez v3, :cond_23

    const/4 p3, 0x0

    .line 152
    :cond_23
    invoke-static {p1, v2}, Lcom/baidu/mobstat/cc;->b(Landroid/content/Context;F)F

    move-result v2

    .line 153
    invoke-static {p1, p3}, Lcom/baidu/mobstat/cc;->b(Landroid/content/Context;F)F

    move-result p3

    .line 155
    invoke-static {p2}, Lcom/baidu/mobstat/de;->p(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 156
    invoke-static {p2}, Lcom/baidu/mobstat/de;->q(Landroid/view/View;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p2, v3, v1

    if-eqz p2, :cond_94

    cmpl-float p2, p1, v1

    if-nez p2, :cond_48

    goto :goto_94

    .line 163
    :cond_48
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 165
    :try_start_4d
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 167
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 168
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 170
    const-string v1, "x"

    float-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "y"

    float-to-double v4, p3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float v2, v2, v1

    div-float/2addr v2, v3

    .line 174
    const-string v3, "xp"

    float-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    mul-float p3, p3, v1

    div-float/2addr p3, p1

    .line 177
    const-string p1, "yp"

    float-to-double v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_91} :catch_92

    goto :goto_93

    :catch_92
    move-exception p1

    :goto_93
    return-object p2

    :cond_94
    :goto_94
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;ZLandroid/app/Activity;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_137

    if-nez v1, :cond_c

    goto/16 :goto_137

    .line 32
    :cond_c
    invoke-static {v1, v2}, Lcom/baidu/mobstat/cm;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 35
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v3

    const-string v4, "; activity:"

    const-string v5, "; content:"

    const-string v6, "OnEvent view:"

    if-eqz v3, :cond_54

    if-eqz p2, :cond_54

    .line 36
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {v3, v7}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 40
    :cond_54
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 41
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 46
    :cond_91
    invoke-static {v2, v1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->g(Landroid/view/View;)Ljava/util/Map;

    move-result-object v18

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 58
    new-instance v22, Lorg/json/JSONArray;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONArray;-><init>()V

    .line 59
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 62
    if-eqz p2, :cond_d1

    .line 63
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v5

    const-string v7, ""

    const/4 v9, 0x1

    const-string v15, ""

    move-object/from16 v6, v19

    move-wide/from16 v10, v20

    move-object v12, v3

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v16, v4

    move-object/from16 v17, v18

    invoke-virtual/range {v5 .. v17}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    :cond_d1
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/cu;->b()Landroid/graphics/PointF;

    move-result-object v5

    .line 68
    invoke-direct {v0, v2, v1, v5}, Lcom/baidu/mobstat/cz;->a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;

    move-result-object v24

    .line 70
    invoke-direct {v0, v2, v1}, Lcom/baidu/mobstat/cz;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/String;

    move-result-object v25

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/de;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 75
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V

    .line 96
    invoke-static {v1, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Z)Ljava/util/Map;

    move-result-object v1

    .line 102
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_117

    if-eqz v1, :cond_117

    .line 104
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_117

    .line 105
    const-string v2, "content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 106
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_11a

    .line 123
    :cond_117
    const-string v1, ""

    move-object v9, v1

    :goto_11a
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v5

    const-string v7, ""

    const/4 v10, 0x1

    const-string v15, ""

    move-object/from16 v6, v19

    move-wide/from16 v11, v20

    move-object/from16 v13, v23

    move-object v14, v3

    move-object/from16 v16, v22

    move-object/from16 v17, v4

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    invoke-virtual/range {v5 .. v21}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_137
    :goto_137
    return-void
.end method
