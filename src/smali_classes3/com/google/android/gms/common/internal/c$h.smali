.class public abstract Lcom/google/android/gms/common/internal/c$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Z

.field private final FH:Lcom/google/android/gms/common/internal/c;

.field private j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$h;->FH:Lcom/google/android/gms/common/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/c$h;->j6:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/c$h;->DW:Z

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$h;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->FH:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->zzf(Lcom/google/android/gms/common/internal/c;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->FH:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->zzf(Lcom/google/android/gms/common/internal/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected abstract FH()V
.end method

.method public final Hw()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->j6:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/c$h;->DW:Z

    if-eqz v1, :cond_30

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Callback proxy "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " being reused. This is not safe."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GmsClient"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_4b

    if-eqz v0, :cond_3c

    :try_start_33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/c$h;->j6(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$h;->FH()V

    throw v0

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$h;->FH()V

    :goto_3f
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_41
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/c$h;->DW:Z

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$h;->DW()V

    return-void

    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public final j6()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->j6:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected abstract j6(Ljava/lang/Object;)V
.end method
