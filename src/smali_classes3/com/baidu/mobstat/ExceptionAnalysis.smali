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
            "Ljava/util/List",
            "<",
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

    .line 46
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

    .line 50
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .registers 4

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    :try_start_0
    const-string v1, "app_session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    :try_start_1
    const-string v1, "failed_cnt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_1
    return-object v0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 256
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 259
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 262
    const-string v2, "total"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 265
    :cond_1
    const-string v2, "free"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v2, "low"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0

    .line 266
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;
    .registers 1

    .line 26
    sget-object v0, Lcom/baidu/mobstat/ExceptionAnalysis;->a:Lcom/baidu/mobstat/ExceptionAnalysis;

    return-object v0
.end method


# virtual methods
.method public openExceptionAnalysis(Landroid/content/Context;Z)V
    .registers 5

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/bx;->a()Lcom/baidu/mobstat/bx;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bx;->a(Landroid/content/Context;)V

    .line 74
    if-nez p2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V
    .registers 14

    .line 162
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V

    .line 164
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "ExtraInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2
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
    const-string v3, "c"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v0, "y"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v0, "v"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v0, "ct"

    invoke-virtual {v2, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v0, "mem"

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v0, "ty"

    invoke-virtual {v2, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v0, "sv"

    const-string v1, "4.0.10.5"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 191
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    iget-object v2, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 196
    const-string v2, "ss"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v2, "sq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v3, "he"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "pr"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "ev"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v1, "ex"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v0, "trace"

    invoke-direct {p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    invoke-interface {v0, v2}, Lcom/baidu/mobstat/ExceptionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump exception, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V
    .registers 12

    const/4 v6, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 157
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v0, ""

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    :try_start_0
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 100
    aget-object v0, v0, v6

    .line 109
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v5, v1

    .line 113
    :goto_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 114
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    if-nez p3, :cond_6

    .line 146
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 147
    const/16 v7, 0xb

    .line 155
    :goto_3
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 102
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v0, ""

    goto :goto_1

    .line 148
    :cond_4
    instance-of v0, p2, Ljava/lang/Error;

    if-eqz v0, :cond_5

    .line 149
    const/16 v7, 0xc

    goto :goto_3

    .line 151
    :cond_5
    const/16 v7, 0xd

    goto :goto_3

    :cond_6
    move v7, v6

    goto :goto_3

    :cond_7
    move-object v5, v0

    goto :goto_2
.end method

.method public setCrashExtraInfo(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x100

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_1
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEnableSend(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->g:Z

    .line 311
    return-void
.end method

.method public setFilterPackageList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 301
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->f:Ljava/util/List;

    goto :goto_0
.end method
