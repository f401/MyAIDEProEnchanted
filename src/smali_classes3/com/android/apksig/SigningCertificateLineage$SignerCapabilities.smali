.class public Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/SigningCertificateLineage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities$Builder;
    }
.end annotation


# instance fields
.field private final mCallerConfiguredFlags:I

.field private final mFlags:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    iput p2, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mCallerConfiguredFlags:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/apksig/SigningCertificateLineage$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;-><init>(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->getFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mCallerConfiguredFlags:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)I
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    return v0
.end method

.method private getFlags()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    return v0
.end method


# virtual methods
.method public equals(Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;)Z
    .registers 4

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    iget v1, p1, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuth()Z
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstalledData()Z
    .registers 3

    iget v1, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    const/4 v0, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPermission()Z
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRollback()Z
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSharedUid()Z
    .registers 2

    iget v0, p0, Lcom/android/apksig/SigningCertificateLineage$SignerCapabilities;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
