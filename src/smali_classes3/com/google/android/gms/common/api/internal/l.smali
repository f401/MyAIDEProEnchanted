.class public abstract Lcom/google/android/gms/common/api/internal/l;
.super Ljava/lang/Object;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/internal/l;->j6:I

    return-void
.end method

.method private static DW(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->DW()Z

    move-result v1

    if-eqz v1, :cond_14

    instance-of v1, p0, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_14

    const-string v1, "TransactionTooLargeException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method static synthetic j6(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/l;->DW(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract j6(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public abstract j6(Lcom/google/android/gms/common/api/internal/b$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract j6(Lcom/google/android/gms/common/api/internal/i;Z)V
.end method

.method public abstract j6(Ljava/lang/RuntimeException;)V
.end method
