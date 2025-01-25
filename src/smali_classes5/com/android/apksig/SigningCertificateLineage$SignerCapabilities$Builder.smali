.class public Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/SigningCertificateLineage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallerConfiguredFlags:I

.field private mFlags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/apksig/SigningCertificateLineage;->access$100()I

    move-result v0

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;
    .registers 5

    new-instance v0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;

    iget v1, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    iget v2, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;-><init>(IILcom/android/apksig/SigningCertificateLineage$1;)V

    return-object v0
.end method

.method public setAuth(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 3

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_c
    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0

    :cond_f
    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_c
.end method

.method public setCallerConfiguredCapabilities(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 6

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    invoke-static {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$200(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v1

    invoke-static {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$300(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v2

    invoke-static {p1}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->access$200(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I

    move-result v3

    and-int/2addr v2, v3

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0
.end method

.method public setInstalledData(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 3

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    :goto_c
    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0

    :cond_f
    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_c
.end method

.method public setPermission(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 3

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    :goto_c
    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0

    :cond_f
    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_c
.end method

.method public setRollback(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 3

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    :goto_c
    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0

    :cond_f
    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_c
.end method

.method public setSharedUid(Z)Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    .registers 3

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mCallerConfiguredFlags:I

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    :goto_c
    iput v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    return-object p0

    :cond_f
    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_c
.end method
