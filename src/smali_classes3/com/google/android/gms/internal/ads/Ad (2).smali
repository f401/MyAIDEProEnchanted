.class final Lcom/google/android/gms/internal/ads/Ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
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
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/rd;->Hw(Lcom/google/android/gms/internal/ads/rd;)I

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "Starting reload."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ad;->Hw:Lcom/google/android/gms/internal/ads/rd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ad;->j6:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    :cond_26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ad;->DW:Lcom/google/android/gms/internal/ads/gd;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ad;->FH:Lcom/google/android/gms/internal/ads/Pl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Pl;->j6()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    monitor-exit p1

    return-void

    :catchall_37
    move-exception p2

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw p2
.end method
