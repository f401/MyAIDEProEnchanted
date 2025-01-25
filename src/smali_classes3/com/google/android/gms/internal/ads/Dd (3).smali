.class final Lcom/google/android/gms/internal/ads/Dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm<",
        "Lcom/google/android/gms/internal/ads/gd;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Lcom/google/android/gms/internal/ads/Ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v1

    if-eq v0, v1, :cond_2d

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->v5()V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dd;->DW:Lcom/google/android/gms/internal/ads/rd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/Ld;

    monitor-exit p1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method
