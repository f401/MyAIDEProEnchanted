.class Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->bind(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

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

    .line 42
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
