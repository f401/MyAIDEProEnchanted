.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$35;
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

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$35-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$35;-><init>(Ljava/lang/String;I)V

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

    const/4 v0, 0x0

    .line 784
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v2

    .line 785
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 786
    new-array v4, v3, [I

    .line 787
    new-array v5, v3, [I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 790
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v6

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 794
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v1

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v1, v6

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 797
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v4, v5}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I[I)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 7

    const/4 v0, 0x0

    .line 803
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    .line 805
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getKeys()[I

    move-result-object v2

    .line 806
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v3

    .line 807
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v4

    .line 809
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v1

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 810
    array-length v1, v3

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smasUnsignedUnit(I)S

    move-result v1

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 812
    array-length v5, v2

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget v6, v2, v1

    .line 813
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    :cond_0
    array-length v1, v3

    :goto_1
    if-ge v0, v1, :cond_1

    aget v2, v3, v0

    .line 817
    sub-int/2addr v2, v4

    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
