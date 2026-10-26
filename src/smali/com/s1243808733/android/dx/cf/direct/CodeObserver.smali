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
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 60
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 61
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private header(I)Ljava/lang/String;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 216
    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private visitLiteralDouble(IIIJ)V
    .locals 6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " // "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {p4, p5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 306
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private visitLiteralFloat(IIII)V
    .locals 5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " // "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 288
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private visitLiteralInt(IIII)V
    .locals 6

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 237
    const-string v0, " // "

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 241
    if-eq p3, v2, :cond_0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-interface {v2, v3, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 237
    :cond_1
    const-string v0, " "

    goto :goto_0

    .line 241
    :cond_2
    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 246
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private visitLiteralLong(IIIJ)V
    .locals 6

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 264
    const-string v0, " // "

    move-object v1, v0

    :goto_0
    if-ne p3, v2, :cond_1

    long-to-int v0, p4

    .line 268
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-interface {v2, v3, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 264
    :cond_0
    const-string v0, " #"

    move-object v1, v0

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p4, p5}, Lcom/s1243808733/android/dx/util/Hex;->s8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getPreviousOffset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setPreviousOffset(I)V
    .locals 0

    return-void
.end method

.method public visitBranch(IIII)V
    .locals 5

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    .line 150
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .locals 6

    .line 103
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 142
    :goto_0
    return-void

    .line 109
    :cond_0
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralInt(IIII)V

    goto :goto_0

    .line 114
    :cond_1
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    if-eqz v0, :cond_2

    .line 115
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    .line 116
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->getValue()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralLong(IIIJ)V

    goto :goto_0

    .line 120
    :cond_2
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_3

    .line 121
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    .line 122
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getIntBits()I

    move-result v0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralFloat(IIII)V

    goto :goto_0

    .line 126
    :cond_3
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_4

    .line 127
    check-cast p4, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    .line 128
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->getLongBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->visitLiteralDouble(IIIJ)V

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_6

    .line 135
    const/16 v0, 0xc5

    if-ne p1, v0, :cond_5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :cond_6
    const-string v0, ""

    goto :goto_1
.end method

.method public visitInvalid(III)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .locals 8

    const/4 v5, 0x3

    const/4 v0, 0x1

    if-gt p3, v5, :cond_1

    .line 80
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-ne p3, v0, :cond_2

    .line 84
    :goto_1
    const-string v2, ""

    const/16 v1, 0x84

    if-ne p1, v1, :cond_4

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, ", #"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gt p3, v5, :cond_3

    .line 86
    invoke-static {p6}, Lcom/s1243808733/android/dx/util/Hex;->s1(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_3
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_5

    .line 91
    const-string v2, ","

    :goto_4
    const-string v4, " category-2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string v0, " // "

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-interface {v4, v5, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 80
    :cond_1
    invoke-static {p4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {p6}, Lcom/s1243808733/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 91
    :cond_5
    const-string v2, " //"

    goto :goto_4

    .line 95
    :cond_6
    const-string v0, " "

    goto :goto_5
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 186
    const-string v0, " // "

    .line 187
    :goto_0
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-interface {v2, v3, p1, p2, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void

    .line 186
    :cond_0
    const-string v0, " "

    goto :goto_0
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .locals 5

    const/16 v4, 0xa

    .line 159
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x14

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->header(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " // padding: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getValue(I)I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTarget(I)I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "  default: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getDefaultTarget()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    return-void
.end method
