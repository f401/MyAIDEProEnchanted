.class public final Lcom/s1243808733/android/dx/dex/code/Dop;
.super Ljava/lang/Object;
.source "Dop.java"


# instance fields
.field private final family:I

.field private final format:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

.field private final hasResult:Z

.field private final nextOpcode:I

.field private final opcode:I


# direct methods
.method public constructor <init>(IIILcom/s1243808733/android/dx/dex/code/InsnFormat;Z)V
    .registers 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 66
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 70
    invoke-static {p3}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p4, :cond_22

    .line 78
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    .line 79
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->family:I

    .line 80
    iput p3, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->nextOpcode:I

    .line 81
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->format:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    .line 82
    iput-boolean p5, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult:Z

    return-void

    .line 75
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus nextOpcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus family"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFamily()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->family:I

    return v0
.end method

.method public getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->format:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 134
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextOpcode()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->nextOpcode:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    return v0
.end method

.method public getOppositeTest()Lcom/s1243808733/android/dx/dex/code/Dop;
    .registers 3

    .line 156
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    packed-switch v0, :pswitch_data_3e

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus opcode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_19  #0x3d
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GTZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 167
    :pswitch_1c  #0x3c
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 166
    :pswitch_1f  #0x3b
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LTZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 165
    :pswitch_22  #0x3a
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 164
    :pswitch_25  #0x39
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_EQZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 163
    :pswitch_28  #0x38
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_NEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 162
    :pswitch_2b  #0x37
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GT:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 161
    :pswitch_2e  #0x36
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LE:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 160
    :pswitch_31  #0x35
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LT:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 159
    :pswitch_34  #0x34
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GE:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 158
    :pswitch_37  #0x33
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_EQ:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    .line 157
    :pswitch_3a  #0x32
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_NE:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x32
        :pswitch_3a  #00000032
        :pswitch_37  #00000033
        :pswitch_34  #00000034
        :pswitch_31  #00000035
        :pswitch_2e  #00000036
        :pswitch_2b  #00000037
        :pswitch_28  #00000038
        :pswitch_25  #00000039
        :pswitch_22  #0000003a
        :pswitch_1f  #0000003b
        :pswitch_1c  #0000003c
        :pswitch_19  #0000003d
    .end packed-switch
.end method

.method public hasResult()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
