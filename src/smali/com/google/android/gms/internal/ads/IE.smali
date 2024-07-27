.class final Lcom/google/android/gms/internal/ads/IE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm",
        "<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/EE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/EE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/Qd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IE;->j6:Lcom/google/android/gms/internal/ads/EE;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/EE;->DW(Lcom/google/android/gms/internal/ads/Qd;)V

    return-void
.end method
