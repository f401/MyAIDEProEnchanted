.class public final Lcom/google/android/gms/internal/ads/wv;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 2

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wv;->j6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/pu;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/pu;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
