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
        "Ljava/util/function/Consumer<",
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
    .registers 4
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
    .registers 2

    .line 26
    invoke-static {p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/util/FileUtil$1;->accept(Ljava/nio/file/Path;)V

    return-void
.end method

.method public accept(Ljava/nio/file/Path;)V
    .registers 6

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 32
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 33
    new-array p1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_61

    .line 34
    :cond_29
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 35
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, Lio/github/zeroaicy/util/FileUtil$1;->val$isCover:Z

    if-eqz v2, :cond_4f

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)I

    move-result v2

    if-gez v2, :cond_50

    :cond_4f
    return-void

    .line 38
    :cond_50
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardCopyOption;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    :goto_61
    return-void
.end method
