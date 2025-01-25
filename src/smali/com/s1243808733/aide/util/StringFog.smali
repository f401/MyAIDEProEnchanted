.class public Lcom/s1243808733/aide/util/StringFog;
.super Ljava/lang/Object;
.source "StringFog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFog(Ljava/io/File;)V
    .registers 9
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

    move-result-object p0

    .line 17
    nop

    .line 23
    nop

    .line 24
    new-instance v7, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stringFogMapping.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;-><init>(Ljava/io/File;)V

    .line 26
    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "UTF-8"

    const-string v4, "com.github.megatronking.stringfog.xor.StringFogImpl"

    const-string v5, "com.github.megatronking.stringfog.xor.StringFogImpl"

    move-object v1, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;)V

    .line 28
    invoke-virtual {v7}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->startMappingOutput()V

    .line 29
    const-string v1, "UTF-8"

    const-string v2, "com.github.megatronking.stringfog.xor.StringFogImpl"

    invoke-virtual {v7, v1, v2}, Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;->ouputInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p0}, Lcom/github/megatronking/stringfog/plugin/StringFogClassInjector;->doFog2ClassInDir(Ljava/io/File;)V

    .line 33
    const-string v0, "stringfog"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    return-void

    .line 34
    :cond_48
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method
