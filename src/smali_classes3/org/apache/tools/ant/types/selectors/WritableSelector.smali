.class public Lorg/apache/tools/ant/types/selectors/WritableSelector;
.super Ljava/lang/Object;
.source "WritableSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .line 36
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector$_CC;->$default$isSelected(Lorg/apache/tools/ant/types/selectors/FileSelector;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method
