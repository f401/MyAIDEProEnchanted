.class public Lcom/baidu/mobstat/CooperService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/CooperService;


# instance fields
.field private b:Lcom/baidu/mobstat/HeadObject;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    .line 45
    iput-boolean v1, p0, Lcom/baidu/mobstat/CooperService;->c:Z

    .line 47
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->e:Z

    .line 51
    iput-boolean v1, p0, Lcom/baidu/mobstat/CooperService;->f:Z

    .line 53
    iput v1, p0, Lcom/baidu/mobstat/CooperService;->g:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/mobstat/CooperService;->h:I

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 169
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "02:00:00:00:00:00"

    .line 182
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "02:00:00:00:00:00"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 267
    if-eqz p2, :cond_1

    .line 268
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v0, ""

    .line 277
    :cond_0
    return-object v0

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 186
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const-string v0, ""

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 628
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    :cond_1
    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->g(Landroid/content/Context;)Z

    move-result v0

    .line 737
    if-eqz v0, :cond_1

    .line 738
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/dl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 742
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-object v0

    .line 747
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static instance()Lcom/baidu/mobstat/CooperService;
    .registers 2

    .line 59
    const-class v0, Lcom/baidu/mobstat/CooperService;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v0}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    .line 63
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .registers 4

    .line 883
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeTrace()V
    .registers 2

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->e:Z

    .line 1051
    return-void
.end method

.method public deleteCacheImei(Landroid/content/Context;)V
    .registers 5

    .line 409
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 414
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v0

    .line 413
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 415
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    const-string v0, "hol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .registers 4

    .line 908
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->d(Landroid/content/Context;Z)V

    .line 909
    return-void
.end method

.method public filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 587
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    const-string v0, ":"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 589
    const-string v0, "02:00:00:00:00:00"

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 624
    :goto_0
    return v1

    .line 597
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v4, v4, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 600
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v4

    .line 599
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, v3}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 612
    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, v3}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 675
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 756
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .registers 4

    .line 772
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v0, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->f(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v0, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    return v0
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 780
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6

    .line 331
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 335
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 347
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 358
    :goto_1
    return-object v0

    .line 350
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 358
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getCollectTitleMaxLevel()I
    .registers 2

    .line 1070
    iget v0, p0, Lcom/baidu/mobstat/CooperService;->g:I

    return v0
.end method

.method public getDevicImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 388
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const-string v0, ""

    .line 403
    :goto_0
    return-object v0

    .line 392
    :cond_0
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 396
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/16 v7, 0x1e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 445
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 581
    :goto_0
    return-object v0

    .line 460
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/dl;->i(Landroid/content/Context;)Z

    move-result v0

    .line 461
    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/dl;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 472
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 482
    :goto_1
    if-eqz v2, :cond_5

    .line 483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    const-string v1, ""

    .line 485
    const-string v0, ""

    .line 523
    :cond_2
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 524
    invoke-virtual {p0, p2, v1, v4}, Lcom/baidu/mobstat/CooperService;->filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 525
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    move v2, v5

    goto :goto_1

    .line 488
    :cond_3
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 489
    :cond_4
    const-string v1, ""

    .line 490
    const-string v0, ""

    goto :goto_2

    .line 495
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    move v3, v4

    .line 505
    :goto_3
    if-eqz v3, :cond_8

    .line 506
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    const-string v1, ""

    .line 508
    const-string v0, ""

    goto :goto_2

    .line 500
    :catch_1
    move-exception v2

    .line 502
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v5

    goto :goto_3

    .line 511
    :cond_6
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 512
    :cond_7
    const-string v1, ""

    .line 513
    const-string v0, ""

    goto :goto_2

    .line 517
    :cond_8
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 529
    :cond_9
    if-eqz p1, :cond_b

    .line 530
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 531
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 532
    const-string v1, ""

    .line 535
    :try_start_2
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, v3}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 536
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 539
    :cond_a
    if-eqz v1, :cond_b

    .line 540
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 541
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 552
    :cond_b
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 553
    :cond_c
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {p0, p2, v0, v5}, Lcom/baidu/mobstat/CooperService;->filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 557
    if-eqz v0, :cond_e

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 566
    :cond_d
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 581
    :cond_e
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 544
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public getEvAutoSize()I
    .registers 2

    .line 1078
    iget v0, p0, Lcom/baidu/mobstat/CooperService;->h:I

    return v0
.end method

