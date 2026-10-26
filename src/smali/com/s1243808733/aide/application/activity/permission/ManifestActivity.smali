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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mmultipleMode(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->multipleMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msave(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->save(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    .line 93
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    .line 97
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6ca1\u6709\u6743\u9650"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const v2, 0x1030042

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object v1

    .line 98
    :cond_0
    const-string v0, "No Permission"

    goto :goto_0
.end method

.method public static isAnnotationPermission()Z
    .locals 3

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
    .locals 3

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestFile:Ljava/io/File;

    .line 76
    :cond_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->manifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_0
    return-void

    :catchall_0
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

    goto :goto_0
.end method

.method private multipleMode()V
    .locals 2

    .line 220
    invoke-virtual {p0, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    .line 222
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u591a\u9009\u64cd\u4f5c"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    .line 222
    :cond_0
    const-string v0, "Multi select"

    goto :goto_0
.end method

.method private save(Z)V
    .locals 5

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    .line 360
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    .line 361
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 362
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 370
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 373
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    return-void

    .line 360
    :cond_1
    const-string v0, "Saved success"

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 373
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 367
    :goto_3
    :try_start_5
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 370
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    goto :goto_1

    .line 375
    :catchall_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 373
    :catchall_3
    move-exception v0

    .line 370
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 373
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 375
    :goto_5
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v2

    goto :goto_4

    :catchall_6
    move-exception v1

    goto :goto_5

    .line 373
    :catchall_7
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method getSp()Landroid/content/SharedPreferences;
    .locals 1

    .line 323
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public isDataChange()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->dataChange:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->isDataChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fdd\u5b58\u4fee\u6539"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 331
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6570\u636e\u5df2\u53d1\u751f\u53d8\u5316\uff0c\u662f\u5426\u4fdd\u5b58\uff1f"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 332
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4fdd\u5b58"

    :goto_2
    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 339
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u4e0d\u4fdd\u5b58"

    :goto_3
    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 350
    :goto_4
    return-void

    .line 330
    :cond_0
    const-string v0, "Save modified"

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, "Data has changed, do you want to save?"

    goto :goto_1

    .line 332
    :cond_2
    const-string v0, "Save"

    goto :goto_2

    .line 339
    :cond_3
    const-string v0, "no"

    goto :goto_3

    .line 350
    :cond_4
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onBackPressed()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6743\u9650\u7f16\u8f91"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void

    .line 64
    :cond_0
    const-string v0, "Permission Edit"

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelectMode(Z)V

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 231
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5220\u9664"

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Landroid/view/ActionMode;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 244
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const v0, 0x104000d

    invoke-interface {p2, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 259
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5168\u4e0d\u9009"

    :goto_1
    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u53cd\u9009"

    :goto_2
    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3

    .line 231
    :cond_0
    const-string v0, "Delect"

    goto :goto_0

    .line 259
    :cond_1
    const-string v0, "Unselect all"

    goto :goto_1

    .line 269
    :cond_2
    const-string v0, "Invert Select"

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x2

    .line 169
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fdd\u5b58"

    :goto_0
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
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6dfb\u52a0"

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u81ea\u52a8\u6ce8\u91ca\u6743\u9650"

    :goto_2
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

    if-eqz v0, :cond_3

    const-string v0, "\u591a\u9009\u64cd\u4f5c"

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 215
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->load()V

    .line 216
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    const-string v0, "Sava"

    goto :goto_0

    .line 179
    :cond_1
    const-string v0, "Add"

    goto :goto_1

    .line 196
    :cond_2
    const-string v0, "Comment permission"

    goto :goto_2

    .line 207
    :cond_3
    const-string v0, "Multi select"

    goto :goto_3
.end method

.method public onDataSetChanged()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelectMode(Z)V

    .line 303
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 129
    iget-object v0, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 130
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    .line 131
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getDescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 137
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5220\u9664"

    :goto_1
    new-instance v3, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "Delect"

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->multipleMode()V

    .line 156
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 157
    iget-object v1, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 158
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v2, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelection(Z)V

    .line 160
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    .line 161
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onBackPressed()V

    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .locals 5

    .line 118
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->actionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u9009 %d \u9879"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->mainAdapter:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "%d selected items"

    goto :goto_0
.end method

.method public setDataChange(Z)V
    .locals 1

    .line 51
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->dataChange:Z

    .line 52
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->item_save:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
