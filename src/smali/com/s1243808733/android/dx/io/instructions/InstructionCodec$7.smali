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
    .registers 4

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$7-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$7;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 147
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->cursor()I

    move-result v0

    .line 148
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte0(I)I

    move-result v3

    .line 149
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->-$$Nest$smbyte1(I)I

    move-result p1

    .line 150
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result p2

    int-to-short p2, p2

    .line 151
    new-instance v9, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v0, v0, -0x1

    add-int v6, v0, p2

    int-to-long v7, p1

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/s1243808733/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    return-object v9
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 4

    .line 158
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->cursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTargetUnit(I)S

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    move-result p1

    invoke-interface {p2, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(SS)V

    return-void
.end method
