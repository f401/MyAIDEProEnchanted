.class Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcreteAnimationFactory"
.end annotation


# instance fields
.field private final animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method
