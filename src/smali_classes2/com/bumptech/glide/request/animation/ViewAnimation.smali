.class public Lcom/bumptech/glide/request/animation/ViewAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-interface {v1}, Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;->build()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
