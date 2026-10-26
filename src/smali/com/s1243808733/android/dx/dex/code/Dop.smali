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
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-static {p3}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

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
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nextOpcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFamily()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->family:I

    return v0
.end method

.method public getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->format:Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 134
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextOpcode()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->nextOpcode:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    return v0
.end method

.method public getOppositeTest()Lcom/s1243808733/android/dx/dex/code/Dop;
    .locals 2

    .line 156
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->opcode:I

    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GTZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    :goto_0
    return-object v0

    .line 167
    :pswitch_1
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 166
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LTZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 165
    :pswitch_3
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 164
    :pswitch_4
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_EQZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 163
    :pswitch_5
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_NEZ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 162
    :pswitch_6
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GT:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 161
    :pswitch_7
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 160
    :pswitch_8
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_LT:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 159
    :pswitch_9
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_GE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 158
    :pswitch_a
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_EQ:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 157
    :pswitch_b
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->IF_NE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasResult()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
