.class public Lsun1/security/x509/BasicConstraintsExtension;
.super Lsun1/security/x509/Extension;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun1/security/x509/Extension;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ca:Z

.field private pathLen:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    const/4 v0, -0x1

    iput v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_60

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-nez v1, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    iget-byte v2, v1, Lsun1/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_48

    const v0, 0x7fffffff

    :goto_45
    iput v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_28

    :cond_48
    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_58

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v0

    goto :goto_45

    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of BasicConstraints"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of BasicConstraints"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Boolean;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    const/4 v0, -0x1

    iput v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    iput-boolean p2, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    iput p3, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/BasicConstraintsExtension;->encodeThis()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lsun1/security/x509/BasicConstraintsExtension;-><init>(Ljava/lang/Boolean;ZI)V

    return-void
.end method

.method private encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    if-nez v0, :cond_c

    iget v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    if-gez v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionValue:[B

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-boolean v2, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putBoolean(Z)V

    :cond_1d
    iget v2, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v2, :cond_24

    invoke-virtual {v1, v2}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    :cond_24
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionValue:[B

    goto :goto_b
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_14

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iget-boolean v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    iput-boolean v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/BasicConstraintsExtension;->encodeThis()V

    :cond_14
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "BasicConstraints"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "BasicConstraints:[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v0, :cond_64

    const-string v0, "  CA:true"

    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "  PathLen:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsun1/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    const-string v0, "  CA:false"

    goto :goto_25

    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "  PathLen: undefined\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51
.end method
