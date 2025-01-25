.class public final Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "StdConstantPool.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/cst/ConstantPool;


# instance fields
.field private final entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 41
    :goto_6
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    if-lt p1, v0, :cond_10

    .line 47
    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 44
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid constant pool index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    .line 84
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-object v0

    .line 90
    :catch_a
    move-exception v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    return-object p1
.end method

.method public get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_4
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    return-object p1
.end method

.method public getEntries()[Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 63
    :catch_5
    move-exception v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7

    .line 111
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwIfImmutable()V

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    .line 113
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-lt p1, v0, :cond_44

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v3, v1

    sub-int/2addr v3, v0

    if-eq p1, v3, :cond_1f

    .line 125
    add-int/lit8 v0, p1, 0x1

    aput-object v2, v1, v0

    goto :goto_27

    .line 122
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    if-eqz p2, :cond_3f

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v1, v0, p1

    if-nez v1, :cond_3f

    add-int/lit8 v1, p1, -0x1

    .line 133
    aget-object v0, v0, v1

    if-eqz v0, :cond_3f

    .line 134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object v2, v0, v1

    .line 139
    :cond_3f
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object p2, v0, p1

    return-void

    .line 116
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v0, v0

    return v0
.end method
