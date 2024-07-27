.class public Lcom/baidu/mobstat/bw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/bw$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static h:Ljava/lang/String;


# instance fields
.field a:Lcom/baidu/mobstat/bl;

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/mobstat/bq$a;

.field private volatile e:Ljava/nio/channels/FileLock;

.field private volatile f:Ljava/io/RandomAccessFile;

.field private g:Lcom/baidu/mobstat/an;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/bw;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobstat/bq;Lcom/baidu/mobstat/bl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context should not be null!!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/baidu/mobstat/bq;->b()Lcom/baidu/mobstat/bq$a;

    move-result-object v0

    const-string v1, "bohrium"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bq$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bq$a;->a()V

    iput-object p3, p0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bl;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bq;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 15

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "dik"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cck"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctk"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "vsk"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "csk"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "pmk"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "hrk"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "ock"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ek"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "v270fk"

    const-string v13, "V"

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {v1, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    invoke-static {v1, v6}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v1, v11}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v1, v8}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v1, v10}, Lcom/baidu/mobstat/bw$a;->f(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 11

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {v0, p0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v0, p2}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v0, p4}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    const-string v1, "libbh.so"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mobstat/bq;)V
    .registers 7

    new-instance v1, Lcom/baidu/mobstat/an;

    new-instance v0, Lcom/baidu/mobstat/al;

    invoke-direct {v0}, Lcom/baidu/mobstat/al;-><init>()V

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/an;-><init>(Lcom/baidu/mobstat/an$a;)V

    new-instance v2, Lcom/baidu/mobstat/am$a;

    invoke-direct {v2}, Lcom/baidu/mobstat/am$a;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    iput-object v0, v2, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    iput-object p1, v2, Lcom/baidu/mobstat/am$a;->b:Lcom/baidu/mobstat/bq;

    new-instance v3, Lcom/baidu/mobstat/am$c;

    invoke-direct {v3}, Lcom/baidu/mobstat/am$c;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/am;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$a;)V

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$c;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bn;->a([BZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Lcom/baidu/mobstat/ab;

    invoke-direct {v1}, Lcom/baidu/mobstat/ab;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ab;->a([B)[B

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/bs;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567="

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/mobstat/bs;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/bs;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/baidu/mobstat/bw$a;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {v1}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "libbh.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bw;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arg non-nullable is expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    :try_start_0
    iget-object v3, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    sget-object v4, Lcom/baidu/mobstat/bw$a;->a:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    invoke-static {v0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    iget-object v1, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 6

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/an;->a(Ljava/lang/String;)Lcom/baidu/mobstat/am;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/am$f;

    invoke-direct {v1}, Lcom/baidu/mobstat/am$f;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/mobstat/am$f;->a:Z

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobstat/am$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/bw$a;)V
    .registers 5

    new-instance v1, Lcom/baidu/mobstat/am$d;

    invoke-direct {v1}, Lcom/baidu/mobstat/am$d;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v0}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/am;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mobstat/bw$a;ZZ)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_4

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {v3}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v3

    const-string v4, "libbh.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/bw;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    const-string v3, "libbh.so"

    invoke-virtual {v2, v3, v0, p2}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 9

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/mobstat/bw;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "CuidV270Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v6}, Lcom/baidu/mobstat/bn;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v2}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    invoke-static {v2, v6}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v2, v0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "V"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v2, v1}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 11

    const/4 v2, 0x1

    new-instance v3, Lcom/baidu/mobstat/am$f;

    invoke-direct {v3}, Lcom/baidu/mobstat/am$f;-><init>()V

    iput-boolean v2, v3, Lcom/baidu/mobstat/am$f;->a:Z

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v0}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/baidu/mobstat/am;->c:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bl;

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bl;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/aq;

    iget-boolean v1, v0, Lcom/baidu/mobstat/aq;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/baidu/mobstat/aq;->c:Z

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/am;

    iget-object v7, v0, Lcom/baidu/mobstat/aq;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v3}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/baidu/mobstat/am$g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, v7, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Z
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    const-string v2, ".lock"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/bq$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    :goto_1
    const/16 v3, 0x64

    if-ge v1, v3, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    iput-object v2, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    :cond_1
    :goto_2
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v3

    const-wide/16 v4, 0x64

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v2, 0x0

    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public d()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
