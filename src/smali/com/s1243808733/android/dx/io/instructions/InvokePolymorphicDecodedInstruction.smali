.class public Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "InvokePolymorphicDecodedInstruction.java"


# instance fields
.field private final protoIndex:I

.field private final registers:[I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V
    .locals 8

    .line 34
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    int-to-short v0, p5

    if-ne p5, v0, :cond_0

    .line 38
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    .line 39
    iput-object p6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protoIndex doesn\'t fit in a short: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getC()I
    .locals 3

    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v2, v1

    if-lez v2, :cond_0

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method public getD()I
    .locals 3

    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getE()I
    .locals 3

    const/4 v2, 0x2

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getF()I
    .locals 3

    const/4 v2, 0x3

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getG()I
    .locals 3

    const/4 v2, 0x4

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtoIndex()S
    .locals 1

    .line 85
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    array-length v0, v0

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 7

    .line 56
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    iget-object v6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V

    return-object v0
.end method
