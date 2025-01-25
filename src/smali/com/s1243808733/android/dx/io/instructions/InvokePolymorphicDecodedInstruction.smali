.class public Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "InvokePolymorphicDecodedInstruction.java"


# instance fields
.field private final protoIndex:I

.field private final registers:[I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V
    .registers 15

    .line 34
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    int-to-short p1, p5

    if-ne p5, p1, :cond_13

    .line 38
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    .line 39
    iput-object p6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    return-void

    .line 36
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "protoIndex doesn\'t fit in a short: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getC()I
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_8

    aget v2, v0, v2

    :cond_8
    return v2
.end method

.method public getD()I
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    aget v0, v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getE()I
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    aget v0, v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getF()I
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    aget v0, v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getG()I
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_9

    aget v0, v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getProtoIndex()S
    .registers 2

    .line 85
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v0, v0

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 11

    .line 56
    nop

    .line 57
    new-instance v7, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    iget-object v6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    move-object v0, v7

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V

    return-object v7
.end method
