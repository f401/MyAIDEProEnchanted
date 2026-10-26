.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$22;
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

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$22-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$22;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 488
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 489
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result v8

    .line 490
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v1

    .line 491
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    int-to-long v6, v1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 3

    .line 499
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteralInt()I

    move-result v0

    .line 501
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v1

    .line 502
    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit0(I)S

    move-result v2

    .line 503
    invoke-static {v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit1(I)S

    move-result v0

    .line 500
    invoke-interface {p2, v1, v2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSS)V

    return-void
.end method
