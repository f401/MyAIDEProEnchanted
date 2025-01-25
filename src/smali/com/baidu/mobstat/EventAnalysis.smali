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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/EventAnalysis$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__sdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$|$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 156
    move-object/from16 v15, p1

    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 161
    :cond_d
    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    invoke-static/range {v0 .. v16}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V
    .registers 31

    move-object/from16 v15, p1

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    .line 176
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0x0

    invoke-static/range {v0 .. v16}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 179
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 53

    .line 480
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    const-string v3, "t"

    const-string v4, "c"

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 483
    const-string v6, "0|"

    const-string v7, "s"

    const-string v8, ""

    if-eqz v0, :cond_1f

    :try_start_16
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_1f

    .line 595
    :catch_1d
    move-exception v0

    goto :goto_22

    .line 484
    :cond_1f
    :goto_1f
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_22} :catch_1d

    :cond_22
    :goto_22
    move-object v12, v2

    move v11, v5

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v5, :cond_3ec

    .line 494
    :try_start_27
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 496
    const-string v0, "ss"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 497
    const-string v0, "i"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 498
    const-string v0, "l"
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_39} :catch_3b6

    move-object/from16 v16, v6

    :try_start_3b
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-wide/32 v19, 0x36ee80

    div-long v17, v17, v19
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_48} :catch_3a8

    .line 503
    :try_start_48
    const-string v0, "d"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4e} :catch_4f

    goto :goto_51

    :catch_4f
    move-exception v0

    const/4 v0, 0x0

    .line 508
    :goto_51
    move/from16 v19, v11

    :try_start_53
    const-string v11, "h"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_59} :catch_391

    .line 509
    move-object/from16 v20, v12

    :try_start_5b
    const-string v12, "p"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 510
    const-string v1, "p2"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_67} :catch_376

    .line 511
    move/from16 v21, v5

    :try_start_69
    const-string v5, "rn"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_6f} :catch_366

    .line 512
    move/from16 v22, v10

    :try_start_71
    const-string v10, "v"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_77} :catch_34e

    .line 513
    move-object/from16 v23, v3

    :try_start_79
    const-string v3, "at"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_7f} :catch_33f

    .line 519
    move-object/from16 v24, v8

    const/4 v8, 0x3

    move-object/from16 v25, v7

    const-string v7, "h3"

    const-string v2, "h2"

    if-eq v3, v8, :cond_99

    .line 520
    :try_start_8a
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 521
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object/from16 v26, v4

    move-object v8, v7

    move-object/from16 v4, v24

    move-object v7, v4

    goto :goto_a7

    .line 523
    :cond_99
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_a1} :catch_325

    const/4 v8, 0x0

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v7, v2

    move-object v2, v8

    .line 527
    :goto_a7
    move-object/from16 v20, v4

    :try_start_a9
    const-string v4, "ext"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 528
    move-object/from16 v27, v7

    const-string v7, "attribute"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    move/from16 v28, v3

    const-string v3, "h5"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 531
    move/from16 v29, v3

    const-string v3, "sign"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v30, v17, p7

    if-nez v30, :cond_2fa

    if-eqz v0, :cond_e3

    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_33a

    .line 540
    :cond_e3
    invoke-static {v4, v7}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_33a

    .line 544
    :cond_ff
    const-string v0, "py"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v4, v14, p2

    if-nez v4, :cond_2e5

    .line 547
    move-object/from16 v4, p4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2cf

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_a9 .. :try_end_117} :catch_30f

    if-eqz v6, :cond_2cf

    .line 548
    move-object/from16 v6, p9

    :try_start_11b
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_11f
    .catch Lorg/json/JSONException; {:try_start_11b .. :try_end_11f} :catch_2b8

    if-eqz v9, :cond_2a2

    move-object/from16 v9, p12

    :try_start_123
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_123 .. :try_end_127} :catch_29e

    if-eqz v11, :cond_29b

    .line 549
    move-object/from16 v11, p13

    :try_start_12b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276

    move-object/from16 v1, p10

    invoke-static {v2, v1}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 550
    move-object/from16 v2, p11

    invoke-static {v8, v2}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v8
    :try_end_13f
    .catch Lorg/json/JSONException; {:try_start_12b .. :try_end_13f} :catch_288

    if-eqz v8, :cond_271

    move-object/from16 v8, p14

    :try_start_143
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_147
    .catch Lorg/json/JSONException; {:try_start_143 .. :try_end_147} :catch_260

    if-eqz v5, :cond_250

    move/from16 v5, p15

    if-ne v10, v5, :cond_250

    move/from16 v10, p16

    move/from16 v12, v28

    if-ne v12, v10, :cond_242

    .line 552
    move-object/from16 v12, p17

    move-object/from16 v14, v27

    :try_start_157
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_15b
    .catch Lorg/json/JSONException; {:try_start_157 .. :try_end_15b} :catch_235

    if-eqz v14, :cond_229

    .line 553
    move-object/from16 v14, p18

    move-object/from16 v15, v20

    :try_start_161
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_165
    .catch Lorg/json/JSONException; {:try_start_161 .. :try_end_165} :catch_21e

    if-eqz v15, :cond_219

    move/from16 v15, p19

    move/from16 v1, v29

    if-ne v1, v15, :cond_211

    .line 554
    move-object/from16 v1, p20

    :try_start_16f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_200

    .line 555
    move-object/from16 v3, p21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17b
    .catch Lorg/json/JSONException; {:try_start_16f .. :try_end_17b} :catch_208

    if-eqz v0, :cond_1f8

    .line 557
    move-object/from16 v1, p1

    move-object/from16 v2, v26

    :try_start_181
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17
    :try_end_189
    .catch Lorg/json/JSONException; {:try_start_181 .. :try_end_189} :catch_1f3

    .line 558
    move-object/from16 v3, v25

    :try_start_18b
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_18f
    .catch Lorg/json/JSONException; {:try_start_18b .. :try_end_18f} :catch_1f0

    if-eqz v4, :cond_19f

    .line 559
    move-object/from16 v5, v24

    :try_start_193
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18
    :try_end_197
    .catch Lorg/json/JSONException; {:try_start_193 .. :try_end_197} :catch_19a

    if-eqz v18, :cond_1a3

    goto :goto_1a1

    :catch_19a
    move-exception v0

    move-object/from16 v24, v5

    goto/16 :goto_33b

    .line 558
    :cond_19f
    move-object/from16 v5, v24

    .line 559
    :goto_1a1
    move-object/from16 v4, v16

    .line 563
    :cond_1a3
    move-object/from16 v24, v5

    move-object/from16 v5, v23

    :try_start_1a7
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 564
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v27
    :try_end_1af
    .catch Lorg/json/JSONException; {:try_start_1a7 .. :try_end_1af} :catch_1eb

    sub-long v25, v25, v27

    const-wide/16 v27, 0x0

    cmp-long v18, v25, v27

    move-object/from16 v23, v5

    if-gez v18, :cond_1bc

    move-wide/from16 v5, v27

    goto :goto_1be

    :cond_1bc
    move-wide/from16 v5, v25

    .line 572
    :goto_1be
    :try_start_1be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1d2
    .catch Lorg/json/JSONException; {:try_start_1be .. :try_end_1d2} :catch_1f0

    .line 575
    :try_start_1d2
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 576
    add-int v0, v0, v17

    invoke-virtual {v13, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    invoke-static {v13, v1}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1e0
    .catch Lorg/json/JSONException; {:try_start_1d2 .. :try_end_1e0} :catch_1e4

    move/from16 v10, v22

    goto/16 :goto_3f6

    :catch_1e4
    move-exception v0

    move-object/from16 v20, v1

    move/from16 v19, v22

    goto/16 :goto_3d6

    :catch_1eb
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_33a

    .line 595
    :catch_1f0
    move-exception v0

    goto/16 :goto_33b

    :catch_1f3
    move-exception v0

    move-object/from16 v3, v25

    goto/16 :goto_33a

    .line 555
    :cond_1f8
    move-object/from16 v1, p1

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 554
    :cond_200
    move-object/from16 v1, p1

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 595
    :catch_208
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 553
    :cond_211
    move-object/from16 v1, p1

    :goto_213
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    :cond_219
    move-object/from16 v1, p1

    move/from16 v15, p19

    goto :goto_213

    .line 595
    :catch_21e
    move-exception v0

    move-object/from16 v1, p1

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 552
    :cond_229
    move-object/from16 v1, p1

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 595
    :catch_235
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 580
    :cond_242
    move-object/from16 v1, p1

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 550
    :cond_250
    move-object/from16 v1, p1

    :goto_252
    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 595
    :catch_260
    move-exception v0

    move-object/from16 v1, p1

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 550
    :cond_271
    move-object/from16 v1, p1

    move-object/from16 v8, p14

    goto :goto_252

    .line 549
    :cond_276
    move-object/from16 v1, p1

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 595
    :catch_288
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 548
    :cond_29b
    move-object/from16 v1, p1

    goto :goto_2a6

    .line 595
    :catch_29e
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_2bd

    .line 548
    :cond_2a2
    move-object/from16 v1, p1

    move-object/from16 v9, p12

    :goto_2a6
    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 595
    :catch_2b8
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v9, p12

    :goto_2bd
    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_339

    .line 547
    :cond_2cf
    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto/16 :goto_33a

    .line 544
    :cond_2e5
    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto :goto_33a

    .line 531
    :cond_2fa
    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto :goto_33a

    .line 595
    :catch_30f
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto :goto_33a

    .line 580
    :catch_325
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v2, v4

    move-object/from16 v3, v25

    :goto_339
    nop

    :goto_33a
    nop

    :goto_33b
    move-object/from16 v20, v1

    goto/16 :goto_3d6

    :catch_33f
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    goto :goto_35e

    :catch_34e
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move/from16 v10, p16

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    :goto_35e
    move-object v2, v4

    move-object v3, v7

    move-object/from16 v24, v8

    move-object/from16 v8, p14

    goto/16 :goto_3d6

    :catch_366
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    move-object v2, v4

    goto :goto_387

    :catch_376
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p17

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    move-object v2, v4

    move/from16 v21, v5

    :goto_387
    move-object v3, v7

    move-object/from16 v24, v8

    move/from16 v22, v10

    move-object/from16 v8, p14

    move/from16 v10, p16

    goto :goto_3d6

    :catch_391
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    move-object v2, v4

    move/from16 v21, v5

    move-object v3, v7

    move-object/from16 v24, v8

    move/from16 v22, v10

    move-object/from16 v20, v12

    goto :goto_3d0

    :catch_3a8
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    move-object v2, v4

    move/from16 v21, v5

    goto :goto_3c5

    :catch_3b6
    move-exception v0

    move-object/from16 v9, p12

    move-object/from16 v14, p18

    move/from16 v15, p19

    move-object v1, v2

    move-object/from16 v23, v3

    move-object v2, v4

    move/from16 v21, v5

    move-object/from16 v16, v6

    :goto_3c5
    move-object v3, v7

    move-object/from16 v24, v8

    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v11, p13

    :goto_3d0
    move-object/from16 v8, p14

    move/from16 v10, p16

    move-object/from16 v12, p17

    :goto_3d6
    add-int/lit8 v0, v22, 0x1

    move v10, v0

    move-object v4, v2

    move-object v7, v3

    move-object/from16 v6, v16

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v5, v21

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    move-object v2, v1

    move-object/from16 v1, p0

    goto/16 :goto_25

    .line 484
    :cond_3ec
    move/from16 v21, v5

    move/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v10, v19

    move-object/from16 v1, v20

    .line 580
    :goto_3f6
    move/from16 v2, v21

    if-ge v10, v2, :cond_3fb

    return-void

    .line 595
    :cond_3fb
    move-object/from16 v3, p0

    :try_start_3fd
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_400
    .catch Lorg/json/JSONException; {:try_start_3fd .. :try_end_400} :catch_401

    goto :goto_402

    :catch_401
    move-exception v0

    :goto_402
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    if-eqz p0, :cond_5d

    if-nez p1, :cond_5

    goto :goto_5d

    .line 610
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 612
    const-string v1, "point"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    .line 613
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x0

    .line 614
    :goto_1a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2c

    .line 616
    :try_start_20
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_29

    .line 638
    :catch_28
    move-exception v5

    .line 616
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 623
    :cond_2c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_52

    .line 624
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 625
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_52

    .line 626
    :goto_40
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_52

    .line 628
    :try_start_46
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4e

    goto :goto_4f

    .line 638
    :catch_4e
    move-exception v2

    .line 628
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 636
    :cond_52
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_5d

    .line 638
    :try_start_58
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception p0

    :cond_5d
    :goto_5d
    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 334
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    move-exception p0

    const/4 p0, 0x0

    :goto_c
    if-le p0, p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 2

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    goto :goto_17

    :cond_5
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    .line 650
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    :goto_17
    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v1

    .line 354
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 27

    .line 368
    move-object/from16 v2, p1

    const-string v1, "s"

    .line 385
    sget-object v0, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    .line 398
    :try_start_9
    const-string v0, "py"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 399
    const-string v0, "ss"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 400
    const-string v0, "i"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    const-string v0, "l"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 402
    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    div-long v8, v7, v9

    .line 403
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    const-string v0, "at"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 407
    const-string v0, "h"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3c} :catch_ca

    .line 409
    const/4 v0, 0x3

    const-string v11, "h3"

    const-string v12, "h2"

    if-eq v15, v0, :cond_54

    .line 410
    :try_start_43
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 411
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4b} :catch_ca

    const-string v12, ""

    move-object/from16 v18, v12

    move-object/from16 v19, v18

    move-object v12, v11

    move-object v11, v0

    goto :goto_62

    .line 413
    :cond_54
    :try_start_54
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    move-object v11, v12

    .line 417
    :goto_62
    const-string v0, "p"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 418
    const-string v0, "p2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 420
    const-string v0, "rn"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 422
    const-string v0, "v"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 423
    const-string v0, "ext"

    move/from16 v20, v15

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 424
    const-string v0, "attribute"

    move-object/from16 v21, v1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    const-string v0, "h5"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    .line 428
    const-string v0, "sign"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_96} :catch_ca

    .line 435
    :try_start_96
    const-string v0, "d"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_9c} :catch_9d

    goto :goto_9f

    :catch_9d
    move-exception v0

    const/4 v0, 0x0

    :goto_9f
    if-nez v0, :cond_b9

    .line 441
    invoke-static {v15, v1}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 442
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    move/from16 v20, v23

    move-object/from16 v21, v24

    invoke-static/range {v1 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    .line 447
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 449
    :try_start_bd
    const-string v1, "0"

    move-object/from16 v3, v21

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_c9} :catch_ca

    goto :goto_cb

    :catch_ca
    move-exception v0

    :goto_cb
    return-void
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .registers 40
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

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

    .line 221
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v20, ""

    const-string v21, ""

    invoke-static/range {v0 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 50
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    .line 231
    const-string v5, ""

    const/16 v24, 0x0

    const-string v25, ""

    const/16 v26, 0x0

    invoke-static/range {v0 .. v26}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 36
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
            "Ljava/util/Map<",
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
    move/from16 v0, p18

    move-object/from16 v1, p24

    const-string v2, "v"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 251
    :try_start_b
    const-string v4, "ss"

    move-wide v5, p1

    invoke-virtual {v3, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v4, "i"

    move-object v5, p3

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v4, "l"

    move-object v5, p4

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v4, "c"

    move v5, p6

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string v4, "t"

    move-wide/from16 v5, p7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v4, "d"

    move-wide/from16 v5, p9

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string v4, "h"

    move-object/from16 v5, p11

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_132

    .line 260
    const/4 v4, 0x3

    const-string v5, "h3"

    const-string v6, "h2"

    if-eq v0, v4, :cond_4a

    .line 261
    move-object/from16 v4, p12

    :try_start_41
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    move-object/from16 v4, p13

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_67

    .line 264
    :cond_4a
    move-object/from16 v4, p21

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    move-object/from16 v4, p22

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v4, "content"

    move-object v5, p5

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v4, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/DataCore;->getEventPy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :goto_67
    const-string v4, "p"

    move-object/from16 v5, p14

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v4, "p2"

    move-object/from16 v5, p15

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v4, "rn"

    move-object/from16 v5, p16

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    move/from16 v4, p17

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    const-string v4, "at"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v0, "h5"

    move/from16 v4, p23

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p19, :cond_a2

    .line 277
    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_a2

    .line 278
    const-string v0, "ext"

    invoke-virtual/range {p19 .. p19}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    if-eqz p20, :cond_fb

    .line 282
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 284
    :cond_b1
    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 287
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 289
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d6

    goto :goto_b1

    .line 293
    :cond_d6
    const/16 v7, 0x400

    invoke-static {v5, v7}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_df

    goto :goto_b1

    .line 298
    :cond_df
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 299
    const-string v8, "k"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b1

    .line 304
    :cond_f0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_fb

    .line 305
    const-string v0, "attribute"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_fb
    if-eqz v1, :cond_110

    .line 310
    invoke-virtual/range {p24 .. p24}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_110

    .line 311
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 312
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    const-string v1, "point"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_110
    invoke-static/range {p25 .. p25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_114} :catch_132

    const-string v1, ""

    if-eqz v0, :cond_11a

    move-object v0, v1

    goto :goto_11c

    :cond_11a
    move-object/from16 v0, p25

    :goto_11c
    :try_start_11c
    const-string v2, "sign"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    if-eqz p26, :cond_12c

    .line 318
    invoke-virtual/range {p26 .. p26}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_12a

    goto :goto_12c

    :cond_12a
    move-object/from16 v1, p26

    .line 317
    :cond_12c
    :goto_12c
    const-string v0, "v5"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_131} :catch_132

    goto :goto_133

    :catch_132
    move-exception v0

    :goto_133
    return-object v3
.end method


# virtual methods
.method public flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 39
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 193
    move-object/from16 v15, p1

    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 197
    :cond_d
    sget-object v0, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    .line 199
    invoke-virtual {v0}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v16

    .line 198
    const-wide/16 v8, 0x0

    const-string v10, ""

    const/16 v17, 0x2

    const/16 v18, 0x0

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v19, p14

    move/from16 v22, p15

    invoke-static/range {v0 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
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

    if-nez v0, :cond_b

    return-void

    .line 37
    :cond_b
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

    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 28

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 51
    :cond_b
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

    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 17
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
            "Ljava/util/Map<",
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

    if-nez v0, :cond_b

    return-void

    .line 66
    :cond_b
    invoke-virtual/range {p0 .. p15}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
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

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v2, p8, v0

    if-gtz v2, :cond_12

    return-void

    .line 145
    :cond_12
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method

.method public onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 101
    move-object v13, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct {p0, v4, v5}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v1

    if-nez v1, :cond_19

    .line 104
    iget-object v1, v13, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 108
    :cond_19
    iget-object v1, v13, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/EventAnalysis$a;

    if-nez v1, :cond_46

    .line 110
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] eventId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", with label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not started or alread ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_8f

    :cond_46
    if-eqz v4, :cond_50

    .line 114
    iget-object v2, v1, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_50
    if-eqz v5, :cond_64

    iget-object v2, v1, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 116
    :cond_5a
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] eventId/label pair not match"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_64
    iget-object v2, v13, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-wide v2, v1, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    sub-long v8, p6, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-gez v0, :cond_7c

    .line 124
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v2, "[WARNING] onEventEnd must be invoked after onEventStart"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    .line 127
    :cond_7c
    iget-wide v6, v1, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    :goto_8f
    return-void
.end method

.method public onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 75
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/dq;->d()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 79
    :cond_b
    new-instance p1, Lcom/baidu/mobstat/EventAnalysis$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/EventAnalysis$a;-><init>(Lcom/baidu/mobstat/EventAnalysis$1;)V

    .line 80
    iput-wide p4, p1, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    .line 81
    iput-object p2, p1, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    .line 82
    iput-object p3, p1, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 84
    iget-object p5, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {p5, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_45

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WARNING] eventId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", with label: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is duplicated, older is removed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p5, p2}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    .line 91
    :cond_45
    iget-object p2, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
