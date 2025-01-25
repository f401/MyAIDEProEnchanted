.class Lcom/s1243808733/aide/AideMainActivity$9;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/s1243808733/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->adjutActionBarTitle(Ljava/lang/String;)V
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

.field final val$actionSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$9;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$9;->val$actionSubTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/View;)Z
    .registers 3

    .line 545
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 546
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$9;->val$actionSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .registers 2

    .line 541
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity$9;->accept(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
