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
    .registers 4

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/s1243808733/android/dx/io/instructions/InstructionCodec$36-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$36;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 826
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 827
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_68

    const/4 v4, 0x2

    if-eq v0, v4, :cond_54

    const/4 v4, 0x4

    if-eq v0, v4, :cond_41

    if-ne v0, v2, :cond_29

    .line 860
    new-array v0, v1, [J

    :goto_18
    if-ge v3, v1, :cond_23

    .line 862
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 864
    :cond_23
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {p2, p0, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[J)V

    return-object p2

    .line 870
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bogus element_width: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 852
    :cond_41
    new-array v0, v1, [I

    :goto_43
    if-ge v3, v1, :cond_4e

    .line 854
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 856
    :cond_4e
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {p2, p0, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I)V

    return-object p2

    .line 844
    :cond_54
    new-array v0, v1, [S

    :goto_56
    if-ge v3, v1, :cond_62

    .line 846
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 848
    :cond_62
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {p2, p0, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[S)V

    return-object p2

    .line 831
    :cond_68
    new-array v0, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_6c
    if-ge v3, v1, :cond_7f

    if-eqz v5, :cond_74

    .line 835
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v4

    :cond_74
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 837
    aput-byte v6, v0, v3

    shr-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 840
    :cond_7f
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {p2, p0, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[B)V

    return-object p2
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 6

    .line 876
    check-cast p1, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    .line 878
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getElementWidthUnit()S

    move-result v0

    .line 879
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 881
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v2

    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 882
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 883
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getSize()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    const/4 p1, 0x1

    if-eq v0, p1, :cond_52

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4c

    const/4 p1, 0x4

    if-eq v0, p1, :cond_46

    const/16 p1, 0x8

    if-ne v0, p1, :cond_2e

    .line 889
    check-cast v1, [J

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([J)V

    goto :goto_57

    .line 891
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bogus element_width: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 888
    :cond_46
    check-cast v1, [I

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([I)V

    goto :goto_57

    .line 887
    :cond_4c
    check-cast v1, [S

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([S)V

    goto :goto_57

    .line 886
    :cond_52
    check-cast v1, [B

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([B)V

    :goto_57
    return-void
.end method
