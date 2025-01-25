.class Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->this$0:Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
