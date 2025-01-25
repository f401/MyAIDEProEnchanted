.class public Lsun1/security/x509/PolicyConstraintsExtension;
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
.field private inhibit:I

.field private require:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, p2}, Lsun1/security/x509/PolicyConstraintsExtension;-><init>(Ljava/lang/Boolean;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    iput v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    iput p2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    iput p3, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/PolicyConstraintsExtension;->encodeThis()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, -0x1

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput v3, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    iput v3, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_81

    iget-object v0, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    :goto_26
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_2f

    :cond_2e
    return-void

    :cond_2f
    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_56

    iget v2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v2, v3, :cond_4e

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    goto :goto_26

    :cond_4e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate requireExplicitPolicyfound in the PolicyConstraintsExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun1/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_79

    iget v2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v2, v3, :cond_71

    invoke-virtual {v1, v4}, Lsun1/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    goto :goto_26

    :cond_71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate inhibitPolicyMappingfound in the PolicyConstraintsExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of PolicyConstraint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sequence tag missing for PolicyConstraint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeThis()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, -0x80

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v0, v4, :cond_10

    iget v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v0, v4, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    :goto_f
    return-void

    :cond_10
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    if-eq v2, v4, :cond_2f

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v3, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-static {v6, v5, v5}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_2f
    iget v2, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-eq v2, v4, :cond_45

    new-instance v2, Lsun1/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v3, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v2, v3}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    const/4 v3, 0x1

    invoke-static {v6, v5, v3}, Lsun1/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun1/security/util/DerOutputStream;->writeImplicit(BLsun1/security/util/DerOutputStream;)V

    :cond_45
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    goto :goto_f
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

    iget-object v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/PolicyConstraintsExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "PolicyConstraints"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PolicyConstraints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Require: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v0, v2, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "unspecified;"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\tInhibit: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v0, v2, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "unspecified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    goto :goto_2b

    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsun1/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_56
.end method
