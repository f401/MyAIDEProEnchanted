.class public final Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "RegisterRangeDecodedInstruction.java"


# instance fields
.field private final a:I

.field private final registerCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V
    .registers 10

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 40
    iput p8, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    .line 41
    iput p9, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    return-void
.end method


# virtual methods
.method public getA()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getIndexType()Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getTarget()I

    move-result v5

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->getLiteral()J

    move-result-wide v6

    iget v8, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->a:I

    iget v9, p0, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;->registerCount:I

    move v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    return-object v0
.end method
