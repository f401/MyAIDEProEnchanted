.class final Lcom/google/common/util/concurrent/Striped$4;
.super Ljava/lang/Object;
.source "Striped.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Striped;->lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/concurrent/Semaphore;",
        ">;"
    }
.end annotation


# instance fields
.field final val$permits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 268
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$4;->val$permits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 268
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$4;->get()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Semaphore;
    .registers 4

    .line 271
    new-instance v0, Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/google/common/util/concurrent/Striped$4;->val$permits:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0
.end method
