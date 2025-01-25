.class Lcom/s1243808733/aide/AideMainActivity$13;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->addMainToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$13;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1100
    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 1101
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    .line 1102
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v3, p1, [Lcom/google/common/io/FileWriteMode;

    invoke-static {v1, v2, v3}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;

    move-result-object v1

    .line 1103
    new-instance v2, Lcom/google/googlejavaformat/java/Formatter;

    invoke-direct {v2}, Lcom/google/googlejavaformat/java/Formatter;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Lcom/google/common/io/CharSource;Lcom/google/common/io/CharSink;)V

    .line 1104
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v0

    .line 1106
    new-instance v1, Labcd/_e;

    invoke-direct {v1}, Labcd/_e;-><init>()V

    invoke-virtual {v1}, Labcd/_e;->run()Z

    .line 1107
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception v0

    .line 1110
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$13;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_44
    return p1
.end method
