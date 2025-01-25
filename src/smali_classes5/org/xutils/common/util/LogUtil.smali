.class public Lorg/xutils/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "x_log"

    sput-object v0, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    :cond_c
    :goto_c
    return-void

    .line 52
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 58
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 62
    :cond_c
    :goto_c
    return-void

    .line 59
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    :cond_c
    :goto_c
    return-void

    .line 66
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 72
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    :cond_c
    :goto_c
    return-void

    .line 73
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private static generateTag()Ljava/lang/String;
    .registers 7

    const/4 v6, 0x2

    .line 41
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v6

    .line 42
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s.%s(L:%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 47
    :goto_45
    return-object v0

    .line 46
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/xutils/common/util/LogUtil;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    :cond_c
    :goto_c
    return-void

    .line 80
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 86
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 90
    :cond_c
    :goto_c
    return-void

    .line 87
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    :cond_c
    :goto_c
    return-void

    .line 94
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 100
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    :cond_c
    :goto_c
    return-void

    .line 101
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 107
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    :cond_c
    :goto_c
    return-void

    .line 108
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 114
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    :cond_c
    :goto_c
    return-void

    .line 115
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 2

    .line 121
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    :goto_6
    return-void

    .line 122
    :cond_7
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2

    .line 129
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    :cond_c
    :goto_c
    return-void

    .line 130
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 136
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    :cond_c
    :goto_c
    return-void

    .line 137
    :cond_d
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .registers 2

    .line 143
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v0

    if-nez v0, :cond_7

    .line 147
    :goto_6
    return-void

    .line 144
    :cond_7
    invoke-static {}, Lorg/xutils/common/util/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
