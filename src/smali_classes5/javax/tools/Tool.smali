.class public interface abstract Ljavax/tools/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# virtual methods
.method public abstract getSourceVersions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/SourceVersion;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I
.end method
