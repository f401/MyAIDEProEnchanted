.class final Landroidj/support/v4/widget/SearchViewCompatHoneycomb$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$listener:Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    invoke-interface {v0}, Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;->onClose()Z

    move-result v0

    return v0
.end method
