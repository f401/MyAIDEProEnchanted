.class public abstract Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method protected abstract j6()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->j6()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_7
    move-exception p2

    goto :goto_15

    :catch_9
    move-exception p2

    :try_start_a
    const-string v0, "DialogRedirect"

    const-string v1, "Failed to start resolution intent"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :goto_15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw p2
.end method
