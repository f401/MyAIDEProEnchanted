.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
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
.field private final animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    return-void
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-interface {p2}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;->animate(Landroid/view/View;)V

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
