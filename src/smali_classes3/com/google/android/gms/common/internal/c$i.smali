.class public final Lcom/google/android/gms/common/internal/c$i;
.super Lcom/google/android/gms/common/internal/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private final DW:I

.field private j6:Lcom/google/android/gms/common/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/m$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    iput p2, p0, Lcom/google/android/gms/common/internal/c$i;->DW:I

    return-void
.end method


# virtual methods
.method public final FH(ILandroid/os/Bundle;)V
    .registers 4

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final j6(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    iget v1, p0, Lcom/google/android/gms/common/internal/c$i;->DW:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/c;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    return-void
.end method

.method public final j6(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzb;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->j6:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/zzb;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzb;->j6:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c$i;->j6(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
