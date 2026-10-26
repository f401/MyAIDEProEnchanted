.class Lcom/s1243808733/aide/project/ProjectDialog$7;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$button1:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$7;->val$button1:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$7;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$7;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$7;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
