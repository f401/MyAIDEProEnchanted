.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 273
    :try_start_18
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 274
    const-class v1, Lcom/google/common/cache/Striped64;

    const-string v2, "base"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 276
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, Lcom/google/common/cache/Striped64;

    const-string v2, "busy"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    .line 279
    return-void

    .line 277
    :catch_3d
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .line 24
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .line 290
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 294
    :goto_4
    return-object v0

    .line 291
    :catch_5
    move-exception v0

    .line 294
    :try_start_6
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_4

    .line 306
    :catch_12
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 14

    .line 153
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .registers 7

    .line 158
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 8

    .line 255
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 256
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 257
    if-eqz v1, :cond_13

    .line 258
    array-length v2, v1

    .line 259
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_13

    .line 260
    aget-object v3, v1, v0

    .line 261
    if-eqz v3, :cond_10

    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 259
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 264
    :cond_13
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .registers 16

    .line 182
    if-nez p3, :cond_50

    .line 183
    sget-object v1, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    const/4 v2, 0x1

    new-array p3, v2, [I

    invoke-virtual {v1, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 184
    sget-object v1, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 185
    if-nez v1, :cond_ea

    :goto_13
    const/4 v1, 0x0

    aput v0, p3, v1

    .line 187
    :goto_16
    const/4 v1, 0x0

    .line 193
    :cond_17
    :goto_17
    iget-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v3, :cond_ae

    array-length v2, v3

    if-lez v2, :cond_ae

    .line 194
    add-int/lit8 v4, v2, -0x1

    and-int/2addr v4, v0

    aget-object v4, v3, v4

    if-nez v4, :cond_67

    .line 195
    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_59

    .line 196
    new-instance v3, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v3, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 197
    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_59

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 198
    const/4 v2, 0x0

    .line 202
    :try_start_39
    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v4, :cond_4a

    array-length v5, v4
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_54

    if-lez v5, :cond_4a

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    aget-object v6, v4, v5

    if-nez v6, :cond_4a

    .line 203
    aput-object v3, v4, v5

    .line 204
    const/4 v2, 0x1

    .line 207
    :cond_4a
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 208
    if-eqz v2, :cond_17

    .line 251
    :cond_4f
    :goto_4f
    return-void

    .line 186
    :cond_50
    const/4 v0, 0x0

    aget v0, p3, v0

    goto :goto_16

    .line 207
    :catchall_54
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 208
    throw v0

    .line 213
    :cond_59
    const/4 v1, 0x0

    .line 232
    :cond_5a
    :goto_5a
    shl-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    .line 233
    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    .line 234
    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    .line 235
    const/4 v2, 0x0

    aput v0, p3, v2

    goto :goto_17

    .line 214
    :cond_67
    if-nez p4, :cond_6b

    .line 215
    const/4 p4, 0x1

    goto :goto_5a

    .line 216
    :cond_6b
    iget-wide v6, v4, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 217
    sget v4, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v2, v4, :cond_7f

    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v4, v3, :cond_81

    :cond_7f
    const/4 v1, 0x0

    goto :goto_5a

    .line 218
    :cond_81
    if-nez v1, :cond_85

    const/4 v1, 0x1

    goto :goto_5a

    .line 219
    :cond_85
    iget v4, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 221
    :try_start_8f
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v1, v3, :cond_a3

    .line 222
    shl-int/lit8 v1, v2, 0x1

    new-array v4, v1, [Lcom/google/common/cache/Striped64$Cell;
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_a9

    .line 223
    const/4 v1, 0x0

    :goto_98
    if-ge v1, v2, :cond_a1

    aget-object v5, v3, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 224
    :cond_a1
    :try_start_a1
    iput-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_a3
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_a9

    .line 227
    :cond_a3
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 228
    const/4 v1, 0x0

    .line 230
    goto/16 :goto_17

    .line 227
    :catchall_a9
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 228
    throw v0

    .line 236
    :cond_ae
    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_dc

    iget-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v2, v3, :cond_dc

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 237
    const/4 v2, 0x0

    .line 239
    :try_start_bd
    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v4, v3, :cond_d0

    .line 240
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/cache/Striped64$Cell;

    .line 241
    new-instance v3, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v3, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V
    :try_end_c9
    .catchall {:try_start_bd .. :try_end_c9} :catchall_d7

    and-int/lit8 v4, v0, 0x1

    aput-object v3, v2, v4

    .line 242
    :try_start_cd
    iput-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_cf
    .catchall {:try_start_cd .. :try_end_cf} :catchall_d7

    .line 243
    const/4 v2, 0x1

    .line 246
    :cond_d0
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 247
    if-eqz v2, :cond_17

    goto/16 :goto_4f

    .line 246
    :catchall_d7
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 247
    throw v0

    .line 236
    :cond_dc
    iget-wide v2, p0, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_4f

    :cond_ea
    move v0, v1

    goto/16 :goto_13
.end method
