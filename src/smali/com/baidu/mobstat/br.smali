.class public Lcom/baidu/mobstat/br;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mobstat/br;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/br;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Lcom/baidu/mobstat/br;

    invoke-direct {v0}, Lcom/baidu/mobstat/br;-><init>()V

    iput-object p0, v0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_19
    iput p0, v0, Lcom/baidu/mobstat/br;->d:I

    const/16 v1, 0xe

    if-ge p0, v1, :cond_29

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p1, "0"

    :cond_27
    iput-object p1, v0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    :cond_29
    return-object v0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Z
    .registers 2

    const/16 v0, 0xe

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .registers 1

    invoke-static {p0}, Lcom/baidu/mobstat/br;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/br;->c(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_7d

    const-string v2, "0"

    move-object v3, v2

    :cond_14
    :goto_14
    :try_start_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_18} :catch_7d

    const-string v5, "dmVy"

    const-string v6, "ZGV2aWNlaWQ="

    if-eqz v4, :cond_3e

    :try_start_1e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-static {v5}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_14

    :cond_39
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_3e
    invoke-static {v6}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v4, 0x0

    goto :goto_5a

    :cond_56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    new-instance v5, Lcom/baidu/mobstat/br;

    invoke-direct {v5}, Lcom/baidu/mobstat/br;-><init>()V

    iput-object p0, v5, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    iput v0, v5, Lcom/baidu/mobstat/br;->c:I

    iput v4, v5, Lcom/baidu/mobstat/br;->d:I

    const/16 p0, 0xe

    if-ge v4, p0, :cond_79

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_77

    :cond_76
    move-object v2, v3

    :goto_77
    iput-object v2, v5, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    :cond_79
    invoke-virtual {v5}, Lcom/baidu/mobstat/br;->d()Z
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_7c} :catch_7d

    return-object v5

    :catch_7d
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_81
    return-object v1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ZGV2aWNlaWQ="

    invoke-static {v1}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aW1laQ=="

    invoke-static {v1}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dmVy"

    invoke-static {v1}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/br;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object p0

    invoke-static {v0, v0, p0}, Lcom/baidu/mobstat/at;->b([B[B[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v0, p0}, Lcom/baidu/mobstat/at;->a([B[B[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/bm;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    goto :goto_1e

    :catch_1d
    move-exception p0

    :goto_1e
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/br;->d:I

    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mobstat/br;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/mobstat/br;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "O"

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/baidu/mobstat/br;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "0"

    :goto_11
    iput-object v0, p0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method
