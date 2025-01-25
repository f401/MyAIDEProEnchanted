.class public Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;
    }
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
.method private constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V
    .registers 5
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

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mPrivateKey:Ljava/security/PrivateKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
