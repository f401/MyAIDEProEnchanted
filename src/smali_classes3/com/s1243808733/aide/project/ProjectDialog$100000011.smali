.class Lcom/s1243808733/aide/project/ProjectDialog$100000011;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final val$button1:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000011;->val$button1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000011;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000011;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000011;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
