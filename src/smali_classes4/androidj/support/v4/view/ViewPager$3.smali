.class Landroidj/support/v4/view/ViewPager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager$3;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$3;->this$0:Landroidj/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->setScrollState(I)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$3;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->populate()V

    return-void
.end method
