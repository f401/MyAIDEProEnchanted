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
    .locals 1

    .line 65
    new-instance v0, Lcom/baidu/mobstat/x;

    invoke-direct {v0}, Lcom/baidu/mobstat/x;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/x;->b:Landroid/os/Handler;

    .line 85
    iput-boolean v1, p0, Lcom/baidu/mobstat/x;->c:Z

    .line 86
    iput v1, p0, Lcom/baidu/mobstat/x;->d:I

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .line 403
    new-instance v0, Lcom/baidu/mobstat/aa;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/aa;-><init>(Lorg/json/JSONObject;)V

    .line 405
    iget-boolean v1, v0, Lcom/baidu/mobstat/aa;->a:Z

    sput-boolean v1, Lcom/baidu/mobstat/z;->b:Z

    .line 406
    iget-object v1, v0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    .line 407
    iget-boolean v0, v0, Lcom/baidu/mobstat/aa;->c:Z

    sput-boolean v0, Lcom/baidu/mobstat/z;->d:Z

    return-void
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .line 579
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 581
    :try_start_0
    const-string v0, "detector_count"

    iget v1, p0, Lcom/baidu/mobstat/x;->d:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v0, "he"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 592
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v3, "APP_MEM"

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->b()Z

    move-result v1

    if-nez v1, :cond_a

    .line 596
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 597
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 598
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 601
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 603
    :try_start_1
    const-string v1, "app_mem3"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 613
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "APP_APK"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    const/16 v3, 0x5000

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 615
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 616
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 583
    :catch_0
    move-exception v0

    .line 586
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 605
    :catch_1
    move-exception v1

    .line 608
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    move v1, v0

    goto :goto_1

    .line 621
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 623
    :try_start_2
    const-string v0, "app_apk3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    add-int/2addr v1, v0

    .line 632
    :cond_1
    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "APP_CHANGE"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    const/16 v3, 0x2800

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 634
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 635
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 625
    :catch_2
    move-exception v0

    .line 628
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 640
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 642
    :try_start_3
    const-string v0, "app_change3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    add-int/2addr v1, v0

    .line 651
    :cond_3
    :goto_5
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "APP_TRACE"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    const/16 v3, 0x3c00

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 653
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 654
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 644
    :catch_3
    move-exception v0

    .line 647
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 659
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 662
    :try_start_4
    const-string v0, "app_trace3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    add-int/2addr v1, v0

    .line 671
    :cond_5
    :goto_7
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "APP_LIST"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    const v3, 0xb400

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 673
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 674
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    .line 664
    :catch_4
    move-exception v0

    .line 667
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 679
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 682
    :try_start_5
    const-string v0, "app_list3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    add-int/2addr v1, v0

    .line 691
    :cond_7
    :goto_9
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v3, "AP_LIST"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 693
    sget-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    const v3, 0x2d000

    sub-int/2addr v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 694
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 695
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 684
    :catch_5
    move-exception v0

    .line 687
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 700
    :cond_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 702
    :try_start_6
    const-string v0, "ap_list3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    add-int/2addr v1, v0

    .line 711
    :cond_9
    :goto_b
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "log in bytes is almost :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 713
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 714
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 716
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 718
    :try_start_7
    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 721
    :goto_c
    return-void

    .line 704
    :catch_6
    move-exception v0

    .line 707
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 719
    :catch_7
    move-exception v0

    .line 721
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_a
    move v1, v0

    goto/16 :goto_1
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

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

    move-result-wide v2

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 421
    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->e()J

    move-result-wide v0

    .line 423
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; time interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 427
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 429
    invoke-static {p1}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 442
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v2

    .line 444
    sget-object v3, Lcom/baidu/mobstat/g;->b:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v4

    .line 445
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->f()J

    move-result-wide v6

    .line 446
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "now time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ": last time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "; userInterval : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 447
    invoke-virtual {v3, v8}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    sub-long v8, v0, v4

    cmp-long v3, v8, v6

    if-gtz v3, :cond_0

    .line 448
    invoke-virtual {v2, v4, v5}, Lcom/baidu/mobstat/w;->a(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    const-string v4, "collectUserAPPListWithStretegy 1"

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 450
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;Z)V

    .line 457
    :cond_1
    sget-object v3, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v4

    .line 458
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->g()J

    move-result-wide v2

    .line 459
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; sysInterval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 462
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectSysAPPListWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/c;->a(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 9

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v2

    .line 489
    sget-object v3, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v4

    .line 490
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->i()J

    move-result-wide v2

    .line 491
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; time interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 494
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPPTraceWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/c;->b(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 9

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

    move-result-wide v4

    .line 512
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->h()J

    move-result-wide v2

    .line 513
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "now time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; interval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 515
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "collectAPKWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/baidu/mobstat/c;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    .line 534
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/g;->h:Lcom/baidu/mobstat/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    .line 536
    invoke-static {p1}, Lcom/baidu/mobstat/h;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 537
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 540
    :goto_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_0

    .line 542
    invoke-static {v1}, Lcom/baidu/mobstat/h;->c(Lorg/json/JSONObject;)V

    .line 544
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 549
    sget-object v1, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    sget-object v1, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    sget-object v1, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    sget-object v1, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    sget-object v1, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    .line 530
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    invoke-virtual {v0, v1, p2, p3}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 522
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x2710

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->y(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->y(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/baidu/mobstat/x;->d:I

    .line 93
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v2, "startDataAnynalyzed start"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/x;->a(Lorg/json/JSONObject;)V

    .line 97
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->a()Z

    move-result v2

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "is data collect closed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    if-nez v2, :cond_5

    .line 102
    sget-object v2, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    invoke-virtual {v2, p1, v6}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->c(Landroid/content/Context;)V

    .line 111
    :cond_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    const-string v4, "huawei"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    if-lt v3, v2, :cond_1

    const/4 v1, 0x1

    .line 121
    :cond_1
    sget-object v2, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    invoke-virtual {v2, p1, v6}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 129
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->d(Landroid/content/Context;)V

    .line 136
    :cond_2
    sget-object v2, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    invoke-virtual {v2, p1, v6}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->e(Landroid/content/Context;)V

    .line 143
    :cond_3
    sget-boolean v2, Lcom/baidu/mobstat/z;->e:Z

    if-eqz v2, :cond_4

    .line 144
    sget-object v2, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    invoke-virtual {v2, p1, v6}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 150
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->f(Landroid/content/Context;)V

    .line 156
    :cond_4
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "sendLog"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/x;->g(Landroid/content/Context;)V

    .line 183
    :cond_5
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "startDataAnynalyzed finished"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    move v0, v1

    .line 92
    goto/16 :goto_0

    .line 159
    :cond_7
    if-nez v1, :cond_8

    .line 161
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "isWifiAvailable = false, will not sendLog"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_8
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "can not sendLog due to time stratergy"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    .line 730
    invoke-static {}, Lcom/baidu/mobstat/ds;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return v0

    .line 735
    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v1

    .line 737
    sget-object v2, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v2

    .line 738
    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->c()J

    move-result-wide v4

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 741
    sub-long v8, v6, v2

    cmp-long v1, v8, v4

    if-lez v1, :cond_1

    .line 742
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "nowTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";timeInteveral="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "nowTime="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";timeInteveral="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 526
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/w;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 758
    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
