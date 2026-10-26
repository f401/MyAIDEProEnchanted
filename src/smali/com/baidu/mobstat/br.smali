.class public Lcom/baidu/mobstat/br;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mobstat/br;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/br;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Lcom/baidu/mobstat/br;

    invoke-direct {v1}, Lcom/baidu/mobstat/br;-><init>()V

    iput-object p0, v1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/baidu/mobstat/br;->d:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    :cond_0
    iput-object p1, v1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .locals 1

    invoke-static {p0}, Lcom/baidu/mobstat/br;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->c(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lcom/baidu/mobstat/br;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v2, "0"

    const-string v3, "0"

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "ZGV2aWNlaWQ="

    invoke-static {v6}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dmVy"

    invoke-static {v6}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "0"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v0, "ZGV2aWNlaWQ="

    invoke-static {v0}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "dmVy"

    invoke-static {v0}, Lcom/baidu/mobstat/br;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/baidu/mobstat/br;

    invoke-direct {v0}, Lcom/baidu/mobstat/br;-><init>()V

    iput-object v5, v0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    iput v6, v0, Lcom/baidu/mobstat/br;->c:I

    iput v4, v0, Lcom/baidu/mobstat/br;->d:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    iput-object v2, v0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/mobstat/br;->d()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    move v4, v0

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto :goto_3
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bm;->a([B)[B

    move-result-object v2

    invoke-static {v1, v1, v2}, Lcom/baidu/mobstat/at;->b([B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/baidu/mobstat/at;->a([B[B[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bm;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/br;->d:I

    invoke-static {v0}, Lcom/baidu/mobstat/br;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mobstat/br;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mobstat/br;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "O"

    :goto_0
    iput-object v0, p0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/br;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
