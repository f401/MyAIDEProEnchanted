.class public Lcom/baidu/mobstat/ExceptionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ExceptionAnalysis$Callback;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/mobstat/ExceptionAnalysis;


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/mobstat/HeadObject;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field public mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/baidu/mobstat/ExceptionAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/ExceptionAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ExceptionAnalysis;->a:Lcom/baidu/mobstat/ExceptionAnalysis;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 34
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ExceptionAnalysis$Callback;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 34
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->g:Z

    .line 49
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .registers 4

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    const/4 v1, 0x0

    :try_start_6
    const-string v2, "app_session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_d

    .line 241
    :catch_c
    move-exception v2

    :goto_d
    :try_start_d
    const-string v2, "failed_cnt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v1

    :goto_14
    return-object v0
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_c
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 257
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 259
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :try_start_19
    const-string v1, "total"

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 265
    const-string v1, "free"

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    const-string v1, "low"

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-object p1
.end method

.method public static getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;
    .registers 1

    .line 26
    sget-object v0, Lcom/baidu/mobstat/ExceptionAnalysis;->a:Lcom/baidu/mobstat/ExceptionAnalysis;

    return-object v0
.end method


# virtual methods
.method public openExceptionAnalysis(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_8

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    .line 63
    :cond_8
    iget-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-nez p1, :cond_d

    return-void

    .line 67
    :cond_d
    iget-boolean p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    if-eqz p1, :cond_12

    return-void

    .line 70
    :cond_12
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/bx;->a()Lcom/baidu/mobstat/bx;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bx;->a(Landroid/content/Context;)V

    if-nez p2, :cond_25

    .line 75
    iget-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    :cond_25
    return-void
.end method

.method public saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V
    .registers 12

    .line 162
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V

    if-eqz p1, :cond_f2

    if-eqz p4, :cond_f2

    .line 164
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_f2

    .line 169
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 172
    const-string v1, "\nExtraInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_30
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    const-string v3, "t"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string p2, "c"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string p2, "y"

    invoke-virtual {v2, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string p2, "v"

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string p2, "ct"

    invoke-virtual {v2, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string p2, "mem"

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string p2, "ty"

    invoke-virtual {v2, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string p2, "sv"

    const-string p3, "4.0.10.5"

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 191
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 194
    iget-object p5, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p5, p1, p3}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 196
    const-string p5, "ss"

    const/4 p6, 0x0

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string p5, "sq"

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string p7, "he"

    invoke-virtual {p5, p7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    const-string p7, "pr"

    invoke-virtual {p5, p7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    const-string p7, "ev"

    invoke-virtual {p5, p7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string p3, "ex"

    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string p2, "trace"

    invoke-direct {p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    iget-object p2, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    if-eqz p2, :cond_bf

    .line 208
    invoke-interface {p2, p5}, Lcom/baidu/mobstat/ExceptionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    .line 211
    :cond_bf
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p6}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "dump exception, exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_f0} :catch_f1

    goto :goto_f2

    :catch_f1
    move-exception p1

    :cond_f2
    :goto_f2
    return-void
.end method

.method public saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V
    .registers 15

    if-eqz p1, :cond_8

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    .line 90
    :cond_8
    iget-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-nez p1, :cond_d

    return-void

    .line 94
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 98
    :try_start_18
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    array-length v2, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_27

    const/4 v3, 0x1

    if-le v2, v3, :cond_25

    .line 100
    aget-object v0, v0, v1

    goto :goto_2a

    :cond_25
    move-object v0, p1

    goto :goto_2a

    :catch_27
    move-exception v0

    .line 109
    :cond_28
    const-string v0, ""

    :goto_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object v8, p1

    goto :goto_33

    :cond_32
    move-object v8, v0

    .line 113
    :goto_33
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 114
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez p3, :cond_5d

    .line 146
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_4f

    const/16 v1, 0xb

    const/16 v10, 0xb

    goto :goto_5e

    .line 148
    :cond_4f
    instance-of p1, p2, Ljava/lang/Error;

    if-eqz p1, :cond_58

    const/16 v1, 0xc

    const/16 v10, 0xc

    goto :goto_5e

    :cond_58
    const/16 v1, 0xd

    const/16 v10, 0xd

    goto :goto_5e

    :cond_5d
    const/4 v10, 0x0

    .line 155
    :goto_5e
    iget-object v4, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setCrashExtraInfo(Ljava/lang/String;)V
    .registers 4

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 294
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_14

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_14
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    return-void
.end method

.method public setEnableSend(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->g:Z

    return-void
.end method

.method public setFilterPackageList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_b

    .line 305
    :cond_9
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->f:Ljava/util/List;

    :cond_b
    :goto_b
    return-void
.end method
