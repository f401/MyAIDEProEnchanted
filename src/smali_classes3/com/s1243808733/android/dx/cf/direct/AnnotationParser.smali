.class public final Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;
.super Ljava/lang/Object;
.source "AnnotationParser.java"


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

.field private final input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

.field private final observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

.field private parseCursor:I

.field private final pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .registers 7

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 87
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    .line 88
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    .line 89
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseCursor:I

    return-void
.end method

.method private changeIndent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    return-void
.end method

.method private parseAnnotation(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->requireLength(I)V

    .line 245
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 246
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 247
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 248
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "num_elements: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 255
    :cond_0
    new-instance v4, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-direct {v4, v3, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)V

    move v0, v1

    .line 257
    :goto_0
    if-lt v0, v2, :cond_1

    .line 271
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->setImmutable()V

    .line 272
    return-object v4

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v3, :cond_2

    .line 259
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "elements["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 260
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseElement()Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    move-result-object v3

    .line 264
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->add(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)V

    .line 266
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v3, :cond_3

    .line 267
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 257
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAnnotations(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "num_annotations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 215
    :cond_0
    new-instance v3, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    invoke-direct {v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;-><init>()V

    move v0, v1

    .line 217
    :goto_0
    if-lt v0, v2, :cond_1

    .line 231
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->setImmutable()V

    .line 232
    return-object v3

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_2

    .line 219
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "annotations["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 220
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 223
    :cond_2
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotation(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v4

    .line 224
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->add(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    .line 226
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAnnotationsList(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedByte()I

    move-result v2

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "num_parameters: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 180
    :cond_0
    new-instance v3, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;-><init>(I)V

    move v0, v1

    .line 182
    :goto_0
    if-lt v0, v2, :cond_1

    .line 196
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->setImmutable()V

    .line 197
    return-object v3

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_2

    .line 184
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "parameter_annotations["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 185
    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 188
    :cond_2
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotations(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v0, v4}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->set(ILcom/s1243808733/android/dx/rop/annotation/Annotations;)V

    .line 191
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_3

    .line 192
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 426
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_0

    .line 427
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v1

    .line 430
    :goto_0
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "constant_value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 433
    :cond_0
    return-object v0

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseElement()Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->requireLength(I)V

    .line 283
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 286
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "element_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 288
    const/4 v1, 0x0

    const-string v2, "value: "

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 289
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v2, :cond_1

    .line 295
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 298
    :cond_1
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v2
.end method

.method private parseValue()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x2

    .line 307
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedByte()I

    move-result v0

    .line 309
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v2, :cond_0

    .line 310
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 314
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 410
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown annotation tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :sswitch_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 317
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstByte;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 320
    :sswitch_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 321
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    .line 322
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstChar;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstChar;

    move-result-object v0

    goto :goto_0

    .line 325
    :sswitch_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    goto :goto_0

    .line 329
    :sswitch_3
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    goto :goto_0

    .line 333
    :sswitch_4
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    goto :goto_0

    .line 337
    :sswitch_5
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    goto :goto_0

    .line 341
    :sswitch_6
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 342
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstShort;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstShort;

    move-result-object v0

    goto :goto_0

    .line 345
    :sswitch_7
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 346
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    move-result-object v0

    goto :goto_0

    .line 349
    :sswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 351
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 353
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "class_info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 357
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    goto/16 :goto_0

    .line 360
    :sswitch_9
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto/16 :goto_0

    .line 363
    :sswitch_a
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->requireLength(I)V

    .line 365
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 367
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 368
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 370
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v2, :cond_2

    .line 371
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "type_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 372
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "const_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 375
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-direct {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 378
    :sswitch_b
    sget-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotation(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 380
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstAnnotation;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    goto/16 :goto_0

    .line 383
    :sswitch_c
    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->requireLength(I)V

    .line 385
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 386
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    .line 388
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "num_values: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 390
    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    :cond_3
    move v0, v1

    .line 393
    :goto_1
    if-lt v0, v2, :cond_5

    .line 402
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_4

    .line 403
    invoke-direct {p0, v8}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 406
    :cond_4
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 407
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    goto/16 :goto_0

    .line 394
    :cond_5
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_6

    .line 395
    invoke-direct {p0, v8}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 396
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "element_value["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parsed(ILjava/lang/String;)V

    .line 397
    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->changeIndent(I)V

    .line 399
    :cond_6
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_6
        0x5a -> :sswitch_7
        0x5b -> :sswitch_c
        0x63 -> :sswitch_8
        0x65 -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch
.end method

.method private parsed(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget v2, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseCursor:I

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 458
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseCursor:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseCursor:I

    return-void
.end method

.method private requireLength(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->available()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 444
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "truncated annotation attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 5

    .line 149
    :try_start_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotations(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    :cond_0
    return-object v0
.end method

.method public parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 5

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationsList(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 137
    :cond_0
    return-object v0
.end method

.method public parseValueAttribute()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 4

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->input:Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_0
    return-object v0
.end method
