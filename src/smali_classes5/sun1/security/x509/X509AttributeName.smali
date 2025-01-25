.class public Lsun1/security/x509/X509AttributeName;
.super Ljava/lang/Object;


# instance fields
.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lsun1/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_13

    iput-object p1, p0, Lsun1/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun1/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    goto :goto_12
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    return-object v0
.end method
