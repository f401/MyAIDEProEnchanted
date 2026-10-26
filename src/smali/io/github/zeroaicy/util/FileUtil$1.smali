.class Lio/github/zeroaicy/util/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final val$isCover:Z

.field final val$source:Ljava/lang/String;

.field final val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$source:Ljava/lang/String;

    iput-object p2, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$target:Ljava/lang/String;

    iput-boolean p3, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$isCover:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 26
    invoke-static {p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/FileUtil$1;->accept(Ljava/nio/file/Path;)V

    return-void
.end method

.method public accept(Ljava/nio/file/Path;)V
    .locals 4

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$isCover:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 38
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    const/4 v2, 0x0

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardCopyOption;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
