.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000031;
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
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v10, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 675
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000086(I)I

    move-result v2

    .line 676
    const/16 v0, 0xfa

    if-eq v2, v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000092(I)I

    move-result v0

    .line 682
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000093(I)I

    move-result v1

    .line 683
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 684
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v4

    .line 685
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000090(I)I

    move-result v6

    .line 686
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000091(I)I

    move-result v7

    .line 687
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000092(I)I

    move-result v8

    .line 688
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000093(I)I

    move-result v9

    .line 689
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v5

    .line 690
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    .line 692
    if-lt v1, v12, :cond_1

    if-le v1, v10, :cond_2

    .line 693
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bogus registerCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_2
    new-array v10, v10, [I

    aput v6, v10, v11

    aput v7, v10, v12

    const/4 v6, 0x2

    aput v8, v10, v6

    const/4 v6, 0x3

    aput v9, v10, v6

    const/4 v6, 0x4

    aput v0, v10, v6

    invoke-static {v10, v11, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    .line 698
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 9
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

    .line 704
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    .line 706
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getG()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000078(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000076(II)S

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getIndexUnit()S

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getC()I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getD()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getE()I

    move-result v4

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getF()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000077(IIII)S

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getProtoIndex()S

    move-result v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSSS)V

    return-void
.end method
