.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
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
.field private animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

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
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    if-nez v0, :cond_16

    new-instance v0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    iget-object v1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    goto :goto_8
.end method
