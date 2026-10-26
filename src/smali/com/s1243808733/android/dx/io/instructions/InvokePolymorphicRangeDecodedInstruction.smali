.class public Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "InvokePolymorphicRangeDecodedInstruction.java"


# instance fields
.field private final c:I

.field private final protoIndex:I

.field private final registerCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;III)V
    .locals 8

    .line 36
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    int-to-short v0, p7

    if-ne p7, v0, :cond_0

    .line 40
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    .line 41
    iput p6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    .line 42
    iput p7, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->protoIndex:I

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protoIndex doesn\'t fit in a short: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getC()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    return v0
.end method

.method public getProtoIndex()S
    .locals 1

    .line 76
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->protoIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 8

    .line 57
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getOpcode()I

    move-result v2

    .line 61
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    iget v5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    iget v6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    move v3, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;III)V

    return-object v0
.end method
