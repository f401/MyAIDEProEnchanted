.class final Lcom/google/android/gms/internal/measurement/r;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final Zo:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r;->Zo:Lcom/google/android/gms/internal/measurement/m;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/r;->v5:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/r;->v5:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e;->j6(ZJ)V

    return-void
.end method
