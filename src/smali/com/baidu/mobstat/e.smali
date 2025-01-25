.class Lcom/baidu/mobstat/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/baidu/mobstat/e;


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/baidu/mobstat/e;

    invoke-direct {v0}, Lcom/baidu/mobstat/e;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/e;->a:Lcom/baidu/mobstat/e;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    iput-object v0, p0, Lcom/baidu/mobstat/e;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 4

    if-eqz p1, :cond_12

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x0

    :goto_14
    return-wide v0
.end method

.method private b(Landroid/content/Context;Z)V
    .registers 14

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 54
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 108
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 113
    :goto_1b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 116
    iget-object v4, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_36

    goto :goto_24

    .line 121
    :cond_36
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    .line 124
    :goto_3e
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-ne p2, v5, :cond_24

    .line 130
    const-string v6, ""

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p2

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/mobstat/e;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lorg/json/JSONArray;Z)V

    goto :goto_24

    .line 136
    :cond_4c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_53

    return-void

    .line 140
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    :try_start_73
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 152
    const-string v2, "app_list"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v0, "meta-data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object p2
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_92} :catch_93

    goto :goto_96

    .line 155
    :catch_93
    move-exception p2

    const-string p2, ""

    .line 159
    :goto_96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    sget-object v2, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;JLjava/lang/String;)J

    :cond_a5
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/e;->b(Landroid/content/Context;Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 41
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lorg/json/JSONArray;Z)V
    .registers 13

    if-eqz p1, :cond_d

    .line 167
    iget-object p1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p6, "com.android."

    invoke-virtual {p1, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    nop

    .line 174
    const-wide/16 v0, 0x0

    :try_start_10
    iget-wide v2, p4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_1c

    :catchall_13
    move-exception p1

    .line 176
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    move-wide v2, v0

    .line 182
    :goto_1c
    :try_start_1c
    iget-wide v0, p4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p1

    .line 184
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 187
    :goto_27
    invoke-direct {p0, p3}, Lcom/baidu/mobstat/e;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 189
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    :try_start_30
    const-string p3, "n"

    iget-object p6, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string p3, "a"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string p2, "v"

    iget-object p3, p4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string p2, "f"

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    const-string p2, "l"

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    const-string p2, "m"

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {p5, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception p1

    .line 203
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_62
    return-void
.end method
