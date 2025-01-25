.class final Lcom/google/android/gms/common/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final j6:Lcom/google/android/gms/common/api/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/z;->j6:Lcom/google/android/gms/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/z;->j6:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/g;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
