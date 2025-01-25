.class Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$1;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 572
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "newproject_addcrashhandler"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
