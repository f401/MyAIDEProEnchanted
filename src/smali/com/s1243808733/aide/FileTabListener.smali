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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/s1243808733/aide/FileTabListener;->activity:Lcom/aide/ui/MainActivity;

    .line 28
    iput-object p2, p0, Lcom/s1243808733/aide/FileTabListener;->tab:Landroid/app/ActionBar$Tab;

    .line 29
    iput-object p3, p0, Lcom/s1243808733/aide/FileTabListener;->str:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/aide/ui/UiAccess$_CC;->ma_class()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 32
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$TabListener;

    iput-object p1, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    .line 34
    sput-object p0, Lcom/s1243808733/aide/FileTabListener;->sFileTabListener:Lcom/s1243808733/aide/FileTabListener;

    return-void
.end method

.method public static editorMenuClose(Ljava/lang/Object;)Z
    .registers 5

    .line 57
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 58
    const-string v0, "run_"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 59
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible(Z)V

    .line 60
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_41

    .line 61
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 67
    :cond_41
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->notifyDataSetChanged()V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static filetabMenuCloseAll(Ljava/lang/Object;)Z
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->editorMenuClose(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static filetabMenuCloseOthers(Ljava/lang/Object;)Z
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/s1243808733/aide/FileTabListener;->editorMenuClose(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 40
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/s1243808733/aide/util/AIDEUtils;->appendOpenFile(Ljava/io/File;I)V

    .line 41
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/s1243808733/aide/FileTabListener;->_tabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    return-void
.end method
