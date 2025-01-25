.class final Lcom/google/android/gms/internal/measurement/q;
.super Lcom/google/android/gms/internal/measurement/m$b;


# instance fields
.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/String;

.field private final gn:Lcom/google/android/gms/internal/measurement/m;

.field private final v5:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q;->gn:Lcom/google/android/gms/internal/measurement/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/q;->v5:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/q;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/q;->VH:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->gn:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->v5:Landroid/app/Activity;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/q;->Zo:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/q;->VH:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/e;->j6(Labcd/ox;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
