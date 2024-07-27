.class public Lcom/s1243808733/aide/util/StringFog;
.super Ljava/lang/Object;
.source "StringFog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFog(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesRelease(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 17
    new-instance v5, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stringFogMapping.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;-><init>(Ljava/io/File;)V

    .line 26
    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "UTF-8"

    const-string v3, "com.github.megatronking.stringfog.xor.StringFogImpl"

    const-string v4, "com.github.megatronking.stringfog.xor.StringFogImpl"

    invoke-direct/range {v0 .. v5}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;)V

    .line 28
    invoke-virtual {v5}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->startMappingOutput()V

    .line 29
    const-string v1, "UTF-8"

    const-string v2, "com.github.megatronking.stringfog.xor.StringFogImpl"

    invoke-virtual {v5, v1, v2}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->ouputInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v6}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->doFog2ClassInDir(Ljava/io/File;)V

    .line 33
    const-string v0, "stringfog"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
