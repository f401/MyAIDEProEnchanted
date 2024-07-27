.class public Lsun1/security/x509/UniqueIdentity;
.super Ljava/lang/Object;


# instance fields
.field private id:Lsun1/security/util/BitArray;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun1/security/util/DerValue;->getUnalignedBitString(Z)Lsun1/security/util/BitArray;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/UniqueIdentity;->id:Lsun1/security/util/BitArray;

    return-void
.end method


# virtual methods
.method public encode(Lsun1/security/util/DerOutputStream;B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/UniqueIdentity;->id:Lsun1/security/util/BitArray;

    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lsun1/security/x509/UniqueIdentity;->id:Lsun1/security/util/BitArray;

    invoke-virtual {v2}, Lsun1/security/util/BitArray;->length()I

    move-result v2

    invoke-virtual {p1, p2}, Lsun1/security/util/DerOutputStream;->write(I)V

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lsun1/security/util/DerOutputStream;->putLength(I)V

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lsun1/security/util/DerOutputStream;->write(I)V

    invoke-virtual {p1, v0}, Lsun1/security/util/DerOutputStream;->write([B)V

    return-void
.end method

.method public getId()[Z
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/UniqueIdentity;->id:Lsun1/security/util/BitArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lsun1/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniqueIdentity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/UniqueIdentity;->id:Lsun1/security/util/BitArray;

    invoke-virtual {v1}, Lsun1/security/util/BitArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
