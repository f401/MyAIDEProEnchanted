.class public Lcom/baidu/mobstat/EventAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/EventAnalysis$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/EventAnalysis$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__sdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$|$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    invoke-static/range {v2 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 163
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 19

    .line 176
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-static/range {v2 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 179
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 32

    .line 480
    const-string v12, "t"

    const-string v13, "c"

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 483
    const-string v3, "0|"

    const-string v14, "s"

    const-string v10, ""

    if-eqz p6, :cond_0

    :try_start_0
    const-string v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    :cond_0
    const-string v2, "s"

    const-string v4, "0|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_17

    :cond_1
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v4, p1

    move v5, v7

    :goto_1
    if-ge v6, v7, :cond_8

    .line 494
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 496
    const-string v2, "ss"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 497
    const-string v2, "i"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v18

    .line 498
    :try_start_2
    const-string v2, "l"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 499
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v20, 0x36ee80

    div-long v20, v8, v20
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_c

    .line 503
    :try_start_3
    const-string v2, "d"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    .line 508
    :goto_2
    :try_start_4
    const-string v8, "h"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_d

    move-result-object v22

    .line 509
    :try_start_5
    const-string v8, "p"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 510
    const-string v8, "p2"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v24

    .line 511
    :try_start_6
    const-string v8, "rn"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_e

    move-result-object v25

    .line 512
    :try_start_7
    const-string v8, "v"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v26

    .line 513
    :try_start_8
    const-string v8, "at"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_f

    move-result v27

    .line 519
    const/4 v4, 0x3

    move/from16 v0, v27

    if-eq v0, v4, :cond_3

    .line 520
    :try_start_9
    const-string v4, "h2"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 521
    const-string v8, "h3"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_10

    move-result-object v8

    move-object v9, v10

    move-object v11, v10

    .line 527
    :goto_3
    :try_start_a
    const-string v28, "ext"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 528
    const-string v29, "attribute"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 530
    const-string v30, "h5"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 531
    const-string v31, "sign"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_11

    move-result-object v31

    cmp-long v20, v20, p7

    if-nez v20, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    :goto_4
    move-object/from16 v2, p1

    .line 580
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object v4, v2

    goto/16 :goto_1

    .line 503
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_2

    .line 523
    :cond_3
    :try_start_b
    const-string v4, "h2"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 524
    const-string v4, "h3"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_10

    move-result-object v11

    const/4 v8, 0x0

    const/4 v4, 0x0

    goto :goto_3

    .line 540
    :cond_4
    :try_start_c
    invoke-static/range {v28 .. v29}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    const-string v2, "py"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    cmp-long v16, v16, p2

    if-nez v16, :cond_2

    .line 547
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_11

    move-result v16

    if-eqz v16, :cond_2

    .line 548
    :try_start_d
    move-object/from16 v0, v22

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    move-result v16

    if-eqz v16, :cond_2

    :try_start_e
    move-object/from16 v0, v23

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_7

    move-result v16

    if-eqz v16, :cond_2

    .line 549
    :try_start_f
    move-object/from16 v0, v24

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p10

    invoke-static {v4, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    move-object/from16 v0, p11

    invoke-static {v8, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_12

    move-result v4

    if-eqz v4, :cond_2

    :try_start_10
    move-object/from16 v0, v25

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_8

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v0, v26

    move/from16 v1, p15

    if-ne v0, v1, :cond_2

    move/from16 v0, v27

    move/from16 v1, p16

    if-ne v0, v1, :cond_2

    .line 552
    :try_start_11
    move-object/from16 v0, p17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_9

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    :try_start_12
    move-object/from16 v0, p18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_a

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v0, v30

    move/from16 v1, p19

    if-ne v0, v1, :cond_2

    .line 554
    :try_start_13
    move-object/from16 v0, v31

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    move-object/from16 v0, p21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_13

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    :try_start_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v11

    .line 558
    :try_start_15
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    if-eqz v2, :cond_5

    .line 559
    :try_start_16
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_b

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move-object v2, v3

    .line 563
    :cond_6
    :try_start_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 564
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_16

    move-result-wide v16

    sub-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-gez v16, :cond_7

    const-wide/16 v8, 0x0

    .line 572
    :cond_7
    :try_start_18
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_15

    move-result-object v2

    .line 575
    :try_start_19
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 576
    add-int/2addr v4, v11

    invoke-virtual {v15, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    invoke-virtual {v15, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_1

    :goto_6
    if-ge v6, v7, :cond_9

    .line 595
    :goto_7
    return-void

    .line 580
    :catch_1
    move-exception v2

    move-object/from16 v2, p1

    move v5, v6

    goto/16 :goto_5

    :catch_2
    move-exception v2

    :goto_8
    move-object v2, v4

    goto/16 :goto_5

    :catch_3
    move-exception v2

    :goto_9
    move-object v2, v4

    goto/16 :goto_5

    :catch_4
    move-exception v2

    :goto_a
    move-object v2, v4

    goto/16 :goto_5

    :cond_8
    move-object/from16 p1, v4

    move v6, v5

    .line 484
    goto :goto_6

    .line 595
    :cond_9
    :try_start_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    goto :goto_7

    :catch_6
    move-exception v2

    goto/16 :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_4

    :catch_8
    move-exception v2

    goto/16 :goto_4

    :catch_9
    move-exception v2

    goto/16 :goto_4

    :catch_a
    move-exception v2

    goto/16 :goto_4

    .line 559
    :catch_b
    move-exception v2

    goto/16 :goto_4

    .line 580
    :catch_c
    move-exception v2

    goto :goto_a

    :catch_d
    move-exception v2

    goto :goto_a

    :catch_e
    move-exception v2

    goto :goto_9

    :catch_f
    move-exception v2

    goto :goto_8

    :catch_10
    move-exception v2

    goto/16 :goto_4

    .line 595
    :catch_11
    move-exception v2

    goto/16 :goto_4

    :catch_12
    move-exception v2

    goto/16 :goto_4

    :catch_13
    move-exception v2

    goto/16 :goto_4

    :catch_14
    move-exception v2

    goto/16 :goto_4

    :catch_15
    move-exception v2

    goto/16 :goto_4

    .line 580
    :catch_16
    move-exception v2

    goto/16 :goto_4

    .line 595
    :catch_17
    move-exception v2

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 612
    const-string v0, "point"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 613
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 614
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 616
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 624
    const-string v0, "point"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 628
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 636
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    :try_start_2
    const-string v0, "point"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-le v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 2

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 650
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4294967295
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 650
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 25

    .line 368
    sget-object v2, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v2}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    .line 398
    :try_start_0
    const-string v2, "py"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 399
    const-string v2, "ss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 400
    const-string v2, "i"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    const-string v2, "l"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 402
    const-string v2, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v8, 0x36ee80

    div-long v9, v2, v8

    .line 403
    const-string v2, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 405
    const-string v2, "at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 407
    const-string v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 409
    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 410
    const-string v2, "h2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 411
    const-string v2, "h3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    const-string v19, ""

    const-string v20, ""

    .line 417
    :goto_0
    :try_start_1
    const-string v2, "p"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 418
    const-string v2, "p2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 420
    const-string v2, "rn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 422
    const-string v2, "v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 423
    const-string v2, "ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    const-string v2, "attribute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 426
    const-string v2, "h5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    .line 428
    const-string v2, "sign"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 435
    :try_start_2
    const-string v2, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    .line 441
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 442
    invoke-static/range {v2 .. v23}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_2
    return-void

    .line 413
    :cond_0
    :try_start_3
    const-string v2, "h2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 414
    const-string v2, "h3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v20

    const/4 v13, 0x0

    const/4 v12, 0x0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 449
    :try_start_4
    const-string v3, "s"

    const-string v4, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 221
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v13, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v22, p16

    invoke-static/range {v0 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 231
    const-string v6, ""

    const/16 v25, 0x0

    const-string v26, ""

    const/16 v27, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    invoke-static/range {v1 .. v27}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 248
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 251
    :try_start_0
    const-string v2, "ss"

    invoke-virtual {v4, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v2, "i"

    invoke-virtual {v4, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v2, "l"

    invoke-virtual {v4, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "c"

    invoke-virtual {v4, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string v2, "t"

    move-wide/from16 v0, p7

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v2, "d"

    move-wide/from16 v0, p9

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string v2, "h"

    move-object/from16 v0, p11

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const/4 v2, 0x3

    move/from16 v0, p18

    if-eq v0, v2, :cond_2

    .line 261
    const-string v2, "h2"

    move-object/from16 v0, p12

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v2, "h3"

    move-object/from16 v0, p13

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :goto_0
    const-string v2, "p"

    move-object/from16 v0, p14

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v2, "p2"

    move-object/from16 v0, p15

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v2, "rn"

    move-object/from16 v0, p16

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v2, "v"

    move/from16 v0, p17

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    const-string v2, "at"

    move/from16 v0, p18

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v2, "h5"

    move/from16 v0, p23

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p19, :cond_0

    .line 277
    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "ext"

    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p20, :cond_4

    .line 282
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 283
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 284
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 293
    const/16 v7, 0x400

    invoke-static {v2, v7}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 298
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 299
    const-string v8, "k"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v3, "v"

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 317
    :catch_0
    move-exception v2

    :goto_2
    return-object v4

    .line 264
    :cond_2
    const-string v2, "h2"

    move-object/from16 v0, p21

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v2, "h3"

    move-object/from16 v0, p22

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v2, "content"

    invoke-virtual {v4, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/DataCore;->getEventPy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 304
    :cond_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    const-string v2, "attribute"

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p24, :cond_5

    .line 310
    invoke-virtual/range {p24 .. p24}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 312
    move-object/from16 v0, p24

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    const-string v3, "point"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_5
    invoke-static/range {p25 .. p25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v2, ""

    if-eqz v3, :cond_6

    const-string p25, ""

    :cond_6
    :try_start_1
    const-string v3, "sign"

    move-object/from16 v0, p25

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    if-eqz p26, :cond_8

    .line 318
    invoke-virtual/range {p26 .. p26}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 p26, v2

    .line 317
    :cond_7
    :goto_3
    const-string v2, "v5"

    move-object/from16 v0, p26

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move-object/from16 p26, v2

    goto :goto_3
.end method


# virtual methods
.method public flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v2, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    .line 199
    invoke-virtual {v2}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v18

    .line 198
    const-wide/16 v10, 0x0

    const-string v12, ""

    const/16 v19, 0x2

    const/16 v20, 0x0

    const-string v22, ""

    const-string v23, ""

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v21, p14

    move/from16 v24, p15

    invoke-static/range {v2 .. v24}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    :cond_0
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    :cond_0
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p15}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-lez v0, :cond_0

    .line 145
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mobstat/EventAnalysis$a;

    if-nez v4, :cond_1

    .line 110
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WARNING] eventId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", with label: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not started or alread ended"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 114
    iget-object v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz p5, :cond_4

    iget-object v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 116
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    const-string v5, "[WARNING] eventId/label pair not match"

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-wide v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    sub-long v12, p6, v6

    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-gez v5, :cond_5

    .line 124
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "[WARNING] onEventEnd must be invoked after onEventStart"

    invoke-virtual {v5, v6}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    .line 127
    :cond_5
    iget-wide v10, v4, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v4 .. v16}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto/16 :goto_0
.end method

.method public onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 75
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/EventAnalysis$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/EventAnalysis$a;-><init>(Lcom/baidu/mobstat/EventAnalysis$1;)V

    .line 80
    iput-wide p4, v0, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    .line 81
    iput-object p2, v0, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    .line 82
    iput-object p3, v0, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[WARNING] eventId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", with label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is duplicated, older is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
