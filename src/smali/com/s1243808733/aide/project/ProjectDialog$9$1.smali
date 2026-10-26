.class Lcom/s1243808733/aide/project/ProjectDialog$9$1;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$9;->replaces(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x1

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 481
    :goto_0
    return v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getReplaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
