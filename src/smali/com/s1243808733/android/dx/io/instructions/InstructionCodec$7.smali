.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$7;
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

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$7-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$7;-><init>(Ljava/lang/String;I)V

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

    .line 147
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->cursor()I

    move-result v1

    .line 148
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v2

    .line 149
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result v6

    .line 150
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v5, v0

    .line 151
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v5, v1

    int-to-long v6, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-object v0
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 2

    .line 158
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->cursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTargetUnit(I)S

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void
.end method
