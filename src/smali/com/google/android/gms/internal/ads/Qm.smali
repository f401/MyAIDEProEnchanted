.class public final Lcom/google/android/gms/internal/ads/Qm;
.super Lcom/google/android/gms/internal/ads/Rm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/Rm",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final VH:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qm;->VH:Ljava/lang/Object;

    return-void
.end method

.method public static FH(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Qm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/Qm",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Qm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Qm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qm;->VH:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method
