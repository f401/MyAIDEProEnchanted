.class public Lsun1/security/x509/CertificateSubjectUniqueIdentity;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun1/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private id:Lsun1/security/x509/UniqueIdentity;


# direct methods
.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun1/security/x509/UniqueIdentity;

    invoke-direct {v0, p1}, Lsun1/security/x509/UniqueIdentity;-><init>(Lsun1/security/util/DerValue;)V

    iput-object v0, p0, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun1/security/x509/UniqueIdentity;

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun1/security/x509/UniqueIdentity;

    const/16 v2, -0x80

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun1/security/x509/UniqueIdentity;->encode(Lsun1/security/util/DerOutputStream;B)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Lsun1/security/x509/UniqueIdentity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun1/security/x509/UniqueIdentity;

    return-object v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "subjectID"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lsun1/security/x509/UniqueIdentity;

    if-eqz v0, :cond_19

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    check-cast p2, Lsun1/security/x509/UniqueIdentity;

    iput-object p2, p0, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun1/security/x509/UniqueIdentity;

    return-void

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type UniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun1/security/x509/UniqueIdentity;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {v0}, Lsun1/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
