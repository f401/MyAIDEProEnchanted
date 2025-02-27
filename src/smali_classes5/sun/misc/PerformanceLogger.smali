.class public Lsun/misc/PerformanceLogger;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/PerformanceLogger$TimeData;
    }
.end annotation


# static fields
.field private static final LAST_RESERVED:I

.field private static final START_INDEX:I

.field private static logFileName:Ljava/lang/String;

.field private static logWriter:Ljava/io/Writer;

.field private static perfLoggingOn:Z

.field private static times:Ljava/util/Vector;

.field private static useNanoTime:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lsun/misc/PerformanceLogger;->perfLoggingOn:Z

    .line 80
    sput-boolean v0, Lsun/misc/PerformanceLogger;->useNanoTime:Z

    .line 82
    sput-object v1, Lsun/misc/PerformanceLogger;->logFileName:Ljava/lang/String;

    .line 83
    sput-object v1, Lsun/misc/PerformanceLogger;->logWriter:Ljava/io/Writer;

    .line 130
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v1, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    .line 132
    :goto_13
    if-gtz v0, :cond_3a

    .line 133
    sget-object v1, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lsun/misc/PerformanceLogger$TimeData;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {v3, v2, v4, v5}, Lsun/misc/PerformanceLogger$TimeData;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 135
    :cond_3a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 73
    sget-object v0, Lsun/misc/PerformanceLogger;->logFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/io/Writer;)Ljava/io/Writer;
    .registers 1

    .line 73
    sput-object p0, Lsun/misc/PerformanceLogger;->logWriter:Ljava/io/Writer;

    return-object p0
.end method

.method private static getCurrentTime()J
    .registers 2

    .line 173
    sget-boolean v0, Lsun/misc/PerformanceLogger;->useNanoTime:Z

    if-eqz v0, :cond_9

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 176
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_8
.end method

.method public static getMessageAtIndex(I)Ljava/lang/String;
    .registers 2

    .line 269
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/PerformanceLogger$TimeData;

    invoke-virtual {v0}, Lsun/misc/PerformanceLogger$TimeData;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getStartTime()J
    .registers 2

    .line 212
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 213
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/PerformanceLogger$TimeData;

    invoke-virtual {v0}, Lsun/misc/PerformanceLogger$TimeData;->getTime()J

    move-result-wide v0

    .line 215
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public static getTimeAtIndex(I)J
    .registers 3

    .line 258
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 259
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/PerformanceLogger$TimeData;

    invoke-virtual {v0}, Lsun/misc/PerformanceLogger$TimeData;->getTime()J

    move-result-wide v0

    .line 261
    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    goto :goto_12
.end method

.method public static loggingEnabled()Z
    .registers 1

    .line 144
    sget-boolean v0, Lsun/misc/PerformanceLogger;->perfLoggingOn:Z

    return v0
.end method

.method public static outputLog()V
    .registers 1

    .line 304
    sget-object v0, Lsun/misc/PerformanceLogger;->logWriter:Ljava/io/Writer;

    invoke-static {v0}, Lsun/misc/PerformanceLogger;->outputLog(Ljava/io/Writer;)V

    .line 305
    return-void
.end method

.method public static outputLog(Ljava/io/Writer;)V
    .registers 7

    .line 280
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 282
    :try_start_6
    sget-object v2, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_55

    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    :try_start_b
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 284
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/PerformanceLogger$TimeData;

    .line 285
    if-eqz v0, :cond_49

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsun/misc/PerformanceLogger$TimeData;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Lsun/misc/PerformanceLogger$TimeData;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 283
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 290
    :cond_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_52

    .line 291
    :try_start_4e
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_55

    .line 297
    :cond_51
    :goto_51
    return-void

    .line 290
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_55

    .line 292
    :catch_55
    move-exception v0

    .line 293
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Writing performance log to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51
.end method

.method public static setStartTime(Ljava/lang/String;)V
    .registers 3

    .line 187
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 188
    invoke-static {}, Lsun/misc/PerformanceLogger;->getCurrentTime()J

    move-result-wide v0

    .line 189
    invoke-static {p0, v0, v1}, Lsun/misc/PerformanceLogger;->setStartTime(Ljava/lang/String;J)V

    .line 191
    :cond_d
    return-void
.end method

.method public static setStartTime(Ljava/lang/String;J)V
    .registers 6

    .line 201
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 202
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    const/4 v1, 0x0

    new-instance v2, Lsun/misc/PerformanceLogger$TimeData;

    invoke-direct {v2, p0, p1, p2}, Lsun/misc/PerformanceLogger$TimeData;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_11
    return-void
.end method

.method public static setTime(Ljava/lang/String;)I
    .registers 3

    .line 224
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 225
    invoke-static {}, Lsun/misc/PerformanceLogger;->getCurrentTime()J

    move-result-wide v0

    .line 226
    invoke-static {p0, v0, v1}, Lsun/misc/PerformanceLogger;->setTime(Ljava/lang/String;J)I

    move-result v0

    .line 228
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static setTime(Ljava/lang/String;J)I
    .registers 6

    .line 241
    invoke-static {}, Lsun/misc/PerformanceLogger;->loggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 245
    sget-object v1, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    monitor-enter v1

    .line 246
    :try_start_9
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    new-instance v2, Lsun/misc/PerformanceLogger$TimeData;

    invoke-direct {v2, p0, p1, p2}, Lsun/misc/PerformanceLogger$TimeData;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lsun/misc/PerformanceLogger;->times:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    monitor-exit v1

    add-int/lit8 v0, v0, -0x1

    .line 250
    :goto_1c
    return v0

    .line 248
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v0

    .line 250
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method
