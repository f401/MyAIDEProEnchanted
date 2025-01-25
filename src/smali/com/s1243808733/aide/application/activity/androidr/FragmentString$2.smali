.class Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;
.super Ljava/lang/Object;
.source "FragmentString.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 61
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->search(Ljava/lang/String;)V

    return-void
.end method
