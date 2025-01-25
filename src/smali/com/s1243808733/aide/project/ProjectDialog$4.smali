.class Lcom/s1243808733/aide/project/ProjectDialog$4;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/adapter/TemplateAdapter;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 7

    .line 213
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    invoke-virtual {p1, p3, p4}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object p1

    .line 214
    iget-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/s1243808733/aide/project/ProjectDialog;->-$$Nest$smcreateProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V

    .line 215
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method
