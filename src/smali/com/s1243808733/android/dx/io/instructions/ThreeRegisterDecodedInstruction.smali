.class public final Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "ThreeRegisterDecodedInstruction.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIII)V
    .registers 11

    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 42
    iput p8, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    .line 43
    iput p9, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    .line 44
    iput p10, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    return v0
.end method

.method public getB()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    return v0
.end method

.method public getC()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 14

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    .line 76
    new-instance v11, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getTarget()I

    move-result v5

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->getLiteral()J

    move-result-wide v6

    iget v8, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->a:I

    iget v9, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->b:I

    iget v10, p0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;->c:I

    move-object v0, v11

    move v3, p1

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIII)V

    return-object v11
.end method
