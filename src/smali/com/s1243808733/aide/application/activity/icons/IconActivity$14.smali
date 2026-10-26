.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

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

    .line 754
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
