.class Lcom/s1243808733/aide/GradleProject$100000000;
.super Ljava/lang/Object;
.source "GradleProject.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/GradleProject;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/GradleProject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/GradleProject$100000000;->this$0:Lcom/s1243808733/aide/GradleProject;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/GradleProject$100000000;)Lcom/s1243808733/aide/GradleProject;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleProject$100000000;->this$0:Lcom/s1243808733/aide/GradleProject;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
