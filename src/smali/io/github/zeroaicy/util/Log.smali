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

.field private static formate:Ljava/text/SimpleDateFormat; = null

.field private static isOut:Z = false

.field private static mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold; = null

.field private static mLogPath:Ljava/lang/String; = null

.field private static final maxPreNumber:I = 0x64

.field private static preMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static setSystemOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 369
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/Log;->preMsgList:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetSystemOut(Z)V
    .registers 1

    .line 372
    sput-boolean p0, Lio/github/zeroaicy/util/Log;->setSystemOut:Z

    return-void
.end method

.method private static ToString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 457
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getTimeString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_29

    const/4 v1, 0x3

    if-eq p0, v1, :cond_26

    const/4 v1, 0x4

    if-eq p0, v1, :cond_23

    const/4 v1, 0x5

    if-eq p0, v1, :cond_20

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1d

    .line 478
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(I)V

    const-string p0, ""

    goto :goto_2b

    .line 475
    :cond_1d
    const-string p0, "   E"

    goto :goto_2b

    .line 472
    :cond_20
    const-string p0, "   W"

    goto :goto_2b

    .line 463
    :cond_23
    const-string p0, "   I"

    goto :goto_2b

    .line 469
    :cond_26
    const-string p0, "   D"

    goto :goto_2b

    .line 466
    :cond_29
    const-string p0, "   V"

    .line 482
    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static close()V
    .registers 1

    .line 57
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    :cond_11
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 7

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    .line 183
    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, p1, v3

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 188
    :cond_19
    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, p0, v0}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static disable()V
    .registers 1

    .line 375
    const/4 v0, 0x0

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static enable(Ljava/lang/String;)V
    .registers 2

    .line 380
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    .line 382
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 383
    const/4 p0, 0x0

    sput-boolean p0, Lio/github/zeroaicy/util/Log;->isOut:Z

    return-void

    .line 386
    :cond_d
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 389
    :cond_18
    sput-object p0, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    .line 391
    invoke-static {}, Lio/github/zeroaicy/util/Log;->makeLogHold()V

    .line 394
    :goto_1d
    sget-object p0, Lio/github/zeroaicy/util/Log;->preMsgList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_31

    .line 395
    sget-object p0, Lio/github/zeroaicy/util/Log;->preMsgList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public static flush()V
    .registers 1

    .line 53
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :cond_11
    return-void
.end method

.method public static getLog()Ljava/io/PrintStream;
    .registers 1

    .line 437
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 438
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;
    .registers 1

    .line 428
    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .registers 1

    .line 432
    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 321
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_12

    .line 329
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    return-object v0

    .line 332
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 335
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 336
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 337
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 338
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 339
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeString()Ljava/lang/String;
    .registers 3

    .line 490
    sget-object v0, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_d

    .line 491
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    .line 493
    :cond_d
    sget-object v0, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 494
    :try_start_10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 495
    sget-object v2, Lio/github/zeroaicy/util/Log;->formate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 496
    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static makeCurLogHold()V
    .registers 2

    .line 413
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;)V

    .line 415
    sget-boolean v1, Lio/github/zeroaicy/util/Log;->setSystemOut:Z

    if-eqz v1, :cond_17

    .line 416
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->getLog()Ljava/io/PrintStream;

    move-result-object v1

    .line 417
    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 418
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 421
    :cond_17
    sput-object v0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    return-void
.end method

.method private static makeLogHold()V
    .registers 2

    .line 401
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v0

    .line 403
    invoke-static {}, Lio/github/zeroaicy/util/Log;->makeCurLogHold()V

    if-eqz v0, :cond_12

    .line 406
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLogHold()Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 408
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->close()V

    :cond_12
    return-void
.end method

.method public static print(C)V
    .registers 2

    .line 73
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(C)V

    :cond_11
    return-void
.end method

.method public static print(D)V
    .registers 3

    .line 89
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->print(D)V

    :cond_11
    return-void
.end method

.method public static print(F)V
    .registers 2

    .line 85
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(F)V

    :cond_11
    return-void
.end method

.method public static print(I)V
    .registers 2

    .line 77
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(I)V

    :cond_11
    return-void
.end method

.method public static print(J)V
    .registers 3

    .line 81
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->print(J)V

    :cond_11
    return-void
.end method

.method public static print(Ljava/lang/Object;)V
    .registers 2

    .line 101
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2

    .line 97
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static print(Z)V
    .registers 2

    .line 69
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Z)V

    :cond_11
    return-void
.end method

.method public static print([C)V
    .registers 2

    .line 93
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print([C)V

    :cond_11
    return-void
.end method

.method public static println(IILjava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 441
    sget-boolean p0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    if-nez p0, :cond_9

    goto :goto_1d

    :cond_9
    if-nez p0, :cond_14

    .line 448
    new-instance p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    sget-object v0, Lio/github/zeroaicy/util/Log;->mLogPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;)V

    sput-object p0, Lio/github/zeroaicy/util/Log;->mLogHold:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    .line 451
    :cond_14
    invoke-static {p1, p2, p3}, Lio/github/zeroaicy/util/Log;->ToString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 443
    :cond_1d
    :goto_1d
    invoke-static {p1, p2, p3}, Lio/github/zeroaicy/util/Log;->ToString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 351
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static println()V
    .registers 1

    .line 105
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_11
    return-void
.end method

.method public static println(C)V
    .registers 2

    .line 113
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(C)V

    :cond_11
    return-void
.end method

.method public static println(D)V
    .registers 3

    .line 129
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->println(D)V

    :cond_11
    return-void
.end method

.method public static println(F)V
    .registers 2

    .line 125
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(F)V

    :cond_11
    return-void
.end method

.method public static println(I)V
    .registers 2

    .line 117
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(I)V

    :cond_11
    return-void
.end method

.method public static println(J)V
    .registers 3

    .line 121
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->println(J)V

    :cond_11
    return-void
.end method

.method public static println(Ljava/lang/Object;)V
    .registers 2

    .line 192
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .registers 3

    .line 138
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-nez v0, :cond_15

    sget-object v0, Lio/github/zeroaicy/util/Log;->preMsgList:Ljava/util/LinkedList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    .line 139
    sget-object v0, Lio/github/zeroaicy/util/Log;->preMsgList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_15
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_26

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public static println(Ljava/lang/Throwable;)V
    .registers 2

    .line 146
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_11
    return-void
.end method

.method public static println(Z)V
    .registers 2

    .line 109
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Z)V

    :cond_11
    return-void
.end method

.method public static println([C)V
    .registers 2

    .line 133
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println([C)V

    :cond_11
    return-void
.end method

.method public static printlnFields(Ljava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 46
    :cond_3
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->fields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_49
    return-void
.end method

.method public static printlnStack()V
    .registers 3

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    .line 196
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1a

    .line 197
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 199
    :cond_1a
    invoke-static {}, Lio/github/zeroaicy/util/Log;->println()V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 292
    const/4 v0, 0x5

    invoke-static {p1}, Lio/github/zeroaicy/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, p1}, Lio/github/zeroaicy/util/Log;->println(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static write(I)V
    .registers 2

    .line 61
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->write(I)V

    :cond_11
    return-void
.end method

.method public static write([BII)V
    .registers 4

    .line 65
    sget-boolean v0, Lio/github/zeroaicy/util/Log;->isOut:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/io/PrintStream;->write([BII)V

    :cond_11
    return-void
.end method
