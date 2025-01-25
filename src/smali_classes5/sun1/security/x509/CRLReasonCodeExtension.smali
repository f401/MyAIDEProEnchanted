.class public Lsun1/security/x509/CRLReasonCodeExtension;
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
.field private reasonCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun1/security/x509/CRLReasonCodeExtension;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    new-instance v0, Lsun1/security/util/DerValue;

    iget-object v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getEnumerated()I

    move-result v0

    iput v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v0, Lsun1/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    iput-boolean p1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->critical:Z

    iput p2, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {p0}, Lsun1/security/x509/CRLReasonCodeExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-virtual {v0, v1}, Lsun1/security/util/DerOutputStream;->putEnumerated(I)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    goto :goto_7
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

    iget-object v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    if-nez v1, :cond_13

    sget-object v1, Lsun1/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun1/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->extensionId:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->critical:Z

    invoke-direct {p0}, Lsun1/security/x509/CRLReasonCodeExtension;->encodeThis()V

    :cond_13
    invoke-super {p0, v0}, Lsun1/security/x509/Extension;->encode(Lsun1/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "CRLReasonCode"

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

    const-string v1, "    Reason Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    packed-switch v0, :pswitch_data_b0

    :pswitch_1b  #0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Unrecognized reason code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun1/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_38  #0xa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AA Compromise"

    goto :goto_30

    :pswitch_44  #0x9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Privilege Withdrawn"

    goto :goto_30

    :pswitch_50  #0x8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Remove from CRL"

    goto :goto_30

    :pswitch_5c  #0x6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Certificate Hold"

    goto :goto_30

    :pswitch_68  #0x5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Cessation Of Operation"

    goto :goto_30

    :pswitch_74  #0x4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Superseded"

    goto :goto_30

    :pswitch_80  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Affiliation Changed"

    goto :goto_30

    :pswitch_8c  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CA Compromise"

    goto :goto_30

    :pswitch_98  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Key Compromise"

    goto :goto_30

    :pswitch_a4  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Unspecified"

    goto :goto_30

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a4  #00000000
        :pswitch_98  #00000001
        :pswitch_8c  #00000002
        :pswitch_80  #00000003
        :pswitch_74  #00000004
        :pswitch_68  #00000005
        :pswitch_5c  #00000006
        :pswitch_1b  #00000007
        :pswitch_50  #00000008
        :pswitch_44  #00000009
        :pswitch_38  #0000000a
    .end packed-switch
.end method
