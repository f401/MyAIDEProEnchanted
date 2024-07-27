.class final Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$SourceStampBlock;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/stamp/SourceStampSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SourceStampBlock"
.end annotation


# instance fields
.field public signedDigests:Ljava/util/List;
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

.field public stampCertificate:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/internal/apk/stamp/SourceStampSigner$SourceStampBlock;-><init>()V

    return-void
.end method
