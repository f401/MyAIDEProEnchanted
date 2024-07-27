.class final Lcom/google/android/gms/internal/measurement/E;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final Zo:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/E;->Zo:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/E;->v5:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/E;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->Hw(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->v5:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/E;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnEventListener already registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/m$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->v5:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/m$d;-><init>(Lcom/google/android/gms/measurement/internal/zzcy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/m;->Hw(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/E;->v5:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->FH(Lcom/google/android/gms/internal/measurement/j;)V

    goto :goto_0
.end method
