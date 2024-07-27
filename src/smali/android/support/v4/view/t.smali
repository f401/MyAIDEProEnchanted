.class Landroid/support/v4/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/s$f;->j6(Landroid/view/View;Landroid/support/v4/view/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/v4/view/s$f;

.field final j6:Landroid/support/v4/view/n;


# direct methods
.method constructor <init>(Landroid/support/v4/view/s$f;Landroid/support/v4/view/n;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/view/t;->DW:Landroid/support/v4/view/s$f;

    iput-object p2, p0, Landroid/support/v4/view/t;->j6:Landroid/support/v4/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    invoke-static {p2}, Landroid/support/v4/view/B;->j6(Ljava/lang/Object;)Landroid/support/v4/view/B;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/t;->j6:Landroid/support/v4/view/n;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/n;->j6(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/B;->j6(Landroid/support/v4/view/B;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
