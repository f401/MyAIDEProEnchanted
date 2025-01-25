.class public final Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "ZeroRegisterDecodedInstruction.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V
    .registers 8

    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-void
.end method


# virtual methods
.method public getRegisterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 11

    .line 42
    nop

    .line 43
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    .line 44
    new-instance v8, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getTarget()I

    move-result v5

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;->getLiteral()J

    move-result-wide v6

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-object v8
.end method
