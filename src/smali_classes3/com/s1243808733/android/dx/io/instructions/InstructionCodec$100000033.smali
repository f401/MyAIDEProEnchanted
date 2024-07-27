.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000033;
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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 750
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v1

    .line 751
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v2

    .line 752
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v3

    .line 753
    new-array v4, v2, [I

    .line 755
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 759
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;II[I)V

    return-object v0

    .line 756
    :cond_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v5, v6

    aput v5, v4, v0

    .line 755
    add-int/lit8 v0, v0, 0x1

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

    .line 765
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    .line 767
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v1

    .line 768
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v2

    .line 770
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 771
    array-length v0, v1

    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->access$1000079(I)S

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 772
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getFirstKey()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 774
    const/4 v0, 0x0

    .line 775
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    return-void

    .line 774
    :cond_0
    aget v3, v1, v0

    .line 775
    sub-int/2addr v3, v2

    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
