.class public final Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "LocalVariableInfo.java"


# instance fields
.field private final blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>()V

    if-eqz p1, :cond_2e

    .line 59
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->regCount:I

    .line 63
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 64
    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 65
    nop

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    return-void

    .line 56
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 250
    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    .line 190
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 197
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugDump()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 224
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    array-length v3, v2

    if-ge v1, v3, :cond_3a

    .line 225
    aget-object v2, v2, v1

    if-nez v2, :cond_c

    goto :goto_37

    .line 229
    :cond_c
    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%04x: empty set\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_37

    .line 232
    :cond_21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    const-string v4, "%04x: %s\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3a
    return-void
.end method

.method public getAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getAssignmentCount()I
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_9

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    :goto_9
    return-object p1
.end method

.method public getStarts(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 2

    .line 156
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    return-object p1
.end method

.method public mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z
    .registers 7

    .line 108
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return v1

    .line 116
    :cond_b
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v3

    if-eqz v3, :cond_19

    .line 118
    invoke-virtual {v2, p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V

    goto :goto_1d

    .line 120
    :cond_19
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 123
    :goto_1d
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_25
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 128
    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return v1
.end method

.method public mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 169
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    goto :goto_12

    :cond_b
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    :goto_12
    return-object p1
.end method

.method public setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 4

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    if-eqz p2, :cond_13

    .line 86
    :try_start_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_a

    return-void

    .line 89
    :catch_a
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
