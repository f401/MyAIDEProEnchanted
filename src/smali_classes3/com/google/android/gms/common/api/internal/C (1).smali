.class abstract Lcom/google/android/gms/common/api/internal/C;
.super Lcom/google/android/gms/common/api/internal/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/v;"
    }
.end annotation


# instance fields
.field protected final DW:Labcd/Zx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZx<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILabcd/Zx;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LZx<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/v;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/C;->DW:Labcd/Zx;

    return-void
.end method


# virtual methods
.method protected abstract Hw(Lcom/google/android/gms/common/api/internal/b$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)V"
        }
    .end annotation
.end method

.method public j6(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/C;->DW:Labcd/Zx;

    new-instance v1, Lcom/google/android/gms/common/api/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Labcd/Zx;->DW(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/api/internal/b$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/C;->Hw(Lcom/google/android/gms/common/api/internal/b$a;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/C;->j6(Ljava/lang/RuntimeException;)V

    return-void

    :catch_9
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->j6(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/C;->j6(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_12
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->j6(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/C;->j6(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public j6(Ljava/lang/RuntimeException;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/C;->DW:Labcd/Zx;

    invoke-virtual {v0, p1}, Labcd/Zx;->DW(Ljava/lang/Exception;)Z

    return-void
.end method
