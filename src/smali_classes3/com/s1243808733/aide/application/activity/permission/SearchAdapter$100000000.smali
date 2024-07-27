.class Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
