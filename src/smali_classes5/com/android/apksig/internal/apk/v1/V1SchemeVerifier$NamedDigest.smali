.class public Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedDigest"
.end annotation


# instance fields
.field public final digest:[B

.field public final jcaDigestAlgorithm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLcom/android/apksig/internal/apk/v1/V1SchemeVerifier$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
