.class public Lcom/s1243808733/android/dx/cf/direct/CodeObserver;
.super Ljava/lang/Object;
.source "CodeObserver.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 60
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 61
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void

    .line 57
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "observer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private header(I)Ljava/lang/String;
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    .line 216
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc4

    if-ne v0, v2, :cond_2e

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private visitLiteralDouble(IIIJ)V
    .registers 10

    const/4 p1, 0x1

    if-eq p3, p1, :cond_16

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_16
    const-string p1, ""

    .line 308
    :goto_18
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " // "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {p4, p5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p4

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-interface {v0, v1, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method private visitLiteralFloat(IIII)V
    .registers 9

    const/4 p1, 0x1

    if-eq p3, p1, :cond_16

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_16
    const-string p1, ""

    .line 290
    :goto_18
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " // "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-interface {v0, v1, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method private visitLiteralInt(IIII)V
    .registers 9

    const/4 p1, 0x1

    if-ne p3, p1, :cond_6

    .line 237
    const-string v0, " // "

    goto :goto_8

    :cond_6
    const-string v0, " "

    .line 240
    :goto_8
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 241
    const-string v2, "#"

    if-eq p3, p1, :cond_3d

    const/16 p1, 0x10

    if-ne v1, p1, :cond_17

    goto :goto_3d

    :cond_17
    const/16 p1, 0x11

    if-ne v1, p1, :cond_2c

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    .line 246
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    .line 242
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    :goto_4d
    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-interface {p4, v1, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method private visitLiteralLong(IIIJ)V
    .registers 9

    const/4 p1, 0x1

    if-ne p3, p1, :cond_6

    .line 264
    const-string v0, " // "

    goto :goto_8

    :cond_6
    const-string v0, " #"

    :goto_8
    if-ne p3, p1, :cond_10

    long-to-int p1, p4

    .line 268
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    .line 270
    :cond_10
    invoke-static {p4, p5}, Lcom/s1243808733/android/dx/util/Hex;->s8(J)Ljava/lang/String;

    move-result-object p1

    .line 273
    :goto_14
    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object p5, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-interface {p4, p5, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setPreviousOffset(I)V
    .registers 2

    return-void
.end method

.method public visitBranch(IIII)V
    .registers 8

    const/4 p1, 0x3

    if-gt p3, p1, :cond_8

    .line 150
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_8
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :goto_c
    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-interface {p4, v0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 12

    .line 103
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_9

    .line 105
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return-void

    .line 109
    :cond_9
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_11

    .line 110
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralInt(IIII)V

    return-void

    .line 114
    :cond_11
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_23

    .line 115
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    .line 116
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->getValue()J

    move-result-wide v4

    .line 115
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralLong(IIIJ)V

    return-void

    .line 120
    :cond_23
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_31

    .line 121
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    .line 122
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getIntBits()I

    move-result p4

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralFloat(IIII)V

    return-void

    .line 126
    :cond_31
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_43

    .line 127
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    .line 128
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v4

    .line 127
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralDouble(IIIJ)V

    return-void

    :cond_43
    if-eqz p5, :cond_6d

    .line 135
    const/16 v0, 0xc5

    const-string v1, ", "

    if-ne p1, v0, :cond_5c

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    .line 138
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    .line 133
    :cond_6d
    const-string p1, ""

    .line 142
    :goto_6f
    iget-object p5, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-interface {p5, v0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitInvalid(III)V
    .registers 6

    .line 67
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .registers 11

    const/4 v0, 0x3

    if-gt p3, v0, :cond_8

    .line 80
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_c

    :cond_8
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p4

    :goto_c
    const/4 v1, 0x1

    if-ne p3, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 84
    :goto_11
    const/16 v2, 0x84

    const-string v3, ""

    if-ne p1, v2, :cond_31

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, ", #"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gt p3, v0, :cond_25

    .line 86
    invoke-static {p6}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_29

    :cond_25
    invoke-static {p6}, Lcom/s1243808733/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    move-result-object p6

    :goto_29
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    :cond_31
    move-object p1, v3

    .line 90
    :goto_32
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p5

    if-eqz p5, :cond_45

    if-eqz v1, :cond_3d

    .line 91
    const-string p5, ","

    goto :goto_3f

    :cond_3d
    const-string p5, " //"

    :goto_3f
    const-string p6, " category-2"

    invoke-virtual {p5, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    :cond_45
    iget-object p5, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object p6, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5a

    const-string v1, " // "

    goto :goto_5c

    :cond_5a
    const-string v1, " "

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-interface {p5, p6, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p2, p4, :cond_6

    .line 186
    const-string p4, " // "

    goto :goto_8

    :cond_6
    const-string p4, " "

    .line 187
    :goto_8
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 189
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 6

    .line 73
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .registers 9

    .line 159
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2b

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " // padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_2b
    const/16 p5, 0xa

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_31
    if-ge v1, p1, :cond_59

    .line 169
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getValue(I)I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTarget(I)I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 176
    :cond_59
    const-string p1, "  default: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getDefaultTarget()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p4, p2, p3, p5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method
