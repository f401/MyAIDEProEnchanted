.class public Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;,
        Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.field private glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    if-nez p2, :cond_9

    :cond_4
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    if-nez v0, :cond_16

    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimation;

    iget-object v1, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->glideAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    goto :goto_8
.end method
