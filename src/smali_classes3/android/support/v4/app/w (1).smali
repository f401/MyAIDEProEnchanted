.class Landroid/support/v4/app/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/x$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/app/x$a;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/w;->j6:Landroid/support/v4/app/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/w;->j6:Landroid/support/v4/app/x$a;

    iget-object v0, v0, Landroid/support/v4/app/x$a;->DW:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
