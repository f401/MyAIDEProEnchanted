.class final Lcom/google/android/gms/internal/measurement/t;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final Zo:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t;->Zo:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t;->v5:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->Zo:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t;->v5:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/m$b;->DW:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/e;->DW(Ljava/lang/String;J)V

    return-void
.end method
