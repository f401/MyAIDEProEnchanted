.class Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;)Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 572
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newproject_addcrashhandler"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
