.class Lcom/s1243808733/aide/AideMainActivity$5;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/s1243808733/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->Qq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/util/Filter<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$5;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/View;)Z
    .registers 3

    .line 332
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 333
    check-cast p1, Landroid/widget/TextView;

    .line 334
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .registers 2

    .line 328
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity$5;->accept(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
