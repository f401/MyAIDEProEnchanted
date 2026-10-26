.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$12;
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

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$12-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$12;-><init>(Ljava/lang/String;I)V

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

    .line 251
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 252
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result v8

    .line 253
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    int-to-long v6, v0

    const/16 v0, 0x15

    if-ne v2, v0, :cond_0

    const/16 v0, 0x10

    move v1, v0

    .line 262
    :goto_0
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v4, 0x0

    shl-long/2addr v6, v1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/s1243808733/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJI)V

    return-object v0

    .line 253
    :cond_0
    const/16 v0, 0x30

    move v1, v0

    goto :goto_0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 4

    .line 271
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v0, 0x10

    .line 273
    :goto_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v2

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-short v0, v0

    .line 275
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void

    .line 271
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method
