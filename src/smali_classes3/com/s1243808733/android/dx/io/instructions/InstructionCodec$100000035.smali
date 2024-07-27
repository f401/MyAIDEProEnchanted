.class Lcom/s1243808733/android/dx/io/instructions/InstructionCodec$100000035;
.super Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 826
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 827
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    .line 829
    packed-switch v0, :pswitch_data_0

    .line 870
    :pswitch_0
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bogus element_width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :pswitch_1
    new-array v6, v5, [B

    move v2, v1

    move v0, v1

    move v3, v4

    .line 833
    :goto_0
    if-lt v2, v5, :cond_0

    .line 840
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v6}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[B)V

    .line 864
    :goto_1
    return-object v0

    .line 834
    :cond_0
    if-eqz v3, :cond_1

    .line 835
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 837
    :cond_1
    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 838
    shr-int/lit8 v0, v0, 0x8

    .line 833
    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 844
    :pswitch_2
    new-array v2, v5, [S

    .line 845
    :goto_2
    if-lt v1, v5, :cond_3

    .line 848
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v2}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[S)V

    goto :goto_1

    .line 846
    :cond_3
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v2, v1

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 852
    :pswitch_3
    new-array v2, v5, [I

    .line 853
    :goto_3
    if-lt v1, v5, :cond_4

    .line 856
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v2}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I)V

    goto :goto_1

    .line 854
    :cond_4
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v0

    aput v0, v2, v1

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 860
    :pswitch_4
    new-array v2, v5, [J

    move v0, v1

    .line 861
    :goto_4
    if-lt v0, v5, :cond_5

    .line 864
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v0, p0, p1, v2}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[J)V

    goto :goto_1

    .line 862
    :cond_5
    invoke-interface {p2}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v6

    aput-wide v6, v2, v0

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    .line 885
    packed-switch v1, :pswitch_data_0

    .line 891
    :pswitch_0
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bogus element_width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :pswitch_1
    check-cast v0, [B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([B)V

    .line 891
    :goto_0
    return-void

    .line 887
    :pswitch_2
    check-cast v0, [S

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([S)V

    goto :goto_0

    .line 888
    :pswitch_3
    check-cast v0, [I

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([I)V

    goto :goto_0

    .line 889
    :pswitch_4
    check-cast v0, [J

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/CodeOutput;->write([J)V

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
