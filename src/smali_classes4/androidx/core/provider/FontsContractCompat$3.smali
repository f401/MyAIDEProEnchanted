.class final Landroidx/core/provider/FontsContractCompat$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback",
        "<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .registers 6

    sget-object v1, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    iget-object v2, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_11

    monitor-exit v1

    :cond_10
    return-void

    :cond_11
    sget-object v2, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    iget-object v3, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2e

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v1, p1}, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1b

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontsContractCompat$3;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
