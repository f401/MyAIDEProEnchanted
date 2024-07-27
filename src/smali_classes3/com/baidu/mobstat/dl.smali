.class public Lcom/baidu/mobstat/dl;
.super Lcom/baidu/mobstat/di;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-string v0, "__Baidu_Stat_SDK_SendRem"

    sput-object v0, Lcom/baidu/mobstat/dl;->a:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/baidu/mobstat/dl;

    invoke-direct {v0}, Lcom/baidu/mobstat/dl;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dl;->b:Lcom/baidu/mobstat/dl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/baidu/mobstat/di;-><init>()V

    .line 83
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/dl;
    .registers 1

    .line 91
    sget-object v0, Lcom/baidu/mobstat/dl;->b:Lcom/baidu/mobstat/dl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 95
    sget-object v0, Lcom/baidu/mobstat/dl;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    .line 106
    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .registers 6

    .line 413
    const-string v0, "autotrace_track_js_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 414
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 169
    const-string v0, "device_id_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 4

    .line 148
    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public b(Landroid/content/Context;)I
    .registers 4

    .line 116
    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;I)V
    .registers 4

    .line 127
    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .registers 6

    .line 431
    const-string v0, "autotrace_track_js_fetch_interval"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 432
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 189
    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    const-string v0, "cuid"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_0
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    const-string v0, "cuidsec_2"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .registers 4

    .line 237
    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public c(Landroid/content/Context;)I
    .registers 4

    .line 137
    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;J)V
    .registers 6

    .line 449
    const-string v0, "autotrace_config_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 450
    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .registers 4

    .line 317
    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 318
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 217
    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public d(Landroid/content/Context;Z)V
    .registers 4

    .line 395
    const-string v0, "mtjsdkmactrick"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 396
    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .registers 4

    .line 158
    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 179
    const-string v0, "device_id_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 277
    const-string v0, "mtjsdkmacss2_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .registers 4

    .line 646
    const-string v0, "bplus"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 647
    return-void
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 227
    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 337
    const-string v0, "mtjsdkmacsstv_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 357
    const-string v0, "he.ext"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public g(Landroid/content/Context;)Z
    .registers 4

    .line 247
    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 287
    const-string v0, "mtjsdkmacss2_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 377
    const-string v0, "he.push"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string p2, ""

    .line 472
    :cond_0
    const-string v0, "custom_userid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public i(Landroid/content/Context;)Z
    .registers 4

    .line 327
    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 347
    const-string v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 492
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string p2, ""

    .line 496
    :cond_0
    const-string v0, "last_custom_userid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 367
    const-string v0, "he.ext"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 515
    const-string v0, "scheme_time"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 387
    const-string v0, "he.push"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 533
    const-string v0, "encrypt_device_id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public m(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 570
    const-string v0, "user_property"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public m(Landroid/content/Context;)Z
    .registers 4

    .line 403
    const-string v0, "mtjsdkmactrick"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n(Landroid/content/Context;)J
    .registers 6

    .line 422
    const-string v0, "autotrace_track_js_fetch_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 589
    const-string v0, "out_oaid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public o(Landroid/content/Context;)J
    .registers 6

    .line 440
    const-string v0, "autotrace_track_js_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 608
    const-string v0, "api_oaid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public p(Landroid/content/Context;)J
    .registers 6

    .line 458
    const-string v0, "autotrace_config_fetch_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 481
    const-string v0, "custom_userid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 505
    const-string v0, "last_custom_userid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 524
    const-string v0, "scheme_time"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 542
    const-string v0, "encrypt_device_id"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 579
    const-string v0, "user_property"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 598
    const-string v0, "out_oaid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 617
    const-string v0, "api_oaid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/content/Context;)Z
    .registers 4

    .line 655
    const-string v0, "bplus"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y(Landroid/content/Context;)I
    .registers 4

    .line 693
    const-string v0, "app_list_index"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
