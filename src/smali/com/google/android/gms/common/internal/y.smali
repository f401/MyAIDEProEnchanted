.class final Lcom/google/android/gms/common/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final j6:Lcom/google/android/gms/common/api/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/y;->j6:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/y;->j6:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/y;->j6:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f;->onConnectionSuspended(I)V

    return-void
.end method
