.class public Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mPrivateKey:Ljava/security/PrivateKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mCertificates:Ljava/util/List;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;
    .registers 6

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mPrivateKey:Ljava/security/PrivateKey;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mCertificates:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    return-object v0
.end method
