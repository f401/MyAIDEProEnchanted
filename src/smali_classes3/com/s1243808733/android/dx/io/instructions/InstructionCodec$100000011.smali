.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000011;
.super Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 251
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000086(I)I

    move-result v2

    .line 252
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000087(I)I

    move-result v8

    .line 253
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    int-to-long v6, v0

    .line 260
    const/16 v0, 0x15

    if-ne v2, v0, :cond_0

    const/16 v0, 0x10

    move v1, v0

    .line 262
    :goto_0
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    check-cast v4, Lcom/s1243808733/android/dx/io/IndexType;

    shl-long/2addr v6, v1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object v0

    .line 260
    :cond_0
    const/16 v0, 0x30

    move v1, v0

    goto :goto_0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 271
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    .line 272
    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10

    .line 273
    :goto_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v2

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-short v0, v0

    .line 275
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000076(II)S

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void

    .line 272
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method
