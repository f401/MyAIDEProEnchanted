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
    .registers 4

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$32-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$32;-><init>(Ljava/lang/String;I)V

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

    .line 675
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    const/16 v0, 0xfa

    if-ne v2, v0, :cond_62

    .line 681
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble2(I)I

    move-result v0

    .line 682
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble3(I)I

    move-result p1

    .line 683
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 684
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 685
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble0(I)I

    move-result v4

    .line 686
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble1(I)I

    move-result v5

    .line 687
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble2(I)I

    move-result v6

    .line 688
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble3(I)I

    move-result v1

    .line 689
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result p2

    .line 690
    invoke-static {v2}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/s1243808733/android/dx/io/IndexType;

    move-result-object v7

    const/4 v8, 0x1

    if-lt p1, v8, :cond_4a

    const/4 v8, 0x5

    if-gt p1, v8, :cond_4a

    .line 695
    nop

    .line 696
    filled-new-array {v4, v5, v6, v1, v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    .line 698
    new-instance p1, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    move-object v0, p1

    move-object v1, p0

    move-object v4, v7

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;I[I)V

    return-object p1

    .line 693
    :cond_4a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bogus registerCount: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 679
    :cond_62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 9

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

    move-result p1

    .line 706
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSSS)V

    return-void
.end method
