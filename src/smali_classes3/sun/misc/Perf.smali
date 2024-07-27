.class public final Lsun/misc/Perf;
.super Ljava/lang/Object;
.source "Perf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/Perf$GetPerfAction;
    }
.end annotation


# static fields
.field private static final PERF_MODE_RO:I = 0x0

.field private static final PERF_MODE_RW:I = 0x1

.field private static instance:Lsun/misc/Perf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 536
    invoke-static {}, Lsun/misc/Perf;->registerNatives()V

    .line 537
    new-instance v0, Lsun/misc/Perf;

    invoke-direct {v0}, Lsun/misc/Perf;-><init>()V

    sput-object v0, Lsun/misc/Perf;->instance:Lsun/misc/Perf;

    .line 538
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Perf;
    .registers 1

    .line 52
    sget-object v0, Lsun/misc/Perf;->instance:Lsun/misc/Perf;

    return-object v0
.end method

.method static synthetic access$100(Lsun/misc/Perf;Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lsun/misc/Perf;->detach(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private native attach(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lsun/misc/Perf;->attach(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    if-nez p2, :cond_0

    .line 298
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 286
    new-instance v2, Lsun/misc/Perf$1;

    invoke-direct {v2, p0, v0}, Lsun/misc/Perf$1;-><init>(Lsun/misc/Perf;Ljava/nio/ByteBuffer;)V

    invoke-static {v1, v2}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-object v0, v1

    .line 298
    goto :goto_0
.end method

.method private native detach(Ljava/nio/ByteBuffer;)V
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .registers 3

    .line 492
    const/4 v0, 0x0

    .line 495
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 497
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPerf()Lsun/misc/Perf;
    .registers 3

    .line 135
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "sun.misc.Perf.getPerf"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 141
    :cond_0
    sget-object v0, Lsun/misc/Perf;->instance:Lsun/misc/Perf;

    return-object v0
.end method

.method private static native registerNatives()V
.end method


# virtual methods
.method public attach(ILjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 199
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lsun/misc/Perf;->attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Lsun/misc/Perf;->attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Ljava/lang/String;ILjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const-string v0, "r"

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/Perf;->attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    const-string v0, "rw"

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/Perf;->attachImpl(Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native createByteArray(Ljava/lang/String;II[BI)Ljava/nio/ByteBuffer;
.end method

.method public native createLong(Ljava/lang/String;IIJ)Ljava/nio/ByteBuffer;
.end method

.method public createString(Ljava/lang/String;IILjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 11

    const/4 v2, 0x0

    .line 447
    invoke-static {p4}, Lsun/misc/Perf;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 448
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [B

    .line 449
    array-length v1, v0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    array-length v0, v0

    aput-byte v2, v4, v0

    .line 451
    array-length v5, v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Perf;->createByteArray(Ljava/lang/String;II[BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createString(Ljava/lang/String;IILjava/lang/String;I)Ljava/nio/ByteBuffer;
    .registers 12

    const/4 v2, 0x0

    .line 408
    invoke-static {p4}, Lsun/misc/Perf;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 409
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [B

    .line 410
    array-length v1, v0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    array-length v0, v0

    aput-byte v2, v4, v0

    .line 412
    array-length v0, v4

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Perf;->createByteArray(Ljava/lang/String;II[BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public native highResCounter()J
.end method

.method public native highResFrequency()J
.end method
