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
        "Lcom/s1243808733/util/Filter",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field final val$actionSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/lang/String;)V
    .locals 0
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
    .locals 2

    .line 545
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 546
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$9;->val$actionSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 1

    .line 541
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity$9;->accept(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
