.class final enum Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$36;
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

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$36-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$36;-><init>(Ljava/lang/String;I)V

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 827
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v4

    if-eq v0, v3, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 860
    new-array v1, v4, [J

    :goto_0
    if-ge v2, v4, :cond_0

    .line 862
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v6

    aput-wide v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[J)V

    :goto_1
    return-object v0

    .line 870
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus element_width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_2
    new-array v1, v4, [I

    :goto_2
    if-ge v2, v4, :cond_3

    .line 854
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 856
    :cond_3
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I)V

    goto :goto_1

    .line 844
    :cond_4
    new-array v1, v4, [S

    :goto_3
    if-ge v2, v4, :cond_5

    .line 846
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 848
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[S)V

    goto :goto_1

    .line 831
    :cond_6
    new-array v5, v4, [B

    move v1, v2

    move v0, v2

    :goto_4
    if-ge v1, v4, :cond_8

    if-eqz v3, :cond_7

    .line 835
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    :cond_7
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    .line 837
    aput-byte v2, v5, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 840
    :cond_8
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v5}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[B)V

    goto :goto_1
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 3

    .line 876
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    .line 878
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getElementWidthUnit()S

    move-result v1

    .line 879
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 881
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v2

    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 882
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 883
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getSize()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 889
    check-cast v0, [J

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([J)V

    .line 886
    :goto_0
    return-void

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bogus element_width: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    :cond_1
    check-cast v0, [I

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([I)V

    goto :goto_0

    .line 887
    :cond_2
    check-cast v0, [S

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([S)V

    goto :goto_0

    .line 886
    :cond_3
    check-cast v0, [B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([B)V

    goto :goto_0
.end method
