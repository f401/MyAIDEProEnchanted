.class final Lcom/google/android/gms/internal/measurement/o;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Landroid/os/Bundle;

.field private final Zo:Ljava/lang/String;

.field private final gn:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->gn:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o;->VH:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->gn:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o;->Zo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o;->VH:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e;->DW(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
