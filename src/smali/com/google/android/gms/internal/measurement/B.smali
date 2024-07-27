.class final Lcom/google/android/gms/internal/measurement/B;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Ljava/lang/Object;

.field private final Zo:Ljava/lang/String;

.field private final gn:Ljava/lang/Object;

.field private final tp:Lcom/google/android/gms/internal/measurement/m;

.field private final u7:Ljava/lang/Object;

.field private final v5:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/B;->tp:Lcom/google/android/gms/internal/measurement/m;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/B;->v5:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/B;->Zo:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/B;->VH:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/B;->gn:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/B;->u7:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;Z)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/B;->tp:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/B;->v5:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/B;->Zo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/B;->VH:Ljava/lang/Object;

    invoke-static {v3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/B;->gn:Ljava/lang/Object;

    invoke-static {v4}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/B;->u7:Ljava/lang/Object;

    invoke-static {v5}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/e;->j6(ILjava/lang/String;Labcd/ox;Labcd/ox;Labcd/ox;)V

    return-void
.end method
