.class final synthetic Lcom/google/android/gms/internal/ads/Pd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/gd;

.field private final j6:Lcom/google/android/gms/internal/ads/Od;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Od;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pd;->j6:Lcom/google/android/gms/internal/ads/Od;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pd;->DW:Lcom/google/android/gms/internal/ads/gd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pd;->j6:Lcom/google/android/gms/internal/ads/Od;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pd;->DW:Lcom/google/android/gms/internal/ads/gd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Od;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ld;->j6(Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/sl;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sl;->j6(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/gd;->destroy()V

    return-void
.end method
