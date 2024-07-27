.class final Lcom/google/android/gms/internal/measurement/H;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Ljava/lang/Object;

.field private final Zo:Ljava/lang/String;

.field private final gn:Z

.field private final u7:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/H;->u7:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/H;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/H;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/H;->VH:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/H;->gn:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/H;->u7:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/H;->v5:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/H;->Zo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/H;->VH:Ljava/lang/Object;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/H;->gn:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/e;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/ox;ZJ)V

    return-void
.end method
