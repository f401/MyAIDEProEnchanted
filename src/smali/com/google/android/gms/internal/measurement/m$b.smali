.class abstract Lcom/google/android/gms/internal/measurement/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field final DW:J

.field private final FH:Z

.field private final Hw:Lcom/google/android/gms/internal/measurement/m;

.field final j6:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/m$b;-><init>(Lcom/google/android/gms/internal/measurement/m;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$b;->Hw:Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/m$b;->j6:J

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/m$b;->DW:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/m$b;->FH:Z

    return-void
.end method


# virtual methods
.method protected DW()V
    .registers 1

    return-void
.end method

.method abstract j6()V
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$b;->Hw:Lcom/google/android/gms/internal/measurement/m;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m$b;->DW()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m$b;->j6()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$b;->Hw:Lcom/google/android/gms/internal/measurement/m;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/m$b;->FH:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m$b;->DW()V

    goto :goto_0
.end method
