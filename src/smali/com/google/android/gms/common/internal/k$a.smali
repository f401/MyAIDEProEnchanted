.class public abstract Lcom/google/android/gms/common/internal/k$a;
.super Labcd/Dx;

# interfaces
.implements Lcom/google/android/gms/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/k;
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/k;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/k;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/k$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/k$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
