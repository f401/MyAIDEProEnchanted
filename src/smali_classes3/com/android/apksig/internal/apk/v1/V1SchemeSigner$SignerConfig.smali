.class public Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerConfig"
.end annotation


# instance fields
.field public certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public privateKey:Ljava/security/PrivateKey;

.field public signatureDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
