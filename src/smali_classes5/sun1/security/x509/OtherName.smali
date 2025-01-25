.class public Lsun1/security/x509/OtherName;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/GeneralNameInterface;


# instance fields
.field private gni:Lsun1/security/x509/GeneralNameInterface;

.field private myhash:I

.field private name:Ljava/lang/String;

.field private nameValue:[B

.field private oid:Lsun1/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/OtherName;->nameValue:[B

    iput-object v0, p0, Lsun1/security/x509/OtherName;->gni:Lsun1/security/x509/GeneralNameInterface;

    const/4 v0, -0x1

    iput v0, p0, Lsun1/security/x509/OtherName;->myhash:I

    invoke-virtual {p1}, Lsun1/security/util/DerValue;->toDerInputStream()Lsun1/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/OtherName;->nameValue:[B

    iget-object v1, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-direct {p0, v1, v0}, Lsun1/security/x509/OtherName;->getGNI(Lsun1/security/util/ObjectIdentifier;[B)Lsun1/security/x509/GeneralNameInterface;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/OtherName;->gni:Lsun1/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lsun1/security/x509/OtherName;->name:Ljava/lang/String;

    return-void

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized ObjectIdentifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun1/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method private getGNI(Lsun1/security/util/ObjectIdentifier;[B)Lsun1/security/x509/GeneralNameInterface;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lsun1/security/x509/OIDMap;->getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/GeneralNameInterface;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_7

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiation error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .registers 4

    if-nez p1, :cond_4

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-interface {p1}, Lsun1/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing, widening, and matching are not supported for OtherName."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/OtherName;->gni:Lsun1/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lsun1/security/x509/GeneralNameInterface;->encode(Lsun1/security/util/DerOutputStream;)V

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    const/16 v1, -0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v1

    iget-object v2, p0, Lsun1/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0, v1, v2}, Lsun1/security/util/DerOutputStream;->write(B[B)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/OtherName;

    if-eqz v0, :cond_24

    check-cast p1, Lsun1/security/x509/OtherName;

    iget-object v0, p1, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_14
    iget-object v0, p1, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    iget-object v1, p1, Lsun1/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/OtherName;->getGNI(Lsun1/security/util/ObjectIdentifier;[B)Lsun1/security/x509/GeneralNameInterface;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_31

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-interface {v0, p0}, Lsun1/security/x509/GeneralNameInterface;->constrains(Lsun1/security/x509/GeneralNameInterface;)I
    :try_end_21
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1e .. :try_end_21} :catch_2f

    move-result v0

    if-eqz v0, :cond_2

    :cond_24
    :goto_24
    const/4 v0, 0x0

    goto :goto_3

    :cond_26
    iget-object v0, p0, Lsun1/security/x509/OtherName;->nameValue:[B

    iget-object v1, p1, Lsun1/security/x509/OtherName;->nameValue:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_3

    :catch_2f
    move-exception v0

    goto :goto_24

    :catch_31
    move-exception v0

    goto :goto_24
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lsun1/security/x509/OtherName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lsun1/security/x509/OtherName;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun1/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun1/security/x509/OtherName;->myhash:I

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lsun1/security/x509/OtherName;->nameValue:[B

    array-length v2, v1

    if-lt v0, v2, :cond_18

    :cond_15
    iget v0, p0, Lsun1/security/x509/OtherName;->myhash:I

    return v0

    :cond_18
    iget v2, p0, Lsun1/security/x509/OtherName;->myhash:I

    aget-byte v1, v1, v0

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    iput v1, p0, Lsun1/security/x509/OtherName;->myhash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Other-Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/OtherName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
