.class Lcom/baidu/mobstat/v$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobstat/a;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/baidu/mobstat/v$a;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/baidu/mobstat/v$a;->b:Lcom/baidu/mobstat/a;

    return-void
.end method

.method private a()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "start get config"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/v$a;->a:Landroid/content/Context;

    .line 106
    iget-object v1, p0, Lcom/baidu/mobstat/v$a;->b:Lcom/baidu/mobstat/a;

    .line 108
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/v$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update req url is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 111
    invoke-static {v0, v2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_f2

    .line 113
    :try_start_2b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 115
    const-string v3, "X-CONFIG"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 118
    const-string v4, "X-SIGN"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sign is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 122
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update response code is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 125
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update response content length is: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_a3

    .line 128
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    const-string v6, "request  success"

    invoke-virtual {v5, v6}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 131
    :cond_a3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 132
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "save Config "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 133
    invoke-interface {v1, v0, v3}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :cond_c1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_df

    .line 138
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "save Sign "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 139
    invoke-interface {v1, v0, v4}, Lcom/baidu/mobstat/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_2b .. :try_end_df} :catchall_ed

    .line 143
    :cond_df
    :try_start_df
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "finish get config"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_df .. :try_end_eb} :catchall_f2

    .line 148
    monitor-exit p0

    return-void

    :catchall_ed
    move-exception v0

    .line 143
    :try_start_ee
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/v$a;->b:Lcom/baidu/mobstat/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;J)V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 151
    const-string v0, "UTF-8"

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v2, Landroid/util/Pair;

    const-string v3, "dynamicVersion"

    const-string v4, "35"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Landroid/util/Pair;

    const-string v3, "packageName"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Landroid/util/Pair;

    const-string v3, "appVersion"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Landroid/util/Pair;

    const-string v3, "cuid"

    invoke-static {p1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Landroid/util/Pair;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance p1, Landroid/util/Pair;

    const-string v2, "m"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "s"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance p1, Landroid/util/Pair;

    const-string v2, "o"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Landroid/util/Pair;

    const-string v2, "i"

    invoke-direct {p1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 169
    :try_start_9d
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bd} :catch_f2

    const-string v5, "="

    if-eqz v4, :cond_d7

    .line 173
    :try_start_c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 175
    :cond_d7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f1} :catch_f2

    goto :goto_91

    :catch_f2
    move-exception v2

    goto :goto_91

    .line 182
    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 80
    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/y;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_8

    :cond_6
    const/16 v0, 0xa

    .line 81
    :goto_8
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start version check in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 82
    invoke-static {v0, v1}, Lcom/baidu/mobstat/v$a;->sleep(J)V

    .line 84
    invoke-direct {p0}, Lcom/baidu/mobstat/v$a;->a()V

    .line 85
    iget-object v0, p0, Lcom/baidu/mobstat/v$a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/v$a;->a(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception v0

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 91
    :goto_39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobstat/v;->a(Z)Z

    return-void
.end method
