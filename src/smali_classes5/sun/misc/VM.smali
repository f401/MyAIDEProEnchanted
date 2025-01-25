.class public Lsun/misc/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field public static final STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static allowArraySyntax:Z

.field private static volatile booted:Z

.field private static defaultAllowArraySyntax:Z

.field private static directMemory:J

.field private static volatile finalRefCount:I

.field private static volatile peakFinalRefCount:I

.field private static suspended:Z

.field private static threadStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread$State;",
            ">;"
        }
    .end annotation
.end field

.field private static threadStateNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    sput-boolean v2, Lsun/misc/VM;->suspended:Z

    .line 148
    sput-boolean v2, Lsun/misc/VM;->booted:Z

    .line 171
    const-wide/32 v0, 0x4000000

    sput-wide v0, Lsun/misc/VM;->directMemory:J

    .line 212
    sput-boolean v2, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 213
    sput-boolean v2, Lsun/misc/VM;->allowArraySyntax:Z

    .line 248
    sput v2, Lsun/misc/VM;->finalRefCount:I

    .line 251
    sput v2, Lsun/misc/VM;->peakFinalRefCount:I

    .line 300
    sput-object v3, Lsun/misc/VM;->threadStateMap:Ljava/util/Map;

    .line 301
    sput-object v3, Lsun/misc/VM;->threadStateNames:Ljava/util/Map;

    .line 351
    invoke-static {}, Lsun/misc/VM;->initialize()V

    .line 352
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinalRefCount(I)V
    .registers 3

    .line 280
    sget v0, Lsun/misc/VM;->finalRefCount:I

    add-int/2addr v0, p0

    sput v0, Lsun/misc/VM;->finalRefCount:I

    .line 281
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sget v1, Lsun/misc/VM;->peakFinalRefCount:I

    if-le v0, v1, :cond_f

    .line 282
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sput v0, Lsun/misc/VM;->peakFinalRefCount:I

    .line 284
    :cond_f
    return-void
.end method

.method public static allowArraySyntax()Z
    .registers 1

    .line 227
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    if-nez v0, :cond_10

    .line 228
    const-string v0, "sun.lang.ClassLoader.allowArraySyntax"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_13

    .line 231
    sget-boolean v0, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 232
    :goto_e
    sput-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    .line 234
    :cond_10
    sget-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    return v0

    .line 232
    :cond_13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public static allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .registers 3

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    move-result v0

    return v0
.end method

.method public static asChange(II)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    return-void
.end method

.method public static asChange_otherthread(II)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    return-void
.end method

.method public static booted()V
    .registers 1

    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lsun/misc/VM;->booted:Z

    .line 157
    return-void
.end method

.method public static getFinalRefCount()I
    .registers 1

    .line 259
    sget v0, Lsun/misc/VM;->finalRefCount:I

    return v0
.end method

.method public static getPeakFinalRefCount()I
    .registers 1

    .line 268
    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    return v0
.end method

.method public static final getState()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method private static native getThreadStateValues([[I[[Ljava/lang/String;)V
.end method

.method private static initThreadStateMap()V
    .registers 12

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-class v0, Lsun/misc/VM;

    monitor-enter v0

    .line 304
    :try_start_5
    sget-object v0, Lsun/misc/VM;->threadStateMap:Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_91

    if-eqz v0, :cond_d

    .line 305
    const-class v0, Lsun/misc/VM;

    monitor-exit v0

    .line 339
    :goto_c
    return-void

    .line 308
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v6

    .line 310
    array-length v0, v6

    new-array v7, v0, [[I

    .line 311
    array-length v0, v6

    new-array v8, v0, [[Ljava/lang/String;

    .line 312
    invoke-static {v7, v8}, Lsun/misc/VM;->getThreadStateValues([[I[[Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/VM;->threadStateMap:Ljava/util/Map;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/VM;->threadStateNames:Ljava/util/Map;

    move v2, v3

    .line 316
    :goto_29
    array-length v0, v6

    if-ge v2, v0, :cond_ad

    .line 317
    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v9

    move-object v0, v5

    move-object v1, v5

    move v4, v3

    .line 320
    :goto_35
    array-length v10, v6

    if-ge v4, v10, :cond_4a

    .line 321
    aget-object v10, v8, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_91

    move-result v10

    if-eqz v10, :cond_47

    .line 322
    aget-object v0, v7, v4

    .line 323
    aget-object v1, v8, v4

    .line 320
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 326
    :cond_4a
    if-eqz v0, :cond_96

    .line 330
    :try_start_4c
    array-length v4, v0

    array-length v10, v1

    if-ne v4, v10, :cond_75

    move v4, v3

    .line 334
    :goto_51
    array-length v9, v0

    if-ge v4, v9, :cond_71

    .line 335
    sget-object v9, Lsun/misc/VM;->threadStateMap:Ljava/util/Map;

    aget v10, v0, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget-object v11, v6, v2

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v9, Lsun/misc/VM;->threadStateNames:Ljava/util/Map;

    aget v10, v0, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 316
    :cond_71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29

    .line 331
    :cond_75
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM thread state values and names  mapped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": length not matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_91
    .catchall {:try_start_4c .. :try_end_91} :catchall_91

    .line 303
    :catchall_91
    move-exception v0

    const-class v1, Lsun/misc/VM;

    monitor-exit v1

    throw v0

    .line 327
    :cond_96
    :try_start_96
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No VM thread state mapped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catchall {:try_start_96 .. :try_end_ad} :catchall_91

    .line 339
    :cond_ad
    const-class v0, Lsun/misc/VM;

    monitor-exit v0

    goto/16 :goto_c
.end method

.method private static native initialize()V
.end method

.method public static initializeOSEnvironment()V
    .registers 0

    .line 241
    return-void
.end method

.method public static isBooted()Z
    .registers 1

    .line 160
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    return v0
.end method

.method public static maxDirectMemory()J
    .registers 4

    .line 182
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    if-eqz v0, :cond_7

    .line 183
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    .line 200
    :goto_6
    return-wide v0

    .line 185
    :cond_7
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 186
    const-string v0, "sun.nio.MaxDirectMemorySize"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-static {v1}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 189
    if-eqz v0, :cond_2a

    .line 190
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 192
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lsun/misc/VM;->directMemory:J

    .line 200
    :cond_2a
    :goto_2a
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    goto :goto_6

    .line 194
    :cond_2d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 195
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_2a

    .line 196
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    goto :goto_2a
.end method

.method public static registerVMNotification(Lsun/misc/VMNotification;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    return-void
.end method

.method public static suspendThreads()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 58
    return v0
.end method

.method public static threadsSuspended()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    sget-boolean v0, Lsun/misc/VM;->suspended:Z

    return v0
.end method

.method public static toThreadState(I)Ljava/lang/Thread$State;
    .registers 3

    .line 289
    invoke-static {}, Lsun/misc/VM;->initThreadStateMap()V

    .line 291
    sget-object v0, Lsun/misc/VM;->threadStateMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$State;

    .line 292
    if-nez v0, :cond_13

    .line 294
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    .line 296
    :cond_13
    return-object v0
.end method

.method public static unsuspendSomeThreads()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    return-void
.end method

.method public static unsuspendThreads()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 66
    return-void
.end method
