.class final Landroidj/support/v4/app/FragmentTransitionCompat21$1;
.super Landroid/transition/Transition$EpicenterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$1;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$1;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
