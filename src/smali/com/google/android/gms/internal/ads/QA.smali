.class final Lcom/google/android/gms/internal/ads/QA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/wH;

.field private final FH:Ljava/lang/Runnable;

.field private final j6:Lcom/google/android/gms/internal/ads/lE;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/QA;->DW:Lcom/google/android/gms/internal/ads/wH;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/QA;->FH:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->we()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->DW:Lcom/google/android/gms/internal/ads/wH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wH;->FH:Lcom/google/android/gms/internal/ads/db;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QA;->DW:Lcom/google/android/gms/internal/ads/wH;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/wH;->j6:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->DW:Lcom/google/android/gms/internal/ads/wH;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/wH;->Hw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->FH:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QA;->DW:Lcom/google/android/gms/internal/ads/wH;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/wH;->FH:Lcom/google/android/gms/internal/ads/db;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/db;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QA;->j6:Lcom/google/android/gms/internal/ads/lE;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->DW(Ljava/lang/String;)V

    goto :goto_2
.end method
