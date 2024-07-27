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

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 34
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_1
    :try_start_2
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "2"

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->c()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 119
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getPhoneAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :goto_2
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->l(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :cond_2
    :goto_3
    const/4 v1, 0x1

    :try_start_5
    invoke-static {p1, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    :goto_5
    :try_start_7
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

    .line 159
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 160
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    .line 161
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    .line 162
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    :cond_3
    :goto_6
    :try_start_8
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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    :try_start_9
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
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 186
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 193
    :goto_8
    :try_start_b
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
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    .line 211
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_4
    const-string v1, "0"

    goto/16 :goto_1

    .line 120
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 126
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 137
    :catch_2
    move-exception v1

    goto/16 :goto_4

    .line 149
    :catch_3
    move-exception v0

    goto/16 :goto_5

    .line 164
    :catch_4
    move-exception v0

    goto :goto_6

    .line 180
    :catch_5
    move-exception v0

    goto :goto_7

    .line 187
    :catch_6
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    .line 69
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/HeadObject;->a(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeaderExt(Lorg/json/JSONObject;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    .line 344
    return-void
.end method

.method public setHeaderPy(Ljava/lang/String;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->E:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setPushInfo(Lorg/json/JSONObject;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    .line 348
    return-void
.end method

.method public setStartType(Z)V
    .registers 3

    .line 364
    if-eqz p1, :cond_0

    .line 365
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setZid(Ljava/lang/String;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->D:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    const/4 v0, 0x0

    .line 217
    monitor-enter p0

    const-string v1, "Android"

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_0
    :try_start_0
    const-string v2, "o"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v1, "st"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_1
    :try_start_1
    const-string v2, "s"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_2
    :try_start_2
    const-string v2, "sv"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_3
    :try_start_3
    const-string v2, "k"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_9

    const-string v1, "0"

    :goto_4
    :try_start_4
    const-string v2, "pt"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v1, "i"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "v"

    const-string v2, "4.0.10.5"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v1, "sc"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v1, "a"

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_a

    const-string v1, ""

    :goto_5
    :try_start_5
    const-string v2, "n"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v1, "d"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_b

    const-string v1, ""

    :goto_6
    :try_start_6
    const-string v2, "mc"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_c

    const-string v1, ""

    :goto_7
    :try_start_7
    const-string v2, "bm"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_d

    const-string v1, ""

    :goto_8
    :try_start_8
    const-string v2, "dd"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v1, :cond_e

    const-string v1, ""

    :goto_9
    :try_start_9
    const-string v2, "ii"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v1, "tg"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v1, "w"

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v1, "h"

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v1, :cond_f

    const-string v1, ""

    :goto_a
    :try_start_a
    const-string v2, "dn"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v1, :cond_10

    const-string v1, ""

    :goto_b
    :try_start_b
    const-string v2, "c"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v1, :cond_11

    const-string v1, ""

    :goto_c
    :try_start_c
    const-string v2, "op"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v1, :cond_12

    const-string v1, ""

    :goto_d
    :try_start_d
    const-string v2, "m"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v1, :cond_13

    const-string v1, ""

    :goto_e
    :try_start_e
    const-string v2, "ma"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v1, :cond_14

    const-string v1, ""

    :goto_f
    :try_start_f
    const-string v2, "l"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v1, "pn"

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/baidu/mobstat/ds;->n(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v1, :cond_15

    const-string v1, ""

    :goto_10
    :try_start_10
    const-string v2, "rom"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v1, :cond_16

    const-string v1, ""

    :goto_11
    :try_start_11
    const-string v2, "bo"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-nez v1, :cond_17

    const-string v1, ""

    :goto_12
    :try_start_12
    const-string v2, "bd"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "td"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_0
    :goto_13
    const-string v1, "tv"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v0, "user_property"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "od"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "out_od"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v0, "from"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v0, "gaid"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "iid"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->d(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "ii3"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "ssaid"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ds;->g(ILandroid/content/Context;)Ljava/lang/String;

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

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    :goto_14
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
    :cond_1
    const-string v0, "uid_change"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v0, "at"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v0, "pl"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const/4 v0, 0x0

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v0

    .line 317
    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    :try_start_13
    const-string v1, "scl"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_15
    :try_start_14
    const-string v1, "sign"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 323
    const-string v0, "ext"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->y:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :goto_16
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    .line 332
    :cond_4
    const-string v0, "push"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->z:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v0, "uid"

    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->A:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v0, "startType"

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->B:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 339
    :goto_17
    monitor-exit p0

    return-void

    .line 217
    :cond_5
    const-string v1, "Android"

    goto/16 :goto_0

    .line 219
    :cond_6
    :try_start_15
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    goto/16 :goto_2

    .line 221
    :cond_8
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    goto/16 :goto_3

    .line 222
    :cond_9
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    goto/16 :goto_4

    .line 227
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    goto/16 :goto_5

    .line 230
    :cond_b
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    goto/16 :goto_6

    .line 231
    :cond_c
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    goto/16 :goto_7

    .line 232
    :cond_d
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto/16 :goto_8

    .line 240
    :cond_e
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    goto/16 :goto_9

    .line 245
    :cond_f
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    goto/16 :goto_a

    .line 246
    :cond_10
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    goto/16 :goto_b

    .line 247
    :cond_11
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    goto/16 :goto_c

    .line 248
    :cond_12
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    goto/16 :goto_d

    .line 249
    :cond_13
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    goto/16 :goto_e

    .line 250
    :cond_14
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    goto/16 :goto_f

    .line 253
    :cond_15
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    goto/16 :goto_10

    .line 254
    :cond_16
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    goto/16 :goto_11

    .line 255
    :cond_17
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    goto/16 :goto_12

    .line 260
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto/16 :goto_13

    .line 289
    :cond_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_14

    .line 336
    :catch_0
    move-exception v0

    goto :goto_17

    .line 319
    :cond_1a
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    goto/16 :goto_15

    .line 325
    :cond_1b
    const-string v0, "ext"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_16

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
