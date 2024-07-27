.class Lcom/s1243808733/aide/project/ProjectDialog$100000008;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

.field private final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/adapter/TemplateAdapter;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$adapter:Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    invoke-virtual {v0, p3, p4}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/aide/project/ProjectDialog;->access$1000030(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V

    .line 215
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    const/4 v0, 0x0

    return v0
.end method
