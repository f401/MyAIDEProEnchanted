.class public interface abstract Lcom/bumptech/glide/request/target/Target;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/LifecycleListener;"
    }
.end annotation


# static fields
.field public static final SIZE_ORIGINAL:I = -0x80000000


# virtual methods
.method public abstract getRequest()Lcom/bumptech/glide/request/Request;
.end method

.method public abstract getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract setRequest(Lcom/bumptech/glide/request/Request;)V
.end method
