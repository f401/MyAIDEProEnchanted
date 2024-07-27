.class public final Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;
.super Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;
.source "HighRegisterPrefix.java"


# instance fields
.field private insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 46
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registers.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    return-void
.end method

.method private calculateInsnsIfNecessary()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 89
    new-array v0, v4, [Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move v0, v1

    move v2, v1

    .line 91
    :goto_0
    if-ge v2, v4, :cond_0

    .line 92
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 93
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move-result-object v6

    aput-object v6, v5, v2

    .line 94
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private static moveInsnFor(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;
    .registers 4

    .line 142
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->makeMove(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public codeSize()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    .line 60
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move v0, v1

    move v2, v1

    .line 61
    :goto_0
    array-length v1, v3

    if-lt v0, v1, :cond_0

    .line 64
    return v2

    .line 60
    :cond_0
    aget-object v1, v3, v0

    .line 61
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->codeSize()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 117
    :goto_0
    if-lt v2, v4, :cond_0

    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 119
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move-result-object v6

    .line 121
    if-eqz v2, :cond_1

    .line 122
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    invoke-virtual {v6, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    .line 72
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 72
    :cond_0
    aget-object v2, v1, v0

    .line 73
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
