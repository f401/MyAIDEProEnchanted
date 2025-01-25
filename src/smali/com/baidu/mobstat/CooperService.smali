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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->c:Z

    .line 47
    const-string v1, "0"

    iput-object v1, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mobstat/CooperService;->e:Z

    .line 51
    iput-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->f:Z

    .line 53
    iput v0, p0, Lcom/baidu/mobstat/CooperService;->g:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/mobstat/CooperService;->h:I

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 169
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, "02:00:00:00:00:00"

    if-nez v0, :cond_d

    return-object v1

    .line 176
    :cond_d
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 178
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    return-object v1
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    .line 268
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 270
    :cond_7
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 273
    :goto_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 274
    const-string p1, ""

    :cond_13
    return-object p1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 186
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 190
    :cond_d
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 192
    const-string v0, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 628
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 630
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hol"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4e
    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_45

    const-string v1, ""

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 736
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 738
    iget-object v2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/dl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    :cond_28
    if-eqz v0, :cond_3a

    .line 742
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 743
    :cond_3a
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_44} :catch_45

    goto :goto_46

    .line 751
    :catch_45
    move-exception p1

    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static instance()Lcom/baidu/mobstat/CooperService;
    .registers 2

    const-class v0, Lcom/baidu/mobstat/CooperService;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-nez v0, :cond_e

    .line 60
    new-instance v0, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v0}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    .line 63
    :cond_e
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .registers 3

    .line 885
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 888
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public closeTrace()V
    .registers 2

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/CooperService;->e:Z

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

    if-eqz v1, :cond_f

    return-void

    .line 413
    :cond_f
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

    if-eqz v0, :cond_28

    return-void

    .line 418
    :cond_28
    const-string v0, "hol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "0200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 419
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    goto :goto_43

    :catchall_42
    move-exception p1

    :cond_43
    :goto_43
    return-void
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .registers 4

    .line 908
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    .line 587
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 588
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 589
    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6b

    .line 591
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 593
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_75

    .line 599
    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v3, v3, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 600
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v3

    .line 599
    invoke-static {v2, v3}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_47} :catch_49

    move-object v1, v0

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    :goto_4d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 607
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    const/4 p3, 0x1

    goto :goto_69

    .line 611
    :cond_61
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    :goto_69
    move v2, p3

    goto :goto_75

    .line 618
    :cond_6b
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_75

    :cond_74
    const/4 v2, 0x0

    :goto_75
    return v2
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 675
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 756
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 757
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 761
    :cond_10
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-object p1
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .registers 4

    .line 772
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v0, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 773
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->f(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 776
    :cond_f
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget p1, p1, Lcom/baidu/mobstat/HeadObject;->g:I

    return p1
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 780
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 781
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    .line 784
    :cond_12
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-object p1
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 331
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 334
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 335
    const-string p1, "\\s*|\t|\r|\n"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 340
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception p1

    :cond_43
    :goto_43
    if-eqz p2, :cond_4a

    .line 347
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    return-object p1

    .line 350
    :cond_4a
    :try_start_4a
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_68

    .line 352
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_66} :catch_67

    return-object p2

    :catch_67
    move-exception p1

    :cond_68
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectTitleMaxLevel()I
    .registers 2

    .line 1070
    iget v0, p0, Lcom/baidu/mobstat/CooperService;->g:I

    return v0
.end method

