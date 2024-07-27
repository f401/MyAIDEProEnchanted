.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000030;
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

    .line 650
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000086(I)I

    move-result v2

    .line 651
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000087(I)I

    move-result v8

    .line 652
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v6

    .line 653
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    check-cast v4, Lcom/s1243808733/android/dx/io/IndexType;

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 11
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

    .line 661
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v6

    .line 662
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000076(II)S

    move-result v1

    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000082(J)S

    move-result v2

    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000083(J)S

    move-result v3

    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000084(J)S

    move-result v4

    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000085(J)S

    move-result v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSSSS)V

    return-void
.end method
