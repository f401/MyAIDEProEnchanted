.class public Lcom/s1243808733/aide/FileTabListener;
.super Ljava/lang/Object;
.source "FileTabListener.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# static fields
.field public static sFileTabListener:Lcom/s1243808733/aide/FileTabListener;


# instance fields
.field final _tabListener:Landroid/app/ActionBar$TabListener;

.field final activity:Lcom/aide/ui/MainActivity;

.field final str:Ljava/lang/String;

.field final tab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V
    .registers 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/s1243808733/aide/FileTabListener;->activity:Lcom/aide/ui/MainActivity;

    .line 27
    iput-object p2, p0, Lcom/s1243808733/aide/FileTabListener;->tab:Landroid/app/ActionBar$Tab;

    .line 28
    iput-object p3, p0, Lcom/s1243808733/aide/FileTabListener;->str:Ljava/lang/String;

    .line 30
    :try_start_0
    const-string v0, "com.aide.ui.ma"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$TabListener;

    iput-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    .line 33
    sput-object p0, Lcom/s1243808733/aide/FileTabListener;->sFileTabListener:Lcom/s1243808733/aide/FileTabListener;

    return-void

    .line 30
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static editorMenuClose(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Landroid/support/annotation/Keep;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 57
    const-string v1, "run_"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 58
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v4

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 59
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->notifyDataSetChanged()V

    .line 67
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v1, v3

    .line 58
    goto :goto_0
.end method

.method public static filetabMenuCloseAll(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Landroid/support/annotation/Keep;
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->editorMenuClose(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static filetabMenuCloseOthers(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Landroid/support/annotation/Keep;
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->editorMenuClose(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 39
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->appendOpenFile(Ljava/io/File;I)V

    .line 40
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    return-void
.end method
