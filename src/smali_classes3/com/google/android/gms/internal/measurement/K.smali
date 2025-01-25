.class final Lcom/google/android/gms/internal/measurement/K;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final Zo:Lcom/google/android/gms/internal/measurement/m$e;

.field private final v5:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/K;->Zo:Lcom/google/android/gms/internal/measurement/m$e;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/K;->v5:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/K;->Zo:Lcom/google/android/gms/internal/measurement/m$e;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/K;->v5:Landroid/app/Activity;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/m$b;->DW:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e;->FH(Labcd/ox;J)V

    return-void
.end method
