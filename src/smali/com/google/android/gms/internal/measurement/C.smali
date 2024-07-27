.class final Lcom/google/android/gms/internal/measurement/C;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Lcom/google/android/gms/internal/measurement/m;

.field private final Zo:Lcom/google/android/gms/internal/measurement/m$a;

.field private final v5:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/m$a;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/C;->VH:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/C;->v5:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/C;->Zo:Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method protected final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/C;->Zo:Lcom/google/android/gms/internal/measurement/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m$a;->J0(Landroid/os/Bundle;)V

    return-void
.end method

.method final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/C;->VH:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/C;->v5:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/C;->Zo:Lcom/google/android/gms/internal/measurement/m$a;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/e;->j6(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/h;J)V

    return-void
.end method
