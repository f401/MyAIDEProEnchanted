.class public final synthetic Lcom/google/android/gms/internal/measurement/za;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Lcom/google/android/gms/internal/measurement/Aa;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/Aa<",
            "TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/Aa;->j6()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_11

    :catch_5
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/Aa;->j6()Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_11
    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
