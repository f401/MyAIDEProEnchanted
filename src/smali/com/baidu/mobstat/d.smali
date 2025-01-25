.class public Lcom/baidu/mobstat/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/d$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/mobstat/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/baidu/mobstat/d;

    invoke-direct {v0}, Lcom/baidu/mobstat/d;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/d;->a:Lcom/baidu/mobstat/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/d$a;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 113
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/d$a;

    .line 114
    invoke-virtual {v2}, Lcom/baidu/mobstat/d$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_15

    .line 119
    :cond_28
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15

    .line 122
    :cond_2c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v2, "app_apk"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "meta-data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object p2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4b} :catch_4c

    goto :goto_56

    :catch_4c
    move-exception p2

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    const-string p2, ""

    .line 132
    :goto_56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 133
    sget-object v0, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;JLjava/lang/String;)J

    :cond_65
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/d;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/d;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/d$a;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/d;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 46
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1e

    goto :goto_d

    .line 51
    :cond_1e
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 55
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 56
    const-string v5, ""

    if-eqz v1, :cond_37

    array-length v6, v1

    if-eqz v6, :cond_37

    .line 57
    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v5

    .line 60
    :goto_38
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/do$b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 65
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {v5}, Lcom/baidu/mobstat/do$b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_51
    new-instance v2, Lcom/baidu/mobstat/d$a;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/baidu/mobstat/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_5a
    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v0

    .line 84
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    const/16 v3, 0x40

    :try_start_14
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p1

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 91
    :goto_21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 92
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_36

    goto :goto_25

    .line 97
    :cond_36
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_25

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3f
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 33
    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/d;->b(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 34
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
