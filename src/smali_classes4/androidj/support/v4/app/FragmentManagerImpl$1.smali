.class Landroidj/support/v4/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/FragmentManagerImpl;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl$1;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$1;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    return-void
.end method
