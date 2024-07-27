.class Lcom/s1243808733/aide/AideMainActivity$100000004;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/s1243808733/util/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/util/Filter",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000004;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000004;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000004;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public accept(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 331
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    check-cast p1, Landroid/widget/TextView;

    .line 333
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge accept(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000004;->accept(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
