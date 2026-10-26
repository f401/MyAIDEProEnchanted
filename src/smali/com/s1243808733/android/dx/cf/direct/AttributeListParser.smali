.class final Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;
.super Ljava/lang/Object;
.source "AttributeListParser.java"


# instance fields
.field private final attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

.field private final cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

.field private final context:I

.field private endOffset:I

.field private final list:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

.field private observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

.field private final offset:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 72
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 73
    iput p2, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->context:I

    .line 74
    iput p3, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->offset:I

    .line 75
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    .line 76
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->list:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->endOffset:I

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse()V
    .locals 8

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->list:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v2

    .line 124
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->offset:I

    add-int/lit8 v0, v0, 0x2

    .line 126
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    .line 128
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_0

    .line 129
    iget v5, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->offset:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "attributes_count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    const/4 v7, 0x2

    invoke-interface {v4, v3, v5, v7, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_3

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_1

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nattributes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v0, v6, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->cf:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    iget v6, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->context:I

    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    .line 142
    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;->parse(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v4

    .line 144
    invoke-interface {v4}, Lcom/s1243808733/android/dx/cf/iface/Attribute;->byteLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 145
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->list:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    invoke-virtual {v5, v1, v4}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->set(ILcom/s1243808733/android/dx/cf/iface/Attribute;)V

    .line 147
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v4, :cond_2

    .line 148
    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 149
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end attributes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v0, v6, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    new-instance v2, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 158
    throw v2

    :catch_1
    move-exception v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 162
    :cond_3
    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->endOffset:I

    return-void
.end method

.method private parseIfNecessary()V
    .locals 1

    .line 114
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->endOffset:I

    if-gez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->parse()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->parseIfNecessary()V

    .line 97
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->endOffset:I

    return v0
.end method

.method public getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->parseIfNecessary()V

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->list:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    return-object v0
.end method

.method public setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
