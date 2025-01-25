.class public final Lcom/google/android/gms/internal/ads/wH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/Ow;

.field public final FH:Lcom/google/android/gms/internal/ads/db;

.field public Hw:Z

.field public final j6:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/db;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wH;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wH;->j6:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wH;->DW:Lcom/google/android/gms/internal/ads/Ow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wH;->FH:Lcom/google/android/gms/internal/ads/db;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Ow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wH;->Hw:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wH;->j6:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wH;->DW:Lcom/google/android/gms/internal/ads/Ow;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wH;->FH:Lcom/google/android/gms/internal/ads/db;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/db;)Lcom/google/android/gms/internal/ads/wH;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/db;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/wH;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wH;-><init>(Lcom/google/android/gms/internal/ads/db;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/wH;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/Ow;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/wH;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/wH;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)V

    return-object v0
.end method
