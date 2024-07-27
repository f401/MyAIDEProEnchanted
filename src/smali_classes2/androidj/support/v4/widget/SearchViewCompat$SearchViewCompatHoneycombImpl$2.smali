.class Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnCloseListener(Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->this$0:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;

    invoke-interface {v0}, Landroidj/support/v4/widget/SearchViewCompat$OnCloseListener;->onClose()Z

    move-result v0

    return v0
.end method
