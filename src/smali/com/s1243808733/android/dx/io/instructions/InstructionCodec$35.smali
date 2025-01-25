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
    .registers 4

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$35-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$35;-><init>(Ljava/lang/String;I)V

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

    .line 784
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v0

    .line 785
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 786
    new-array v2, v1, [I

    .line 787
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_19

    .line 790
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_19
    :goto_19
    if-ge v4, v1, :cond_27

    .line 794
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 797
    :cond_27
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    invoke-direct {p2, p0, p1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I[I)V

    return-object p2
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 9

    .line 803
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    .line 805
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getKeys()[I

    move-result-object v0

    .line 806
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v1

    .line 807
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v2

    .line 809
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result p1

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 810
    array-length p1, v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smasUnsignedUnit(I)S

    move-result p1

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 812
    array-length p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, p1, :cond_2a

    aget v5, v0, v4

    .line 813
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 816
    :cond_2a
    array-length p1, v1

    :goto_2b
    if-ge v3, p1, :cond_36

    aget v0, v1, v3

    .line 817
    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_36
    return-void
.end method
