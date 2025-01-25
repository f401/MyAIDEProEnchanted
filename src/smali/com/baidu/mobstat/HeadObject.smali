.class public Lcom/baidu/mobstat/HeadObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Lorg/json/JSONObject;

.field z:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 34
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    .line 83
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_165

    if-eqz v0, :cond_7

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_7
    :try_start_7
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 89
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 92
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    .line 102
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getPushId(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    .line 104
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/dl;->i(Landroid/content/Context;)Z

    move-result v1
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_165

    if-eqz v1, :cond_86

    const-string v1, "1"

    goto :goto_88

    :cond_86
    const-string v1, "0"

    :goto_88
    :try_start_88
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 109
    const-string v1, "2"

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 113
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-14"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v1
    :try_end_b1
    .catchall {:try_start_88 .. :try_end_b1} :catchall_165

    if-eqz v1, :cond_cf

    .line 118
    :try_start_b3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 119
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/baidu/mobstat/CooperService;->getPhoneAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c5} :catch_c6
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_165

    goto :goto_c7

    .line 212
    :catch_c6
    move-exception v1

    .line 125
    :goto_c7
    :try_start_c7
    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->l(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cd} :catch_ce
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_165

    goto :goto_cf

    .line 212
    :catch_ce
    move-exception v1

    .line 136
    :cond_cf
    :goto_cf
    :try_start_cf
    invoke-static {p1, v2}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d5} :catch_d6
    .catchall {:try_start_cf .. :try_end_d5} :catchall_165

    goto :goto_d7

    .line 212
    :catch_d6
    move-exception v1

    .line 148
    :goto_d7
    :try_start_d7
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e1} :catch_e2
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_165

    goto :goto_e3

    .line 212
    :catch_e2
    move-exception v0

    .line 155
    :goto_e3
    :try_start_e3
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    .line 156
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 158
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_109

    .line 160
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    xor-int/2addr v1, v0

    .line 161
    iput v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    .line 162
    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_107} :catch_108
    .catchall {:try_start_e3 .. :try_end_107} :catchall_165

    goto :goto_109

    .line 212
    :catch_108
    move-exception v0

    .line 169
    :cond_109
    :goto_109
    :try_start_109
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_109 .. :try_end_11d} :catchall_165

    .line 178
    :try_start_11d
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 179
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_131} :catch_132
    .catchall {:try_start_11d .. :try_end_131} :catchall_165

    goto :goto_133

    .line 212
    :catch_132
    move-exception v0

    .line 186
    :goto_133
    :try_start_133
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13d} :catch_13e
    .catchall {:try_start_133 .. :try_end_13d} :catchall_165

    goto :goto_13f

    .line 212
    :catch_13e
    move-exception v0

    .line 193
    :goto_13f
    :try_start_13f
    invoke-static {}, Lcom/baidu/mobstat/ds;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    .line 199
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    .line 200
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    .line 208
    iput-boolean v2, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    .line 211
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;
    :try_end_163
    .catchall {:try_start_13f .. :try_end_163} :catchall_165

    .line 212
    monitor-exit p0

    return-void

    :catchall_165
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    .line 69
    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/HeadObject;->a(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    const/16 v1, 0xa

    if-le v0, v1, :cond_e

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    .line 77
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHeaderExt(Lorg/json/JSONObject;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    return-void
.end method

.method public setHeaderPy(Ljava/lang/String;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->E:Ljava/lang/String;

    return-void
.end method

.method public setPushInfo(Lorg/json/JSONObject;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    return-void
.end method

.method public setStartType(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 365
    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    goto :goto_9

    .line 367
    :cond_6
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    :goto_9
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    return-void
.end method

.method public setZid(Ljava/lang/String;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->D:Ljava/lang/String;

    return-void
.end method

.method public updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    monitor-enter p0

    .line 217
    :try_start_1
    const-string v0, "o"

    const-string v1, "Android"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "st"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_242
    .catchall {:try_start_1 .. :try_end_10} :catchall_23f

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    :try_start_14
    const-string v2, "s"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_242
    .catchall {:try_start_14 .. :try_end_1b} :catchall_23f

    if-nez v0, :cond_1f

    const-string v0, ""

    :cond_1f
    :try_start_1f
    const-string v2, "sv"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_242
    .catchall {:try_start_1f .. :try_end_26} :catchall_23f

    if-nez v0, :cond_2a

    const-string v0, ""

    :cond_2a
    :try_start_2a
    const-string v2, "k"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_242
    .catchall {:try_start_2a .. :try_end_31} :catchall_23f

    if-nez v0, :cond_35

    const-string v0, "0"

    :cond_35
    :try_start_35
    const-string v2, "pt"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v0, "i"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v0, "v"

    const-string v2, "4.0.10.5"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v0, "sc"

    const/16 v2, 0xe

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v0, "a"

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_242
    .catchall {:try_start_35 .. :try_end_58} :catchall_23f

    if-nez v0, :cond_5c

    const-string v0, ""

    :cond_5c
    :try_start_5c
    const-string v2, "n"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "d"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6a} :catch_242
    .catchall {:try_start_5c .. :try_end_6a} :catchall_23f

    if-nez v0, :cond_6e

    const-string v0, ""

    :cond_6e
    :try_start_6e
    const-string v2, "mc"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_242
    .catchall {:try_start_6e .. :try_end_75} :catchall_23f

    if-nez v0, :cond_79

    const-string v0, ""

    :cond_79
    :try_start_79
    const-string v2, "bm"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_242
    .catchall {:try_start_79 .. :try_end_80} :catchall_23f

    if-nez v0, :cond_84

    const-string v0, ""

    :cond_84
    :try_start_84
    const-string v2, "dd"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_242
    .catchall {:try_start_84 .. :try_end_8b} :catchall_23f

    if-nez v0, :cond_8f

    const-string v0, ""

    :cond_8f
    :try_start_8f
    const-string v2, "ii"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v0, "tg"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v0, "w"

    iget v3, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v0, "h"

    iget v3, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_aa} :catch_242
    .catchall {:try_start_8f .. :try_end_aa} :catchall_23f

    if-nez v0, :cond_ae

    const-string v0, ""

    :cond_ae
    :try_start_ae
    const-string v3, "dn"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b5} :catch_242
    .catchall {:try_start_ae .. :try_end_b5} :catchall_23f

    if-nez v0, :cond_b9

    const-string v0, ""

    :cond_b9
    :try_start_b9
    const-string v3, "c"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c0} :catch_242
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_23f

    if-nez v0, :cond_c4

    const-string v0, ""

    :cond_c4
    :try_start_c4
    const-string v3, "op"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cb} :catch_242
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_23f

    if-nez v0, :cond_cf

    const-string v0, ""

    :cond_cf
    :try_start_cf
    const-string v3, "m"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d6} :catch_242
    .catchall {:try_start_cf .. :try_end_d6} :catchall_23f

    if-nez v0, :cond_da

    const-string v0, ""

    :cond_da
    :try_start_da
    const-string v3, "ma"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e1} :catch_242
    .catchall {:try_start_da .. :try_end_e1} :catchall_23f

    if-nez v0, :cond_e5

    const-string v0, ""

    :cond_e5
    :try_start_e5
    const-string v3, "l"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v0, "pn"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->n(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fe} :catch_242
    .catchall {:try_start_e5 .. :try_end_fe} :catchall_23f

    if-nez v0, :cond_102

    const-string v0, ""

    :cond_102
    :try_start_102
    const-string v3, "rom"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_109} :catch_242
    .catchall {:try_start_102 .. :try_end_109} :catchall_23f

    if-nez v0, :cond_10d

    const-string v0, ""

    :cond_10d
    :try_start_10d
    const-string v3, "bo"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_114} :catch_242
    .catchall {:try_start_10d .. :try_end_114} :catchall_23f

    if-nez v0, :cond_118

    const-string v0, ""

    :cond_118
    :try_start_118
    const-string v3, "bd"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v0, "td"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    if-eqz p1, :cond_135

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_12f

    goto :goto_135

    .line 260
    :cond_12f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 259
    :cond_135
    :goto_135
    const-string v0, "tv"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v0, "user_property"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "od"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "out_od"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v0, "from"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v0, "gaid"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "iid"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->d(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "ii3"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "ssaid"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->g(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "py"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->E:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "plt"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPlatformType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 286
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1af

    .line 289
    :cond_1aa
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 291
    :goto_1af
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 292
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 294
    const-string v2, "uid_"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v1, "user_property"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    :cond_1cc
    const-string v0, "uid_change"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v0, "at"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "pl"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ee

    .line 315
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_1ed} :catch_242
    .catchall {:try_start_118 .. :try_end_1ed} :catchall_23f

    goto :goto_1ef

    :cond_1ee
    const/4 p1, 0x0

    .line 317
    :goto_1ef
    if-nez p1, :cond_1f3

    const-string p1, ""

    :cond_1f3
    :try_start_1f3
    const-string v0, "scl"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fa} :catch_242
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_23f

    if-nez p1, :cond_1fe

    const-string p1, ""

    :cond_1fe
    :try_start_1fe
    const-string v0, "sign"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    if-eqz p1, :cond_215

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_215

    .line 323
    const-string p1, "ext"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_21a

    .line 325
    :cond_215
    const-string p1, "ext"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    :goto_21a
    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    if-nez p1, :cond_225

    .line 330
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    .line 332
    :cond_225
    const-string p1, "push"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string p1, "uid"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string p1, "startType"

    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_23e} :catch_242
    .catchall {:try_start_1fe .. :try_end_23e} :catchall_23f

    goto :goto_243

    :catchall_23f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 339
    :catch_242
    move-exception p1

    :goto_243
    monitor-exit p0

    return-void
.end method
