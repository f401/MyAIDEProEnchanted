.class final Lcom/google/android/gms/internal/measurement/p;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Lcom/google/android/gms/internal/measurement/m$a;

.field private final Zo:Ljava/lang/String;

.field private final gn:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m$a;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p;->gn:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/p;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/p;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/p;->VH:Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method protected final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->VH:Lcom/google/android/gms/internal/measurement/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m$a;->J0(Landroid/os/Bundle;)V

    return-void
.end method

.method final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->gn:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/p;->Zo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/p;->VH:Lcom/google/android/gms/internal/measurement/m$a;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h;)V

    return-void
.end method
