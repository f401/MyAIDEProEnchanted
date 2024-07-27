.class Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;)Lcom/s1243808733/aide/project/ProjectDialog$100000014;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 486
    :goto_0
    return v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getReplaces()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 482
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :cond_2
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

    .line 482
    goto :goto_0
.end method
