.class final Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Signer"
.end annotation


# instance fields
.field public maxSdkVersion:I

.field public minSdkVersion:I

.field public publicKey:[B

.field public signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public signedData:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;-><init>()V

    return-void
.end method
