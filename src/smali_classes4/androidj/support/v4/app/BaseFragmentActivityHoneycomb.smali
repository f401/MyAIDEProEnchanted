.class abstract Landroidj/support/v4/app/BaseFragmentActivityHoneycomb;
.super Landroidj/support/v4/app/BaseFragmentActivityGingerbread;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/BaseFragmentActivityGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/BaseFragmentActivityHoneycomb;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_10

    invoke-super {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/BaseFragmentActivityGingerbread;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_10
    return-object v0
.end method
