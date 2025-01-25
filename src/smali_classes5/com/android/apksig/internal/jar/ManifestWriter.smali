.class public abstract Lcom/android/apksig/internal/jar/ManifestWriter;
.super Ljava/lang/Object;


# static fields
.field private static final CRLF:[B

.field private static final MAX_LINE_LENGTH:I = 0x46


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/apksig/internal/jar/ManifestWriter;->CRLF:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAttributesSortedByName(Ljava/util/jar/Attributes;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Attributes;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2d
    return-object v1
.end method

.method private static writeAttribute(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static writeAttribute(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttribute(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static writeAttributes(Ljava/io/OutputStream;Ljava/util/SortedMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttribute(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_24
    return-void
.end method

.method public static writeIndividualSection(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Name"

    invoke-static {p0, v0, p1}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttribute(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/jar/Attributes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Lcom/android/apksig/internal/jar/ManifestWriter;->getAttributesSortedByName(Ljava/util/jar/Attributes;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttributes(Ljava/io/OutputStream;Ljava/util/SortedMap;)V

    :cond_12
    invoke-static {p0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeSectionDelimiter(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v2, v4

    const/4 v0, 0x1

    move v3, v1

    :goto_a
    if-lez v2, :cond_28

    if-eqz v0, :cond_1b

    const/16 v0, 0x46

    :goto_10
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v2, v0

    add-int/2addr v3, v0

    move v0, v1

    goto :goto_a

    :cond_1b
    sget-object v0, Lcom/android/apksig/internal/jar/ManifestWriter;->CRLF:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x45

    goto :goto_10

    :cond_28
    sget-object v0, Lcom/android/apksig/internal/jar/ManifestWriter;->CRLF:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeMainSection(Ljava/io/OutputStream;Ljava/util/jar/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {p0, v1, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttribute(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/Attributes;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    invoke-static {p1}, Lcom/android/apksig/internal/jar/ManifestWriter;->getAttributesSortedByName(Ljava/util/jar/Attributes;)Ljava/util/SortedMap;

    move-result-object v0

    sget-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttributes(Ljava/io/OutputStream;Ljava/util/SortedMap;)V

    :cond_24
    invoke-static {p0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeSectionDelimiter(Ljava/io/OutputStream;)V

    return-void

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mandatory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attribute missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeSectionDelimiter(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/jar/ManifestWriter;->CRLF:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
