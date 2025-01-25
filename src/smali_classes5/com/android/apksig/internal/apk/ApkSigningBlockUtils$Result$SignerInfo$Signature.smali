.class public Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signature"
.end annotation


# instance fields
.field private final mAlgorithmId:I

.field private final mValue:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->mAlgorithmId:I

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->mValue:[B

    return-void
.end method


# virtual methods
.method public getAlgorithmId()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->mAlgorithmId:I

    return v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->mValue:[B

    return-object v0
.end method
