.class public Lcom/baidu/mobstat/dl;
.super Lcom/baidu/mobstat/di;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "__Baidu_Stat_SDK_SendRem"

.field private static b:Lcom/baidu/mobstat/dl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

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

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    .line 106
    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .registers 5

    .line 413
    const-string v0, "autotrace_track_js_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 169
    const-string v0, "device_id_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 4

    .line 148
    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)I
    .registers 4

    .line 116
    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;I)V
    .registers 4

    .line 127
    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .registers 5

    .line 431
    const-string v0, "autotrace_track_js_fetch_interval"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 189
    const/4 v0, 0x0

    const-string v1, "cuid"

    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_c
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    const-string p2, "cuidsec_2"

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .registers 4

    .line 237
    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Landroid/content/Context;)I
    .registers 4

    .line 137
    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;J)V
    .registers 5

    .line 449
    const-string v0, "autotrace_config_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .registers 4

    .line 317
    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 217
    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;Z)V
    .registers 4

    .line 395
    const-string v0, "mtjsdkmactrick"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .registers 4

    .line 158
    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 179
    const-string v0, "device_id_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 277
    const-string v0, "mtjsdkmacss2_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .registers 4

    .line 646
    const-string v0, "bplus"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 227
    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 337
    const-string v0, "mtjsdkmacsstv_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 357
    const-string v0, "he.ext"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;)Z
    .registers 4

    .line 247
    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 287
    const-string v0, "mtjsdkmacss2_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 377
    const-string v0, "he.push"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 469
    const-string p2, ""

    .line 472
    :cond_8
    const-string v0, "custom_userid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/content/Context;)Z
    .registers 4

    .line 327
    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 347
    const-string v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 492
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    const-string p2, ""

    .line 496
    :cond_8
    const-string v0, "last_custom_userid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 367
    const-string v0, "he.ext"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 515
    const-string v0, "scheme_time"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 387
    const-string v0, "he.push"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 533
    const-string v0, "encrypt_device_id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 570
    const-string v0, "user_property"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Landroid/content/Context;)Z
    .registers 4

    .line 403
    const-string v0, "mtjsdkmactrick"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public n(Landroid/content/Context;)J
    .registers 5

    .line 422
    const-string v0, "autotrace_track_js_fetch_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 589
    const-string v0, "out_oaid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Landroid/content/Context;)J
    .registers 5

    .line 440
    const-string v0, "autotrace_track_js_fetch_interval"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 608
    const-string v0, "api_oaid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Landroid/content/Context;)J
    .registers 5

    .line 458
    const-string v0, "autotrace_config_fetch_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 481
    const-string v0, "custom_userid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 505
    const-string v0, "last_custom_userid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 524
    const-string v0, "scheme_time"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 542
    const-string v0, "encrypt_device_id"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 579
    const-string v0, "user_property"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 598
    const-string v0, "out_oaid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public w(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 617
    const-string v0, "api_oaid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/content/Context;)Z
    .registers 4

    .line 655
    const-string v0, "bplus"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public y(Landroid/content/Context;)I
    .registers 4

    .line 693
    const-string v0, "app_list_index"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
