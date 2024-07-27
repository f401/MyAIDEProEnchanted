.class final Lcom/google/android/gms/internal/measurement/G;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final EQ:Lcom/google/android/gms/internal/measurement/m;

.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/String;

.field private final gn:Landroid/os/Bundle;

.field private final tp:Z

.field private final u7:Z

.field private final v5:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/G;->EQ:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/G;->v5:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/G;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/G;->VH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/G;->gn:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/G;->u7:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/G;->tp:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/G;->v5:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/G;->EQ:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/G;->Zo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/G;->VH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/G;->gn:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/measurement/G;->u7:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/G;->tp:Z

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/e;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0
.end method