.method public getDevicImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 388
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 394
    :cond_d
    :try_start_d
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 395
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 396
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception p1

    :cond_23
    :goto_23
    return-object v1
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    .line 445
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 447
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    .line 460
    :cond_f
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/dl;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 462
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 463
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    .line 468
    :cond_26
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/dl;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_c1

    .line 475
    const/4 v1, 0x1

    :try_start_38
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_4b

    const/4 v5, 0x1

    goto :goto_51

    :catch_4b
    move-exception v4

    .line 479
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    const/4 v5, 0x0

    .line 482
    :goto_51
    const/16 v6, 0x1e

    const-string v7, "="

    const-string v8, "+"

    if-eqz v5, :cond_73

    .line 483
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_a8

    .line 488
    :cond_60
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_aa

    goto :goto_a8

    .line 498
    :cond_73
    :try_start_73
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10, v9}, Lcom/baidu/mobstat/dh$b;->b(I[B)[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_85} :catch_88

    move-object v4, v5

    const/4 v5, 0x1

    goto :goto_8d

    :catch_88
    move-exception v5

    .line 502
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    :goto_8d
    if-eqz v5, :cond_b8

    .line 506
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_96

    goto :goto_a8

    .line 511
    :cond_96
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_aa

    .line 483
    :cond_a8
    :goto_a8
    move-object v0, v3

    move-object v4, v0

    .line 523
    :cond_aa
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 524
    invoke-virtual {p0, p2, v4, v1}, Lcom/baidu/mobstat/CooperService;->filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 525
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    .line 517
    :cond_b8
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 518
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    :cond_c1
    if-eqz p1, :cond_ed

    .line 530
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 531
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 535
    :try_start_d3
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, v4}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 536
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_e1

    :cond_e0
    move-object p1, v3

    :goto_e1
    if-eqz p1, :cond_ed

    .line 540
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 541
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_eb} :catch_ec

    goto :goto_ed

    :catch_ec
    move-exception p1

    .line 552
    :cond_ed
    :goto_ed
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_109

    const-string p1, "000000000000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    goto :goto_109

    .line 566
    :cond_fc
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 567
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    .line 553
    :cond_109
    :goto_109
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-virtual {p0, p2, p1, v2}, Lcom/baidu/mobstat/CooperService;->filterCuid(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_118

    .line 558
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    .line 581
    :cond_118
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1
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
    .registers 3

    .line 79
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 84
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_16

    :catch_14
    move-exception p1

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
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

    move-result-object p1

    return-object p1
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 830
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 831
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    .line 834
    :cond_12
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    return-object p1
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .registers 2

    .line 768
    const-string v0, "4.0.10.5"

    return-object v0
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 291
    :cond_d
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 292
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object p1

    .line 295
    :cond_1c
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 297
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object p1

    .line 302
    :cond_33
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ds;->i(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 304
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/dl;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object p1

    .line 309
    :cond_4e
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    .line 310
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object p1
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 876
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    .line 879
    :cond_10
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

    if-eqz v0, :cond_10

    .line 855
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    .line 858
    :cond_10
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

    if-eqz v0, :cond_14

    .line 844
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    .line 847
    :cond_14
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3

    .line 812
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 813
    const-string p1, ""

    return-object p1

    .line 816
    :cond_d
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 817
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    .line 820
    :cond_1f
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    return-object p1
.end method

.method public getPhoneAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 7

    .line 233
    const-string v0, "02:00:00:00:00:00"

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_17

    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_17

    .line 236
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 240
    :cond_17
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 241
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    return-object p1

    .line 244
    :cond_26
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/dl;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 246
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v1, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 247
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    return-object p1

    .line 250
    :cond_3d
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 254
    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object p2, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    return-object p1

    .line 261
    :cond_65
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v2, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    return-object p1
.end method

.method public getPhoneModel()Ljava/lang/String;
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 866
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    .line 868
    :cond_10
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

    if-eqz v1, :cond_e

    .line 646
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string v0, ""

    :cond_16
    return-object v0
.end method

.method public getPlatformType()Ljava/lang/String;
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 111
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 116
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_16

    :catch_14
    move-exception p1

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 892
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue()I
    .registers 2

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

    move-result-object p1

    return-object p1
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

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

    move-result p1

    return p1
.end method

.method public isEnableBplus(Landroid/content/Context;)Z
    .registers 3

    .line 1062
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->x(Landroid/content/Context;)Z

    move-result p1

    return p1
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

    return-void
.end method

.method public setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 794
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 798
    :cond_7
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-void
.end method

.method public setCollectTitleMaxLevel(I)V
    .registers 2

    .line 1074
    iput p1, p0, Lcom/baidu/mobstat/CooperService;->g:I

    return-void
.end method

.method public setEnableAutoEvent(Z)V
    .registers 2

    .line 1034
    iput-boolean p1, p0, Lcom/baidu/mobstat/CooperService;->c:Z

    return-void
.end method

.method public setEnableBplus(Landroid/content/Context;Z)V
    .registers 4

    .line 1066
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method public setEnableDownloadJs(Z)V
    .registers 2

    .line 1058
    iput-boolean p1, p0, Lcom/baidu/mobstat/CooperService;->f:Z

    return-void
.end method

.method public setEvAutoSize(I)V
    .registers 2

    .line 1082
    iput p1, p0, Lcom/baidu/mobstat/CooperService;->h:I

    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 6

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_b

    .line 96
    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    :cond_b
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/HeadObject;->setHeaderExt(Lorg/json/JSONObject;)V

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/dl;->g(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Set global ExtraInfo: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    .line 105
    :cond_2c
    const-string p1, "Clear global ExtraInfo"

    .line 107
    :goto_2e
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderPy(Ljava/lang/String;)V
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/HeadObject;->setHeaderPy(Ljava/lang/String;)V

    return-void
.end method

.method public setLastUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 944
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->j(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setPlatformType(I)V
    .registers 3

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/CooperService;->d:Ljava/lang/String;

    return-void
.end method

.method public setPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 126
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/CooperService;->getPushId(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :cond_b
    :try_start_b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 133
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 135
    :cond_15
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception p2

    .line 141
    :goto_1a
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/HeadObject;->setPushInfo(Lorg/json/JSONObject;)V

    .line 142
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/dl;->h(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p4, :cond_43

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Set platform:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pushId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    .line 148
    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Clear platform:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pushId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    :goto_56
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setStartType(Z)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/HeadObject;->setStartType(Z)V

    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 920
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 921
    const-string p2, ""

    .line 924
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_15

    .line 925
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 928
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dl;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 929
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/HeadObject;->setUserId(Ljava/lang/String;)V

    .line 931
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Set user id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 932
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUserProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 948
    const-string v0, ""

    .line 949
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    if-nez p2, :cond_17

    .line 953
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/dl;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 954
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/HeadObject;->setUserProperty(Ljava/lang/String;)V

    return-void

    .line 959
    :cond_17
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_29

    .line 960
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    const-string v0, "[WARNING] setUserProperty failed,map size can not over 100 !"

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    .line 964
    :cond_29
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    .line 966
    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 968
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 969
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 970
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 971
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 972
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_83

    if-nez v4, :cond_58

    goto :goto_83

    .line 977
    :cond_58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-gt v6, v7, :cond_79

    .line 978
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_6d

    goto :goto_79

    .line 986
    :cond_6d
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 988
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 989
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_32

    .line 981
    :cond_79
    :goto_79
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v3, "[WARNING] setUserProperty failed,key or value can not over 256 bytes !"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_8c

    .line 974
    :cond_83
    :goto_83
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v3, "[WARNING] setUserProperty failed,key or value can not null !"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8c} :catch_90

    :goto_8c
    const/4 v0, 0x0

    goto :goto_32

    :cond_8e
    move v2, v0

    goto :goto_ad

    :catch_90
    move-exception p2

    .line 995
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Exception] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ad
    if-eqz v2, :cond_c3

    .line 1002
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/dl;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 1003
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/HeadObject;->setUserProperty(Ljava/lang/String;)V

    :cond_c3
    return-void
.end method

.method public setZid(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
