.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$32;
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

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$32-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$32;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 675
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    const/16 v0, 0xfa

    if-ne v2, v0, :cond_1

    .line 681
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble2(I)I

    move-result v0

    .line 682
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble3(I)I

    move-result v1

    .line 683
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 684
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v4

    .line 685
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble0(I)I

    move-result v6

    .line 686
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble1(I)I

    move-result v7

    .line 687
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble2(I)I

    move-result v8

    .line 688
    invoke-static {v4}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble3(I)I

    move-result v9

    .line 689
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v5

    .line 690
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v4

    if-lt v1, v12, :cond_0

    if-gt v1, v10, :cond_0

    .line 695
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

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bogus registerCount: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 6

    .line 704
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    .line 706
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getOpcode()I

    move-result v0

    .line 707
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getG()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smmakeByte(II)I

    move-result v1

    .line 706
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v0

    .line 708
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getIndexUnit()S

    move-result v1

    .line 709
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getC()I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getD()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getE()I

    move-result v4

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getF()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(IIII)S

    move-result v2

    .line 710
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getProtoIndex()S

    move-result v3

    .line 706
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSSS)V

    return-void
.end method
