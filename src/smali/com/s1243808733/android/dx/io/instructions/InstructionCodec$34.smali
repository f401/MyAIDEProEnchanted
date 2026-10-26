.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$34;
.super Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$34-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$34;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
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

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 756
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;II[I)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 5

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

    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smasUnsignedUnit(I)S

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 772
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getFirstKey()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 774
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    .line 775
    sub-int/2addr v4, v2

    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
