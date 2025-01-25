.class public Lsun1/security/x509/RFC822Name;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun1/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/16 v5, 0x40

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    if-ne v2, v1, :cond_6

    check-cast p1, Lsun1/security/x509/RFC822Name;

    invoke-virtual {p1}, Lsun1/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x0

    goto :goto_6

    :cond_29
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_37

    :cond_35
    const/4 v0, 0x3

    goto :goto_6

    :cond_37
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    :goto_3f
    const/4 v0, 0x2

    goto :goto_6

    :cond_41
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_35

    goto :goto_3f

    :cond_4e
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v0, :cond_35

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    :goto_62
    move v0, v1

    goto :goto_6

    :cond_64
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_35

    goto :goto_62
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/RFC822Name;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/RFC822Name;

    iget-object v0, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    iget-object v1, p1, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseName(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    :cond_29
    return-void

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFC822Name domain may not be just ."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFC822Name may not end with @"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFC822Name may not be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
