.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 247
    sget-boolean v1, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    if-eqz v1, :cond_6

    .line 265
    :cond_5
    :goto_5
    return-object v0

    .line 252
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_13

    move-result-object v1

    .line 256
    if-eqz v1, :cond_5

    .line 259
    :try_start_c
    const-string v2, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_1e

    move-result-object v0

    goto :goto_5

    .line 253
    :catch_13
    move-exception v1

    .line 254
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Not allowed to access system class loader."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_5

    .line 260
    :catch_1e
    move-exception v1

    goto :goto_5
.end method
