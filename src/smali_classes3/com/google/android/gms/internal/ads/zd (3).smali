.class final Lcom/google/android/gms/internal/ads/zd;
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

.field private final FH:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Lcom/google/android/gms/internal/ads/Ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zd;->FH:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zd;->DW:Lcom/google/android/gms/internal/ads/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zd;->FH:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_40

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    goto :goto_40

    :cond_1a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->FH:Lcom/google/android/gms/internal/ads/rd;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->FH:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/rd;->FH(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/sl;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zd;->DW:Lcom/google/android/gms/internal/ads/gd;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/sl;->j6(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zd;->DW:Lcom/google/android/gms/internal/ads/gd;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/Xm;->j6(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zd;->FH:Lcom/google/android/gms/internal/ads/rd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/Ld;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_40
    :goto_40
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p2

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p2
.end method
