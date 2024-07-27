.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000013;
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
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 305
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000086(I)I

    move-result v2

    .line 306
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000087(I)I

    move-result v8

    .line 307
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 308
    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000086(I)I

    move-result v9

    .line 309
    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000087(I)I

    move-result v10

    .line 310
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    const/4 v4, 0x0

    check-cast v4, Lcom/s1243808733/android/dx/io/IndexType;

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJIII)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 6
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

    .line 318
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000076(II)S

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000076(II)S

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void
.end method
