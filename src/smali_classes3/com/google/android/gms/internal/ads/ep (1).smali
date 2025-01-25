.class public final Lcom/google/android/gms/internal/ads/ep;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/ip;",
        ":",
        "Lcom/google/android/gms/internal/ads/qp;",
        ":",
        "Lcom/google/android/gms/internal/ads/sp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/hp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ip;Lcom/google/android/gms/internal/ads/hp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/hp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ep;->j6:Lcom/google/android/gms/internal/ads/hp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ep;->DW:Lcom/google/android/gms/internal/ads/ip;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/ep;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ")",
            "Lcom/google/android/gms/internal/ads/ep<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ep;

    new-instance v1, Lcom/google/android/gms/internal/ads/gp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/gp;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ep;-><init>(Lcom/google/android/gms/internal/ads/ip;Lcom/google/android/gms/internal/ads/hp;)V

    return-object v0
.end method
