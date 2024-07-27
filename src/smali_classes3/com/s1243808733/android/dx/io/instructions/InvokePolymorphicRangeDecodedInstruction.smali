.class public Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "InvokePolymorphicRangeDecodedInstruction.java"


# instance fields
.field private final c:I

.field private final protoIndex:I

.field private final registerCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;III)V
    .registers 16

    const/4 v5, 0x0

    .line 36
    int-to-long v6, v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 37
    int-to-short v0, p7

    if-eq p7, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "protoIndex doesn\'t fit in a short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    .line 41
    iput p6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    .line 42
    iput p7, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->protoIndex:I

    return-void
.end method


# virtual methods
.method public getC()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    return v0
.end method

.method public getProtoIndex()S
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 76
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->protoIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "use withProtoIndex to update both the method and proto indices for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "invoke-polymorphic/range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    iget v5, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->c:I

    iget v6, p0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;->registerCount:I

    move v3, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicRangeDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;III)V

    return-object v0
.end method
