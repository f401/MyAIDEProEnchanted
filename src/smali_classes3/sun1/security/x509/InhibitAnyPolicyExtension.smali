.class public Lsun1/security/x509/InhibitAnyPolicyExtension;
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


# static fields
.field public static AnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

.field private static final debug:Lsun1/security/util/Debug;


# instance fields
.field private skipCerts:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "certpath"

    invoke-static {v0}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/InhibitAnyPolicyExtension;->debug:Lsun1/security/util/Debug;

    :try_start_0
    new-instance v0, Lsun1/security/util/ObjectIdentifier;

    const-string v1, "2.5.29.32.0"

    invoke-direct {v0, v1}, Lsun1/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun1/security/x509/InhibitAnyPolicyExtension;->AnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    iput v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    :goto_0
    sget-object v0, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    return-void

    :cond_0
    iput p1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid value for skipCerts"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v4, 0x7fffffff

    const/4 v3, -0x1

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    iput v4, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    iget-byte v1, v0, Lsun1/security/util/DerValue;->tag:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getInteger()I

    move-result v0

    if-lt v0, v3, :cond_1

    if-ne v0, v3, :cond_0

    iput v4, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid value for skipCerts"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of InhibitAnyPolicy: null data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of InhibitAnyPolicy: data not integer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Criticality cannot be false for InhibitAnyPolicy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    return-void
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

    iget-object v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "InhibitAnyPolicy"

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

    const-string v1, "InhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun1/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
