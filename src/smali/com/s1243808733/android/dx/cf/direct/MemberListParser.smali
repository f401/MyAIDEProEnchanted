.class abstract Lcom/s1243808733/android/dx/cf/direct/MemberListParser;
.super Ljava/lang/Object;
.source "MemberListParser.java"


# instance fields
.field private final attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

.field private final cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

.field private final definer:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private endOffset:I

.field private observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

.field private final offset:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    if-eqz p4, :cond_0

    .line 76
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 77
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->definer:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 78
    iput p3, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->offset:I

    .line 79
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->endOffset:I

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse()V
    .locals 15

    const/4 v1, 0x0

    const/4 v11, 0x2

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->getAttributeContext()I

    move-result v8

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->getCount()I

    move-result v9

    .line 175
    iget v2, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->offset:I

    add-int/lit8 v3, v2, 0x2

    .line 177
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 178
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v10

    .line 180
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_0

    .line 181
    iget v5, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->offset:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "s_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-interface {v4, v2, v5, v11, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_3

    .line 187
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    add-int/lit8 v11, v3, 0x2

    .line 188
    invoke-virtual {v2, v11}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    add-int/lit8 v12, v3, 0x4

    .line 189
    invoke-virtual {v2, v12}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 190
    invoke-interface {v10, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-object v4, v0

    .line 191
    invoke-interface {v10, v5}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-object v5, v0

    .line 193
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v13

    .line 195
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v14

    .line 194
    invoke-interface {v1, v2, v3, v13, v14}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "s["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v2, v3, v14, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v13, 0x1

    invoke-interface {v1, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 199
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "access_flags: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanAccessFlags(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 199
    const/4 v14, 0x2

    invoke-interface {v1, v2, v3, v14, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 202
    const/4 v14, 0x2

    invoke-interface {v1, v2, v11, v14, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "descriptor: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    const/4 v13, 0x2

    invoke-interface {v1, v2, v12, v13, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 193
    :cond_1
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;

    iget-object v11, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    add-int/lit8 v3, v3, 0x6

    iget-object v12, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    invoke-direct {v1, v11, v8, v3, v12}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 212
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v3

    .line 214
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 216
    new-instance v11, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-direct {v11, v4, v5}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 217
    invoke-virtual {p0, v7, v6, v11, v1}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->set(IILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/cf/iface/Member;

    move-result-object v6

    .line 219
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_2

    .line 220
    const/4 v11, -0x1

    invoke-interface {v1, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 221
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "s["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v3, v12, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 223
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 231
    :goto_1
    new-instance v2, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 234
    throw v2

    .line 223
    :catch_1
    move-exception v1

    .line 227
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 229
    throw v1

    .line 238
    :cond_3
    iput v3, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->endOffset:I

    return-void

    .line 234
    :catch_2
    move-exception v1

    goto :goto_2

    .line 219
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected abstract getAttributeContext()I
.end method

.method protected final getCount()I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 119
    iget v1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->offset:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method protected final getDefiner()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->definer:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getEndOffset()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->parseIfNecessary()V

    .line 91
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->endOffset:I

    return v0
.end method

.method protected abstract humanAccessFlags(I)Ljava/lang/String;
.end method

.method protected abstract humanName()Ljava/lang/String;
.end method

.method protected final parseIfNecessary()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->endOffset:I

    if-gez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->parse()V

    :cond_0
    return-void
.end method

.method protected abstract set(IILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/cf/iface/Member;
.end method

.method public final setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/MemberListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