.method public getHeadObject()Lcom/baidu/mobstat/HeadObject;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 71
    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 940
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .registers 2

    .line 768
    const-string v0, "4.0.10.5"

    return-object v0
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, ""

    .line 310
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ds;->i(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSysVersion()Ljava/lang/String;
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4

    .line 812
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    const-string v0, ""

    .line 820
    :goto_0
    return-object v0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6

    .line 233
    const-string v0, "02:00:00:00:00:00"

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-nez p2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/dl;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainDeviceIdForCar(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 643
    invoke-static {p1}, Lcom/baidu/mobstat/CarUUID;->optUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getPlatformType()Ljava/lang/String;
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    const/4 v1, 0x0

    .line 111
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 892
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagValue()I
    .registers 2

    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .registers 4

    .line 896
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 936
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method public isCloseTrace()Z
    .registers 2

    .line 1046
    iget-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->e:Z

    return v0
.end method

.method public isDeviceMacEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 915
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableBplus(Landroid/content/Context;)Z
    .registers 3

    .line 1062
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->x(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEnableDownloadJs()Z
    .registers 2

    .line 1054
    iget-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->f:Z

    return v0
.end method

.method public isEnabledAutoEvent()Z
    .registers 2

    .line 1030
    iget-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->c:Z

    return v0
.end method

.method public resetHeadSign()V
    .registers 3

    .line 901
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 794
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object p2, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCollectTitleMaxLevel(I)V
    .registers 2

    .line 1074
    iput p1, p0, Lcom/baidu/mobstat/CooperService;->g:I

    .line 1075
    return-void
.end method

.method public setEnableAutoEvent(Z)V
    .registers 2

    .line 1034
    iput-boolean p1, p0, Lcom/baidu/mobstat/CooperService;->c:Z

    .line 1035
    return-void
.end method

.method public setEnableBplus(Landroid/content/Context;Z)V
    .registers 4

    .line 1066
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;Z)V

    .line 1067
    return-void
.end method

.method public setEnableDownloadJs(Z)V
    .registers 2

    .line 1058
    iput-boolean p1, p0, Lcom/baidu/mobstat/CooperService;->f:Z

    .line 1059
    return-void
.end method

.method public setEvAutoSize(I)V
    .registers 2

    .line 1082
    iput p1, p0, Lcom/baidu/mobstat/CooperService;->h:I

    .line 1083
    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 6

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/HeadObject;->setHeaderExt(Lorg/json/JSONObject;)V

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/dl;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    if-eqz p2, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set global ExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 108
    return-void

    .line 105
    :cond_1
    const-string v0, "Clear global ExtraInfo"

    goto :goto_0
.end method

.method public setHeaderPy(Ljava/lang/String;)V
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/HeadObject;->setHeaderPy(Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method public setLastUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 944
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public setPlatformType(I)V
    .registers 4

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    .line 1039
    return-void
.end method

.method public setPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 126
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/CooperService;->getPushId(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/HeadObject;->setPushInfo(Lorg/json/JSONObject;)V

    .line 142
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    if-eqz p4, :cond_2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set platform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 151
    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear platform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setStartType(Z)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/HeadObject;->setStartType(Z)V

    .line 155
    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/16 v1, 0x100

    .line 920
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    const-string p2, ""

    .line 924
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 925
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 928
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/HeadObject;->setUserId(Ljava/lang/String;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public setUserProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x100

    const/4 v3, 0x0

    .line 948
    const/4 v2, 0x1

    .line 949
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 952
    if-nez p2, :cond_1

    .line 953
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/HeadObject;->setUserProperty(Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 960
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] setUserProperty failed,map size can not over 100 !"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 993
    :catch_0
    move-exception v0

    .line 995
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Exception] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    .line 1000
    :goto_1
    if-eqz v0, :cond_0

    .line 1002
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/HeadObject;->setUserProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 966
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 968
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 969
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 970
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 971
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 972
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v0, :cond_4

    .line 974
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] setUserProperty failed,key or value can not null !"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    move v2, v3

    .line 975
    goto :goto_2

    .line 977
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v8, :cond_5

    .line 978
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_6

    .line 981
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] setUserProperty failed,key or value can not over 256 bytes !"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    move v2, v3

    .line 983
    goto :goto_2

    .line 986
    :cond_6
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 988
    const-string v0, "1"

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 989
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 998
    goto :goto_1
.end method

.method public setZid(Ljava/lang/String;)V
    .registers 2

    .line 1014
    return-void
.end method
