.class public Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;
.super Ljava/lang/Object;
.source "AttributeFactory.java"


# static fields
.field public static final CTX_CLASS:I = 0x0

.field public static final CTX_CODE:I = 0x3

.field public static final CTX_COUNT:I = 0x4

.field public static final CTX_FIELD:I = 0x1

.field public static final CTX_METHOD:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 14

    if-eqz p1, :cond_a0

    if-ltz p2, :cond_98

    const/4 v1, 0x4

    if-ge p2, v1, :cond_98

    .line 82
    :try_start_7
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v3

    .line 84
    invoke-virtual {v2, p3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, p3, 0x2

    .line 85
    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v6

    .line 87
    invoke-interface {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/s1243808733/android/dx/rop/cst/CstString;
    :try_end_20
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_7 .. :try_end_20} :catch_5e

    if-eqz p4, :cond_4d

    .line 90
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    const/4 v4, 0x2

    invoke-interface {p4, v2, p3, v4, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-interface {p4, v2, v5, v1, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 96
    :cond_4d
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0
    :try_end_5b
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_22 .. :try_end_5b} :catch_5c

    return-object v0

    :catch_5c
    move-exception v0

    goto :goto_60

    :catch_5e
    move-exception v0

    const/4 v8, 0x0

    .line 99
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_7f

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_81

    :cond_7f
    const-string v2, ""

    :goto_81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 102
    throw v0

    .line 76
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_a0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 13

    .line 124
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p2

    .line 125
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v5

    .line 126
    new-instance p1, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/util/ByteArray;IILcom/s1243808733/android/dx/rop/cst/ConstantPool;)V

    if-eqz p6, :cond_19

    .line 129
    const-string p3, "attribute data"

    invoke-interface {p6, p2, p4, p5, p3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_19
    return-object p1
.end method
