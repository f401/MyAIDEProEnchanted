.class public Lcom/baidu/mobstat/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/baidu/mobstat/x;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/baidu/mobstat/x;

    invoke-direct {v0}, Lcom/baidu/mobstat/x;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/x;->b:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/x;->c:Z

    .line 86
    iput v0, p0, Lcom/baidu/mobstat/x;->d:I

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 3

    .line 403
    new-instance v0, Lcom/baidu/mobstat/aa;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/aa;-><init>(Lorg/json/JSONObject;)V

    .line 405
    iget-boolean p1, v0, Lcom/baidu/mobstat/aa;->a:Z

    sput-boolean p1, Lcom/baidu/mobstat/z;->b:Z

    .line 406
    iget-object p1, v0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    sput-object p1, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    .line 407
    iget-boolean p1, v0, Lcom/baidu/mobstat/aa;->c:Z

    sput-boolean p1, Lcom/baidu/mobstat/z;->d:Z

    return-void
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    .line 579
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 581
    :try_start_5
    const-string v1, "detector_count"

    iget v2, p0, Lcom/baidu/mobstat/x;->d:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v1, "he"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_23

    :catch_1a
    move-exception p2

    .line 586
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 592
    :goto_23
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "APP_MEM"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->b()Z

    move-result v1

    if-nez v1, :cond_66

    .line 596
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 597
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 598
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 601
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_66

    .line 603
    :try_start_4f
    const-string v1, "app_mem3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_5c} :catch_5e

    add-int/2addr p2, v1

    goto :goto_66

    :catch_5e
    move-exception v1

    .line 608
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 613
    :cond_66
    :goto_66
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "APP_APK"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 614
    sget-object v1, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    const/16 v2, 0x5000

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 615
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 616
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_80

    .line 621
    :cond_97
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b4

    .line 623
    :try_start_9d
    const-string v1, "app_apk3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_aa} :catch_ac

    add-int/2addr p2, v1

    goto :goto_b4

    :catch_ac
    move-exception v1

    .line 628
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 632
    :cond_b4
    :goto_b4
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "APP_CHANGE"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 633
    sget-object v1, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    const/16 v2, 0x2800

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 634
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ce

    .line 640
    :cond_e5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_102

    .line 642
    :try_start_eb
    const-string v1, "app_change3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_f8} :catch_fa

    add-int/2addr p2, v1

    goto :goto_102

    :catch_fa
    move-exception v1

    .line 647
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 651
    :cond_102
    :goto_102
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "APP_TRACE"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 652
    sget-object v1, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    const/16 v2, 0x3c00

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 653
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 654
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_133

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11c

    .line 659
    :cond_133
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_150

    .line 662
    :try_start_139
    const-string v1, "app_trace3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_146
    .catch Lorg/json/JSONException; {:try_start_139 .. :try_end_146} :catch_148

    add-int/2addr p2, v1

    goto :goto_150

    :catch_148
    move-exception v1

    .line 667
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 671
    :cond_150
    :goto_150
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "APP_LIST"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 672
    sget-object v1, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    const v2, 0xb400

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 673
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 674
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_182

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 675
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16b

    .line 679
    :cond_182
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_19f

    .line 682
    :try_start_188
    const-string v1, "app_list3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_195
    .catch Lorg/json/JSONException; {:try_start_188 .. :try_end_195} :catch_197

    add-int/2addr p2, v1

    goto :goto_19f

    :catch_197
    move-exception v1

    .line 687
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 691
    :cond_19f
    :goto_19f
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "AP_LIST"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 693
    sget-object v1, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    const v2, 0x2d000

    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 694
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 695
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 696
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1bb

    .line 700
    :cond_1d2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1ef

    .line 702
    :try_start_1d8
    const-string v1, "ap_list3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1e5
    .catch Lorg/json/JSONException; {:try_start_1d8 .. :try_end_1e5} :catch_1e7

    add-int/2addr p2, v1

    goto :goto_1ef

    :catch_1e7
    move-exception v1

    .line 707
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 711
    :cond_1ef
    :goto_1ef
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log in bytes is almost :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 713
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 714
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 716
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 718
    :try_start_211
    const-string v1, "payload"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_221} :catch_222

    goto :goto_22a

    :catch_222
    move-exception p1

    .line 721
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    :goto_22a
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 11

    .line 417
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPWithStretegy 1"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/baidu/mobstat/g;->a:Lcom/baidu/mobstat/g;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v1

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 421
    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->e()J

    move-result-wide v5

    .line 423
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; time interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-eqz v0, :cond_4b

    sub-long/2addr v3, v1

    cmp-long v0, v3, v5

    if-lez v0, :cond_57

    .line 427
    :cond_4b
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 429
    invoke-static {p1}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;)V

    :cond_57
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 16

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 442
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v2

    .line 444
    sget-object v3, Lcom/baidu/mobstat/g;->b:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v3

    .line 445
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->f()J

    move-result-wide v5

    .line 446
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "now time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ": last time: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "; userInterval : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 447
    invoke-virtual {v7, v8}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v11, v3, v7

    if-eqz v11, :cond_49

    sub-long v11, v0, v3

    cmp-long v13, v11, v5

    if-gtz v13, :cond_49

    .line 448
    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/w;->a(J)Z

    move-result v3

    if-nez v3, :cond_56

    .line 449
    :cond_49
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    const-string v4, "collectUserAPPListWithStretegy 1"

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 450
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;Z)V

    .line 457
    :cond_56
    sget-object v3, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v3

    .line 458
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->g()J

    move-result-wide v5

    .line 459
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "; sysInterval : "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    invoke-virtual {v2, v9}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    cmp-long v2, v3, v7

    if-eqz v2, :cond_8a

    sub-long/2addr v0, v3

    cmp-long v2, v0, v5

    if-lez v2, :cond_97

    .line 462
    :cond_8a
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectSysAPPListWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;Z)V

    :cond_97
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 11

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v2

    .line 489
    sget-object v3, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v3

    .line 490
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->i()J

    move-result-wide v5

    .line 491
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; time interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-virtual {v2, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-eqz v2, :cond_42

    sub-long/2addr v0, v3

    cmp-long v2, v0, v5

    if-lez v2, :cond_4f

    .line 494
    :cond_42
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPPTraceWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/c;->b(Landroid/content/Context;Z)V

    :cond_4f
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .registers 11

    .line 506
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPKWithStretegy 1"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 509
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v2

    .line 511
    sget-object v3, Lcom/baidu/mobstat/g;->g:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v3

    .line 512
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->h()J

    move-result-wide v5

    .line 513
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; interval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-eqz v2, :cond_4b

    sub-long/2addr v0, v3

    cmp-long v2, v0, v5

    if-lez v2, :cond_57

    .line 515
    :cond_4b
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPKWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/baidu/mobstat/c;->b(Landroid/content/Context;)V

    :cond_57
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .registers 6

    .line 534
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/g;->h:Lcom/baidu/mobstat/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    .line 536
    invoke-static {p1}, Lcom/baidu/mobstat/h;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 537
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 540
    :goto_27
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-lez v1, :cond_32

    .line 542
    invoke-static {v0}, Lcom/baidu/mobstat/h;->c(Lorg/json/JSONObject;)V

    .line 544
    :cond_32
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_38
    return-void
.end method

.method private h(Landroid/content/Context;)Z
    .registers 4

    .line 549
    sget-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 554
    :cond_a
    sget-object v0, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 559
    :cond_13
    sget-object v0, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 564
    :cond_1c
    sget-object v0, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    return v1

    .line 569
    :cond_25
    sget-object v0, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .registers 5

    .line 530
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p1

    sget-object v0, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    invoke-virtual {p1, v0, p2, p3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 522
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 9

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->y(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->y(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lcom/baidu/mobstat/x;->d:I

    .line 93
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "startDataAnynalyzed start"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/x;->a(Lorg/json/JSONObject;)V

    .line 97
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lcom/baidu/mobstat/w;->a()Z

    move-result v0

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "is data collect closed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    if-nez v0, :cond_cb

    .line 102
    sget-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    const/16 v3, 0x2710

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->c(Landroid/content/Context;)V

    .line 111
    :cond_51
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 112
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "huawei"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x1c

    if-lt v4, v0, :cond_71

    const/4 v1, 0x1

    goto :goto_72

    :cond_71
    nop

    .line 121
    :goto_72
    sget-object v0, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_7f

    if-nez v1, :cond_7f

    .line 129
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->d(Landroid/content/Context;)V

    .line 136
    :cond_7f
    sget-object v0, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_8c

    if-nez v1, :cond_8c

    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->e(Landroid/content/Context;)V

    .line 143
    :cond_8c
    sget-boolean v0, Lcom/baidu/mobstat/z;->e:Z

    if-eqz v0, :cond_9d

    .line 144
    sget-object v0, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_9d

    if-nez v1, :cond_9d

    .line 150
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->f(Landroid/content/Context;)V

    .line 156
    :cond_9d
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 157
    invoke-virtual {p2}, Lcom/baidu/mobstat/w;->l()Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 158
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    const-string v0, "sendLog"

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->g(Landroid/content/Context;)V

    goto :goto_cb

    :cond_b6
    if-nez v0, :cond_c2

    .line 161
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p1

    const-string p2, "isWifiAvailable = false, will not sendLog"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_cb

    .line 163
    :cond_c2
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p1

    const-string p2, "can not sendLog due to time stratergy"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 183
    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p1

    const-string p2, "startDataAnynalyzed finished"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 13

    .line 730
    invoke-static {}, Lcom/baidu/mobstat/ds;->c()Ljava/lang/Boolean;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 735
    :cond_c
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p1

    .line 737
    sget-object v0, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v2

    .line 738
    invoke-virtual {p1}, Lcom/baidu/mobstat/w;->c()J

    move-result-wide v4

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 741
    sub-long v8, v6, v2

    const-string p1, ";timeInteveral="

    const-string v0, "nowTime="

    cmp-long v10, v8, v4

    if-lez v10, :cond_4b

    .line 742
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 749
    :cond_4b
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-virtual {v8, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    return v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 526
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/w;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .line 758
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
