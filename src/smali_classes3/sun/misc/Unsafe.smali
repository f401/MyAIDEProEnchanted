.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final INVALID_FIELD_OFFSET:I = -0x1

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 45
    invoke-static {}, Lsun/misc/Unsafe;->registerNatives()V

    .line 46
    const-class v0, Lsun/misc/Unsafe;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getUnsafe"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lsun/reflect/Reflection;->registerMethodsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 51
    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .registers 2

    .line 84
    const/4 v0, 0x2

    invoke-static {v0}, Lsun/reflect/Reflection;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unsafe"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native registerNatives()V
.end method


# virtual methods
.method public native addressSize()I
.end method

.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method public native allocateMemory(J)J
.end method

.method public native arrayBaseOffset(Ljava/lang/Class;)I
.end method

.method public native arrayIndexScale(Ljava/lang/Class;)I
.end method

.method public final native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public final native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public final native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native copyMemory(JJJ)V
.end method

.method public native defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
.end method

.method public native defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
.end method

.method public native ensureClassInitialized(Ljava/lang/Class;)V
.end method

.method public fieldOffset(Ljava/lang/reflect/Field;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 548
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public native freeMemory(J)V
.end method

.method public native getAddress(J)J
.end method

.method public getBoolean(Ljava/lang/Object;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public native getBoolean(Ljava/lang/Object;J)Z
.end method

.method public native getBooleanVolatile(Ljava/lang/Object;J)Z
.end method

.method public native getByte(J)B
.end method

.method public getByte(Ljava/lang/Object;I)B
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public native getByte(Ljava/lang/Object;J)B
.end method

.method public native getByteVolatile(Ljava/lang/Object;J)B
.end method

.method public native getChar(J)C
.end method

.method public getChar(Ljava/lang/Object;I)C
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    return v0
.end method

.method public native getChar(Ljava/lang/Object;J)C
.end method

.method public native getCharVolatile(Ljava/lang/Object;J)C
.end method

.method public native getDouble(J)D
.end method

.method public getDouble(Ljava/lang/Object;I)D
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public native getDouble(Ljava/lang/Object;J)D
.end method

.method public native getDoubleVolatile(Ljava/lang/Object;J)D
.end method

.method public native getFloat(J)F
.end method

.method public getFloat(Ljava/lang/Object;I)F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public native getFloat(Ljava/lang/Object;J)F
.end method

.method public native getFloatVolatile(Ljava/lang/Object;J)F
.end method

.method public native getInt(J)I
.end method

.method public getInt(Ljava/lang/Object;I)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLoadAverage([DI)I
.end method

.method public native getLong(J)J
.end method

.method public getLong(Ljava/lang/Object;I)J
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public getObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getShort(J)S
.end method

.method public getShort(Ljava/lang/Object;I)S
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method public native getShort(Ljava/lang/Object;J)S
.end method

.method public native getShortVolatile(Ljava/lang/Object;J)S
.end method

.method public native monitorEnter(Ljava/lang/Object;)V
.end method

.method public native monitorExit(Ljava/lang/Object;)V
.end method

.method public native objectFieldOffset(Ljava/lang/reflect/Field;)J
.end method

.method public native pageSize()I
.end method

.method public native park(ZJ)V
.end method

.method public native putAddress(JJ)V
.end method

.method public putBoolean(Ljava/lang/Object;IZ)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 277
    return-void
.end method

.method public native putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public native putBooleanVolatile(Ljava/lang/Object;JZ)V
.end method

.method public native putByte(JB)V
.end method

.method public putByte(Ljava/lang/Object;IB)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 295
    return-void
.end method

.method public native putByte(Ljava/lang/Object;JB)V
.end method

.method public native putByteVolatile(Ljava/lang/Object;JB)V
.end method

.method public native putChar(JC)V
.end method

.method public putChar(Ljava/lang/Object;IC)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 331
    return-void
.end method

.method public native putChar(Ljava/lang/Object;JC)V
.end method

.method public native putCharVolatile(Ljava/lang/Object;JC)V
.end method

.method public native putDouble(JD)V
.end method

.method public putDouble(Ljava/lang/Object;ID)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    int-to-long v2, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 385
    return-void
.end method

.method public native putDouble(Ljava/lang/Object;JD)V
.end method

.method public native putDoubleVolatile(Ljava/lang/Object;JD)V
.end method

.method public native putFloat(JF)V
.end method

.method public putFloat(Ljava/lang/Object;IF)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 367
    return-void
.end method

.method public native putFloat(Ljava/lang/Object;JF)V
.end method

.method public native putFloatVolatile(Ljava/lang/Object;JF)V
.end method

.method public native putInt(JI)V
.end method

.method public putInt(Ljava/lang/Object;II)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 241
    return-void
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(JJ)V
.end method

.method public putLong(Ljava/lang/Object;IJ)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    int-to-long v2, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 349
    return-void
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public putObject(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putShort(JS)V
.end method

.method public putShort(Ljava/lang/Object;IS)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 313
    return-void
.end method

.method public native putShort(Ljava/lang/Object;JS)V
.end method

.method public native putShortVolatile(Ljava/lang/Object;JS)V
.end method

.method public native reallocateMemory(JJ)J
.end method

.method public native setMemory(JJB)V
.end method

.method public staticFieldBase(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 573
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 574
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    :goto_1
    return-object v0

    .line 573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public native staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public native staticFieldOffset(Ljava/lang/reflect/Field;)J
.end method

.method public native throwException(Ljava/lang/Throwable;)V
.end method

.method public native tryMonitorEnter(Ljava/lang/Object;)Z
.end method

.method public native unpark(Ljava/lang/Object;)V
.end method
