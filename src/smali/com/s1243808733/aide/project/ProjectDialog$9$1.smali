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
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 480
    :cond_8
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getReplaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method
