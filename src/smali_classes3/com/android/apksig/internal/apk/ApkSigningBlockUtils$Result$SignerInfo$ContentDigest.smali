.class public Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDigest"
.end annotation


# instance fields
.field private final mSignatureAlgorithmId:I

.field private final mValue:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->mSignatureAlgorithmId:I

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->mValue:[B

    return-void
.end method


# virtual methods
.method public getSignatureAlgorithmId()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->mSignatureAlgorithmId:I

    return v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->mValue:[B

    return-object v0
.end method
