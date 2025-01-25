.class public Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;
    }
.end annotation


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private dataChange:Z

.field private emptyView:Landroid/widget/TextView;

.field private item_save:Landroid/view/MenuItem;

.field private mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

.field private manifestFile:Ljava/io/File;

.field private manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmultipleMode(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->multipleMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msave(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->save(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .registers 4

    .line 93
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    .line 97
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "没有权限"

    goto :goto_28

    :cond_26
    const-string v2, "No Permission"

    :goto_28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const v2, 0x1030042

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v2, 0x41900000  # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public static isAnnotationPermission()Z
    .registers 3

    .line 319
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "annotation_permission"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private load()V
    .registers 4

    .line 71
    const-string v0, "path"

    :try_start_2
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 72
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestFile:Ljava/io/File;

    .line 76
    :cond_1b
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestFile:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PManifestUtils;->load(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    .line 78
    invoke-virtual {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setListener(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;)V

    .line 79
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onDataSetChanged()V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_40

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :catchall_40
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->finish()V

    return-void
.end method

.method private multipleMode()V
    .registers 3

    .line 220
    invoke-virtual {p0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    .line 222
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "多选操作"

    goto :goto_11

    :cond_f
    const-string v1, "Multi select"

    :goto_11
    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private save(Z)V
    .registers 6

    .line 355
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isAnnotationPermission()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->save(Ljava/util/List;Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_4e

    .line 358
    :try_start_23
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    .line 360
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_4c

    if-eqz v2, :cond_33

    const-string v2, "保存成功"

    goto :goto_35

    :cond_33
    const-string v2, "Saved success"

    :goto_35
    :try_start_35
    invoke-static {v2}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v2

    .line 361
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 362
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_46

    .line 364
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->finish()V
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_4c

    .line 370
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_58

    .line 375
    :catchall_4a
    move-exception p1

    goto :goto_58

    .line 373
    :catchall_4c
    move-exception p1

    goto :goto_50

    :catchall_4e
    move-exception p1

    const/4 v1, 0x0

    .line 367
    :goto_50
    :try_start_50
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 370
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_58

    .line 375
    :catchall_57
    move-exception p1

    .line 373
    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_5d

    .line 375
    :catchall_5c
    move-exception p1

    .line 373
    :goto_5d
    return-void

    :catchall_5e
    move-exception p1

    .line 370
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_64

    .line 375
    :catchall_63
    move-exception v0

    .line 373
    :goto_64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_69

    .line 375
    :catchall_68
    move-exception v0

    :goto_69
    throw p1
.end method


# virtual methods
.method getSp()Landroid/content/SharedPreferences;
    .registers 2

    .line 323
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public isDataChange()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->dataChange:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()V
    .registers 4

    .line 328
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isDataChange()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "保存修改"

    goto :goto_16

    :cond_14
    const-string v1, "Save modified"

    :goto_16
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "数据已发生变化，是否保存？"

    goto :goto_25

    :cond_23
    const-string v1, "Data has changed, do you want to save?"

    :goto_25
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "保存"

    goto :goto_34

    :cond_32
    const-string v1, "Save"

    :goto_34
    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 339
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "不保存"

    goto :goto_48

    :cond_46
    const-string v1, "no"

    :goto_48
    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 350
    :cond_59
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 62
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "权限编辑"

    goto :goto_19

    :cond_17
    const-string v0, "Permission Edit"

    :goto_19
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelectMode(Z)V

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 231
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "删除"

    goto :goto_16

    :cond_14
    const-string v0, "Delect"

    :goto_16
    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Landroid/view/ActionMode;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 244
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const p1, 0x104000d

    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 257
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 259
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "全不选"

    goto :goto_46

    :cond_44
    const-string p1, "Unselect all"

    :goto_46
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 267
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "反选"

    goto :goto_61

    :cond_5f
    const-string p1, "Invert Select"

    :goto_61
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;

    invoke-direct {p2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 285
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .line 169
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "保存"

    goto :goto_b

    :cond_9
    const-string v0, "Sava"

    :goto_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$2;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->item_save:Landroid/view/MenuItem;

    .line 177
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "添加"

    goto :goto_2e

    :cond_2c
    const-string v0, "Add"

    :goto_2e
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "自动注释权限"

    goto :goto_49

    :cond_47
    const-string v0, "Comment permission"

    :goto_49
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    .line 197
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 205
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isAnnotationPermission()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 207
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "多选操作"

    goto :goto_6d

    :cond_6b
    const-string v0, "Multi select"

    :goto_6d
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 215
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->load()V

    .line 216
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDataSetChanged()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 112
    :cond_f
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_16
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 302
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelectMode(Z)V

    .line 303
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 127
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 128
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 129
    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 130
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    .line 131
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return-void

    .line 134
    :cond_21
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 136
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getDescribe()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 137
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p3

    if-eqz p3, :cond_3f

    const-string p3, "删除"

    goto :goto_41

    :cond_3f
    const-string p3, "Delect"

    :goto_41
    new-instance p4, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;

    invoke-direct {p4, p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 146
    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result p1

    if-nez p1, :cond_24

    .line 155
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->multipleMode()V

    .line 156
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 157
    iget-object p1, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 158
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p2, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p2

    .line 159
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelection(Z)V

    .line 160
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1, p2, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    .line 161
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return p3

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 311
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_e
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .registers 6

    .line 118
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2a

    .line 119
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "已选 %d 项"

    goto :goto_f

    :cond_d
    const-string p2, "%d selected items"

    :goto_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method

.method public setDataChange(Z)V
    .registers 3

    .line 51
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->dataChange:Z

    .line 52
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->item_save:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 53
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method
