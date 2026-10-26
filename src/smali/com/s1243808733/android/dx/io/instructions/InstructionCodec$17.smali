.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$17;
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

    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$17-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$17;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 377
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 378
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble2(I)I

    move-result v8

    .line 379
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smnibble3(I)I

    move-result v9

    .line 380
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v1, v0

    .line 381
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    const/4 v4, 0x0

    int-to-long v6, v1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v9}, Lcom/s1243808733/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJII)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 3

    .line 390
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    .line 391
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smmakeByte(II)I

    move-result v1

    .line 390
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v0

    .line 392
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteralUnit()S

    move-result v1

    .line 389
    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void
.end method
