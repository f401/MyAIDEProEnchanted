.class public final Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "StdConstantPool.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/cst/ConstantPool;


# instance fields
.field private final entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v0, v1

    .line 41
    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    if-lt p1, v1, :cond_1

    .line 47
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 4294967295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid constant pool index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntries()[Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwIfImmutable()V

    if-eqz p2, :cond_2

    .line 113
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-lt p1, v1, :cond_4

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_3

    .line 125
    add-int/lit8 v1, p1, 0x1

    aput-object v2, v0, v1

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 133
    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object v2, v0, v1

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object p2, v0, p1

    return-void

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v0, v0

    return v0
.end method
