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
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobstat/bq;Lcom/baidu/mobstat/bl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/baidu/mobstat/bq;->b()Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    const-string v0, "bohrium"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {p1}, Lcom/baidu/mobstat/bq$a;->a()V

    iput-object p3, p0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bl;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bq;)V

    return-void

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context should not be null!!!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 14

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "dik"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "cck"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctk"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "vsk"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "csk"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "pmk"

    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "hrk"

    invoke-virtual {v1, v10, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v10, "ock"

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ek"

    invoke-virtual {v1, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "v270fk"

    const-string v12, "V"

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7f

    new-instance v11, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v11}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {v11, p0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v4, v5}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    invoke-static {v11, v6}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v11, v0}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v11, v9}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v11, v10}, Lcom/baidu/mobstat/bw$a;->f(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7a} :catch_7b

    return-object v11

    :catch_7b
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_7f
    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_38

    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v3}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {v3, p0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    const/4 p0, 0x1

    invoke-static {v3, p0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v3, p2}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v3, p4}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    return-object v3

    :catch_34
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, ""

    :cond_12
    return-object p1
.end method

.method private a(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    const-string v1, "libbh.so"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/baidu/mobstat/bq;)V
    .registers 6

    new-instance v0, Lcom/baidu/mobstat/an;

    new-instance v1, Lcom/baidu/mobstat/al;

    invoke-direct {v1}, Lcom/baidu/mobstat/al;-><init>()V

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/an;-><init>(Lcom/baidu/mobstat/an$a;)V

    new-instance v1, Lcom/baidu/mobstat/am$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/am$a;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    iput-object v2, v1, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    iput-object p1, v1, Lcom/baidu/mobstat/am$a;->b:Lcom/baidu/mobstat/bq;

    new-instance p1, Lcom/baidu/mobstat/am$c;

    invoke-direct {p1}, Lcom/baidu/mobstat/am$c;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mobstat/am;

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$a;)V

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$c;)V

    goto :goto_22

    :cond_35
    iput-object v0, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/baidu/mobstat/bw;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ""

    return-object v0

    :cond_10
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

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/ab;

    invoke-direct {v0}, Lcom/baidu/mobstat/ab;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ab;->a([B)[B

    move-result-object p0

    new-instance v0, Lcom/baidu/mobstat/bs;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/bs;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bs;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_22
    return-object p0
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

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bw;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;
    .registers 9

    if-eqz p1, :cond_59

    new-instance v0, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    :try_start_12
    iget-object v2, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_56

    iget-object v2, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/baidu/mobstat/bw$a;->a:[Ljava/lang/String;

    array-length v4, v2

    :goto_2d
    if-ge v3, v4, :cond_3f

    aget-object v5, v2, v3

    invoke-static {v0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_55

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3f
    iget-object v2, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_55

    iget-object p1, p1, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    :cond_55
    :goto_55
    return-object v0

    :catch_56
    move-exception p1

    const/4 p1, 0x0

    return-object p1

    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "arg non-nullable is expected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_62

    :goto_61
    throw p1

    :goto_62
    goto :goto_61
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/an;->a(Ljava/lang/String;)Lcom/baidu/mobstat/am;

    move-result-object p2

    new-instance v0, Lcom/baidu/mobstat/am$f;

    invoke-direct {v0}, Lcom/baidu/mobstat/am$f;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mobstat/am$f;->a:Z

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/baidu/mobstat/am$g;->a()Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p1, p1, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/bw$a;)V
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/am$d;

    invoke-direct {v0}, Lcom/baidu/mobstat/am$d;-><init>()V

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v1}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/am;

    invoke-virtual {v2, v0, p1}, Lcom/baidu/mobstat/am;->a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public a(Lcom/baidu/mobstat/bw$a;ZZ)Z
    .registers 9

    if-eqz p1, :cond_7a

    invoke-static {p1}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "libbh.so"

    const/4 v1, 0x0

    if-nez p3, :cond_6a

    :try_start_11
    new-instance p3, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {v2}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v2

    invoke-direct {p3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_6a

    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lcom/baidu/mobstat/bw;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    if-eqz v3, :cond_6a

    if-eqz v2, :cond_6a

    return p3

    :cond_6a
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->j()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {p3, v0, p1, p2}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_74} :catch_75

    return p1

    :catch_75
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_7a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "content should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 7

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/bw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3e

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/mobstat/bw;->b:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uuid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CuidV270Manager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "com.baidu"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/bn;->a([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/bw$a;

    invoke-direct {v2}, Lcom/baidu/mobstat/bw$a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;J)J

    invoke-static {v2, v0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;I)I

    invoke-static {v2, p1}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "V"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/bw$a;->d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobstat/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/baidu/mobstat/bw$a;->b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baidu/mobstat/bw$a;->a(Lcom/baidu/mobstat/bw$a;Z)Z

    invoke-static {v2, v1}, Lcom/baidu/mobstat/bw$a;->e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/baidu/mobstat/bw$a;->c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;

    return-object v2
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 10

    new-instance v0, Lcom/baidu/mobstat/am$f;

    invoke-direct {v0}, Lcom/baidu/mobstat/am$f;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mobstat/am$f;->a:Z

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->g:Lcom/baidu/mobstat/an;

    invoke-virtual {v1}, Lcom/baidu/mobstat/an;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/am;->c:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bl;

    iget-object v3, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/bl;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mobstat/aq;

    iget-boolean v4, v3, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v4, :cond_32

    goto :goto_21

    :cond_32
    iget-boolean v4, v3, Lcom/baidu/mobstat/aq;->c:Z

    if-nez v4, :cond_37

    goto :goto_21

    :cond_37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mobstat/am;

    iget-object v6, v3, Lcom/baidu/mobstat/aq;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Lcom/baidu/mobstat/am$g;->a()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v5, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    if-eqz v6, :cond_3b

    iget-object v6, v5, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v6}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_68

    goto :goto_3b

    :cond_68
    invoke-virtual {v6}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7d

    goto :goto_3b

    :cond_7d
    iget-object p1, v5, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    return-object p1

    :cond_80
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->d:Lcom/baidu/mobstat/bq$a;

    const-string v1, ".lock"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bq$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4c

    if-nez v1, :cond_17

    :try_start_f
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_4c

    goto :goto_17

    :catch_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_4c

    :cond_17
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_3e
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4c

    const/4 v0, 0x0

    :goto_20
    const/16 v3, 0x64

    if-ge v0, v3, :cond_4a

    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    iput-object v2, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;
    :try_end_30
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_24 .. :try_end_30} :catch_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_33
    .catchall {:try_start_24 .. :try_end_30} :catchall_4c

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catch_33
    move-exception v0

    goto :goto_40

    :catch_35
    move-exception v3

    const-wide/16 v3, 0x64

    :try_start_38
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_33
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4c

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :catch_3e
    move-exception v0

    const/4 v2, 0x0

    :goto_40
    :try_start_40
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_4a

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_4c

    :cond_4a
    monitor-exit p0

    return v1

    :catchall_4c
    move-exception v0

    monitor-exit p0

    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method

.method public d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    :try_start_6
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    goto :goto_10

    :catch_c
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_10
    iput-object v1, p0, Lcom/baidu/mobstat/bw;->e:Ljava/nio/channels/FileLock;

    :cond_12
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/baidu/mobstat/bw;->f:Ljava/io/RandomAccessFile;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
