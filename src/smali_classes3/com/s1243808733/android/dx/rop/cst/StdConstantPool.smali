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

    const/4 v1, 0x1

    .line 41
    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 43
    if-ge p1, v1, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0

    .line 47
    :cond_1
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void
.end method

.method private static throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 4

    .line 150
    new-instance v0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid constant pool index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1

    .line 83
    if-nez v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntries()[Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 63
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->throwIfImmutable()V

    .line 113
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    if-ge p1, v2, :cond_2

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0

    .line 119
    :cond_2
    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(n == size - 1) && "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "cst.isCategory2()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    add-int/lit8 v3, p1, 0x1

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object v0, v2, v3

    .line 128
    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    .line 134
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    add-int/lit8 v2, p1, -0x1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object v1, v0, v2

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v0, v0

    return v0
.end method
