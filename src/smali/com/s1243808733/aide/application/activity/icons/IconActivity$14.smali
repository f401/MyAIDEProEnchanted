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
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

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

    .line 754
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->search(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
