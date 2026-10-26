.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$31;
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

    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$31-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$31;-><init>(Ljava/lang/String;I)V

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

    .line 650
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 651
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result v8

    .line 652
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v6

    .line 653
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 8

    .line 661
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v6

    .line 663
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v1

    .line 664
    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit0(J)S

    move-result v2

    .line 665
    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit1(J)S

    move-result v3

    .line 666
    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit2(J)S

    move-result v4

    .line 667
    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smunit3(J)S

    move-result v5

    move-object v0, p2

    .line 662
    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SSSSS)V

    return-void
.end method
