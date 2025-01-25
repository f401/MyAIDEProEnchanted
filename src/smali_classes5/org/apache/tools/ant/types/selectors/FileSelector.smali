.class public interface abstract Lorg/apache/tools/ant/types/selectors/FileSelector;
.super Ljava/lang/Object;
.source "FileSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# virtual methods
.method public abstract isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation
.end method

.method public abstract isSelected(Lorg/apache/tools/ant/types/Resource;)Z
.end method
