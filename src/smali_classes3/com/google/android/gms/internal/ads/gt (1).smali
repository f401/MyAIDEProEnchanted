.class final Lcom/google/android/gms/internal/ads/gt;
.super Ljava/lang/Object;


# direct methods
.method public static j6()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.Application"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    goto :goto_a

    :catch_9
    move-exception v1

    :goto_a
    return v0
.end method
