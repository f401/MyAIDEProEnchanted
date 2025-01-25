.class public abstract Lcom/android/apksig/internal/jar/SignatureFileWriter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeIndividualSection(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeIndividualSection(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/jar/Attributes;)V

    return-void
.end method

.method public static writeMainSection(Ljava/io/OutputStream;Ljava/util/jar/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    sget-object v1, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {p0, v1, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttribute(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/Attributes;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    invoke-static {p1}, Lcom/android/apksig/internal/jar/ManifestWriter;->getAttributesSortedByName(Ljava/util/jar/Attributes;)Ljava/util/SortedMap;

    move-result-object v0

    sget-object v1, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeAttributes(Ljava/io/OutputStream;Ljava/util/SortedMap;)V

    :cond_24
    invoke-static {p0}, Lcom/android/apksig/internal/jar/SignatureFileWriter;->writeSectionDelimiter(Ljava/io/OutputStream;)V

    return-void

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mandatory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attribute missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static writeSectionDelimiter(Ljava/io/OutputStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/jar/ManifestWriter;->writeSectionDelimiter(Ljava/io/OutputStream;)V

    return-void
.end method
