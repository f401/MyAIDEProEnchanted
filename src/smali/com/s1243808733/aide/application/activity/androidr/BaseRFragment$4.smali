.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$4;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$4;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$4;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
