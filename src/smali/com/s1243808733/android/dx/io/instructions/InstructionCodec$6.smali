.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$6;
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

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$6-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$6;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 128
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->cursor()I

    move-result v1

    .line 129
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 130
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result v0

    int-to-byte v5, v0

    .line 131
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v5, v1

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 2

    .line 138
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->cursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTargetByte(I)I

    move-result v0

    .line 139
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smcodeUnit(II)S

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    return-void
.end method
