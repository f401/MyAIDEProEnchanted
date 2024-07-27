.class public final Lio/github/zeroaicy/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;,
        Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;,
        Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_CRASH:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static formate:Ljava/text/SimpleDateFormat;

.field private static isOut:Z
    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "unused"
    .end annotation
.end field

.field private static mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

.field private static mLogPath:Ljava/lang/String;

.field private static setSystemOut:Z


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->setSystemOut:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetSystemOut(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 359
    sput-boolean p0, Lio/github/zeroaicy/util/Log;->setSystemOut:Z

    return-void
.end method

.method private static ToString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 424
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getTimeString()Ljava/lang/String;

    move-result-object v1

    .line 425
    packed-switch p0, :pswitch_data_0

    .line 444
    const-string v0, ""

    .line 445
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(I)V

    .line 449
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    return-object v0

    .line 429
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 432
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 435
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 438
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 441
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static close()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6

    const/4 v1, 0x0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    if-eqz p1, :cond_0

    move v0, v1

    .line 176
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 174
    :cond_1
    aget-object v3, p1, v0

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static disable()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 293
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static enable(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x0

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    sput-object p0, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    .line 377
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v0

    .line 378
    invoke-static {}, Lio/github/zeroaicy/util/Log;->init()V

    .line 379
    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->close()V

    goto :goto_0
.end method

.method public static flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method public static getLog()Ljava/io/PrintStream;
    .registers 1

    .line 406
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public static getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;
    .registers 1

    .line 397
    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .registers 1

    .line 401
    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 312
    if-nez p0, :cond_0

    .line 313
    const-string v0, ""

    .line 330
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 319
    :goto_1
    if-nez v0, :cond_1

    .line 326
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 327
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 329
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 330
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    .line 321
    const-string v0, ""

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1
.end method

.method private static getTimeString()Ljava/lang/String;
    .registers 3

    .line 456
    sget-object v0, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    .line 460
    :cond_0
    sget-object v1, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 461
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 462
    sget-object v2, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    .line 464
    return-object v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 241
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static init()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 386
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;)V

    .line 387
    sget-boolean v1, Lio/github/zeroaicy/util/Log;->setSystemOut:Z

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->getLog()Ljava/io/PrintStream;

    move-result-object v1

    .line 389
    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 390
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 392
    :cond_0
    sput-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    return-void
.end method

.method public static print(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 68
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(C)V

    :cond_0
    return-void
.end method

.method public static print(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 84
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->print(D)V

    :cond_0
    return-void
.end method

.method public static print(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 80
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(F)V

    :cond_0
    return-void
.end method

.method public static print(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(I)V

    :cond_0
    return-void
.end method

.method public static print(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 76
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->print(J)V

    :cond_0
    return-void
.end method

.method public static print(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 96
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static print(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 64
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Z)V

    :cond_0
    return-void
.end method

.method public static print([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)V"
        }
    .end annotation

    .line 88
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print([C)V

    :cond_0
    return-void
.end method

.method public static println(IILjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 410
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 414
    :cond_1
    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    if-nez v0, :cond_2

    .line 415
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    sget-object v1, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    .line 418
    :cond_2
    invoke-static {p1, p2, p3}, Lio/github/zeroaicy/util/Log;->ToString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 342
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_0
    return-void
.end method

.method public static println(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 108
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(C)V

    :cond_0
    return-void
.end method

.method public static println(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 124
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->println(D)V

    :cond_0
    return-void
.end method

.method public static println(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 120
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(F)V

    :cond_0
    return-void
.end method

.method public static println(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 112
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(I)V

    :cond_0
    return-void
.end method

.method public static println(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 116
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->println(J)V

    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 183
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 137
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public static println(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 104
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Z)V

    :cond_0
    return-void
.end method

.method public static println([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)V"
        }
    .end annotation

    .line 128
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println([C)V

    :cond_0
    return-void
.end method

.method public static printlnFields(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    if-nez p0, :cond_1

    .line 42
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static printlnStack()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 187
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 190
    invoke-static {}, Lio/github/zeroaicy/util/Log;->println()V

    return-void

    .line 188
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p1}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->write(I)V

    :cond_0
    return-void
.end method

.method public static write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)V"
        }
    .end annotation

    .line 60
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/io/PrintStream;->write([BII)V

    :cond_0
    return-void
.end method
