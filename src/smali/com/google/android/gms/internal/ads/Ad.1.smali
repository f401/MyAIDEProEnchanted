.class final Lcom/google/android/gms/internal/ads/Ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/gd;

.field private final FH:Lcom/google/android/gms/internal/ads/Pl;

.field private final Hw:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Lcom/google/android/gms/internal/ads/ix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/gd;Lcom/google/android/gms/internal/ads/Pl;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ad;->j6:Lcom/google/android/gms/internal/ads/ix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ad;->DW:Lcom/google/android/gms/internal/ads/gd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ad;->FH:Lcom/google/android/gms/internal/ads/Pl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->Hw(Lcom/google/android/gms/internal/ads/rd;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ad;->j6:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ad;->DW:Lcom/google/android/gms/internal/ads/gd;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->FH:Lcom/google/android/gms/internal/ads/Pl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Pl;->j6()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
