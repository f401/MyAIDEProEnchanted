.class final Lcom/google/android/gms/internal/measurement/u;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final Zo:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Lcom/google/android/gms/measurement/internal/zzcx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/measurement/internal/zzcx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u;->Zo:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u;->v5:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/m$c;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/u;->v5:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/m$c;-><init>(Lcom/google/android/gms/measurement/internal/zzcx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/e;->j6(Lcom/google/android/gms/internal/measurement/j;)V

    return-void
.end method
