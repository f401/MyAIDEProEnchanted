.class public final Lcom/baidu/mobstat/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 64
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyyMMdd"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    const-string p1, "GMT+08:00"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 33
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dq;->a(Z)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_e

    return-object v1

    .line 40
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception v0

    .line 46
    :goto_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    invoke-static {p0}, Lcom/baidu/mobstat/util/CuidUtil;->getCuid3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    return-object v1
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    const-string p0, ""

    .line 108
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_13

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_3b

    .line 76
    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    if-eqz p0, :cond_38

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_38

    .line 83
    :cond_22
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 86
    :try_start_26
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception v3

    const/4 v3, 0x0

    :goto_2d
    if-nez v3, :cond_30

    goto :goto_38

    .line 94
    :cond_30
    invoke-virtual {p0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v1, 0x1

    goto :goto_3b

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3b
    :goto_3b
    return v1
.end method
