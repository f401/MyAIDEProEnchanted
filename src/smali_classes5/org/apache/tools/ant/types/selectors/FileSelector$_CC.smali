.class public final synthetic Lorg/apache/tools/ant/types/selectors/FileSelector$_CC;
.super Ljava/lang/Object;
.source "FileSelector.java"


# direct methods
.method public static $default$isSelected(Lorg/apache/tools/ant/types/selectors/FileSelector;Lorg/apache/tools/ant/types/Resource;)Z
    .registers 4

    .line 57
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 57
    return v0
.end method

.method public static synthetic lambda$isSelected$0(Lorg/apache/tools/ant/types/selectors/FileSelector;Ljava/io/File;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    .line 58
    invoke-interface {p0, v0, v0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
