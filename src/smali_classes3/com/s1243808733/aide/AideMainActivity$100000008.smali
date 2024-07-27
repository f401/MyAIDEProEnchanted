.class Lcom/s1243808733/aide/AideMainActivity$100000008;
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

.field private final val$actionSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000008;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000008;->val$actionSubTitle:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000008;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000008;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public accept(Landroid/view/View;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 544
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 545
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$100000008;->val$actionSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge accept(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000008;->accept(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
