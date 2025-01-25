.class public Lorg/apache/tools/ant/taskdefs/modules/Link;
.super Lorg/apache/tools/ant/Task;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;,
        Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCHER_STRING:Ljava/lang/String; = "Launcher command must take the form name=module or name=module/mainclass"


# instance fields
.field private bindServices:Z

.field private checkDuplicateLegal:Z

.field private compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

.field private compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

.field private debug:Z

.field private endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

.field private final excludedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSigning:Z

.field private includeHeaders:Z

.field private includeManPages:Z

.field private includeNativeCommands:Z

.field private final launchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private modulePath:Lorg/apache/tools/ant/types/Path;

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final observableModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final ordering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private outputDir:Ljava/io/File;

.field private final releaseInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

.field private vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 236
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    .line 291
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    .line 294
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    .line 297
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    .line 300
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    return-void
.end method

.method private buildJlinkArgs()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2025
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2027
    const-string v0, "--output"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2028
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2030
    const-string v0, "--module-path"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2031
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2033
    const-string v0, "--add-modules"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2034
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2035
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 2034
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2037
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 2038
    const-string v0, "--limit-modules"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2039
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda6;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2040
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 2039
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2043
    :cond_69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 2044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--include-locales="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    .line 2045
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda5;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2046
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2045
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2044
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2049
    :cond_9d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    .line 2050
    const-string v3, "--launcher"

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2051
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 2054
    :cond_bc
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--order-resources="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    .line 2056
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2057
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2056
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2059
    :cond_f0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_124

    .line 2060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--exclude-files="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    .line 2061
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2062
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2061
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2064
    :cond_124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_158

    .line 2065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--exclude-resources="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    .line 2066
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda7;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2067
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 2066
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2065
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2070
    :cond_158
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    if-eqz v0, :cond_161

    .line 2071
    const-string v0, "--bind-services"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_161
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    if-eqz v0, :cond_16a

    .line 2074
    const-string v0, "--ignore-signing-information"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2076
    :cond_16a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    if-nez v0, :cond_173

    .line 2077
    const-string v0, "--no-header-files"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_173
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    if-nez v0, :cond_17c

    .line 2080
    const-string v0, "--no-man-pages"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_17c
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    if-nez v0, :cond_185

    .line 2083
    const-string v0, "--strip-native-commands"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_185
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    if-nez v0, :cond_18e

    .line 2086
    const-string v0, "--strip-debug"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_18e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    if-eqz v0, :cond_197

    .line 2089
    const-string v0, "--verbose"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2092
    :cond_197
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    if-eqz v0, :cond_1a9

    .line 2093
    const-string v0, "--endian"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2094
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2097
    :cond_1a9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    if-eqz v0, :cond_1cb

    .line 2098
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-nez v0, :cond_230

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--compress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;->toCommandLineOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2105
    :cond_1cb
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-eqz v0, :cond_1ec

    .line 2106
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->validate()V

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--compress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;->toCommandLineOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2109
    :cond_1ec
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    if-eqz v0, :cond_20a

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--vm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2112
    :cond_20a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    if-eqz v0, :cond_213

    .line 2113
    const-string v0, "--dedup-legal-notices=error-if-not-same-content"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2115
    :cond_213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_219
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;

    .line 2116
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->validate()V

    .line 2117
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->toCommandLineOptions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_219

    .line 2099
    :cond_230
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "compressionLevel attribute and <compression> child element cannot both be present."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 2120
    :cond_23c
    return-object v1
.end method

.method private deleteTree(Ljava/nio/file/Path;)V
    .registers 6

    .line 1990
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$1;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    invoke-static {p1, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 2012
    return-void

    .line 2009
    :catch_9
    move-exception v0

    .line 2010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2011
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method

.method static synthetic lambda$execute$0(Lorg/apache/tools/ant/util/CompositeMapper;Ljava/nio/file/Path;)V
    .registers 4

    .line 1904
    new-instance v0, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/MergingMapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/CompositeMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method


# virtual methods
.method public createCompress()Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;
    .registers 4

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    if-nez v0, :cond_c

    .line 840
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compression:Lorg/apache/tools/ant/taskdefs/modules/Link$Compression;

    .line 841
    return-object v0

    .line 836
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested compression element is permitted."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createExcludeFiles()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .registers 3

    .line 507
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 508
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    return-object v0
.end method

.method public createExcludeResources()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .registers 3

    .line 535
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 536
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    return-object v0
.end method

.method public createLauncher()Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;
    .registers 3

    .line 452
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 453
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    return-object v0
.end method

.method public createLocale()Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;
    .registers 3

    .line 479
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 480
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-object v0
.end method

.method public createModule()Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;
    .registers 3

    .line 404
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 405
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-object v0
.end method

.method public createModulePath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 348
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 349
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 351
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createObservableModule()Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;
    .registers 3

    .line 427
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 428
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-object v0
.end method

.method public createReleaseInfo()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;
    .registers 3

    .line 930
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 931
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->releaseInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    return-object v0
.end method

.method public createResourceOrder()Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
    .registers 3

    .line 564
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 565
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    return-object v0
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x3

    .line 1876
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    if-eqz v0, :cond_1f3

    .line 1881
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1e7

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e7

    .line 1885
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1db

    .line 1890
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1891
    new-instance v2, Lorg/apache/tools/ant/util/CompositeMapper;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/CompositeMapper;-><init>()V

    .line 1892
    :try_start_24
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    .line 1893
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_16c

    move-result-object v6

    .line 1903
    :try_start_31
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/CompositeMapper;)V

    invoke-interface {v6, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1906
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 1908
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    .line 1909
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v4

    move-object v0, p0

    .line 1907
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 1910
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping image creation, since \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" is already newer than all constituent modules."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V
    :try_end_6e
    .catchall {:try_start_31 .. :try_end_6e} :catchall_165

    .line 1916
    if-eqz v6, :cond_73

    :try_start_70
    invoke-interface {v6}, Ljava/util/stream/Stream;->close()V

    .line 1979
    :cond_73
    :goto_73
    return-void

    .line 1916
    :cond_74
    if-eqz v6, :cond_79

    invoke-interface {v6}, Ljava/util/stream/Stream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_16c

    .line 1923
    :cond_79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1924
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1925
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1926
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1927
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1928
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1929
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1931
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->buildJlinkArgs()Ljava/util/Collection;

    move-result-object v1

    .line 1933
    const-string v0, "jlink"

    invoke-static {v0}, Ljava/util/spi/ToolProvider;->findFirst(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/modules/Link$$ExternalSyntheticLambda8;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/spi/ToolProvider;

    .line 1937
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting existing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1939
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link;->deleteTree(Ljava/nio/file/Path;)V

    .line 1942
    :cond_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing: jlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-static {v3, v1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1944
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1945
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1948
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1949
    :try_start_10f
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_1d6

    .line 1951
    const/4 v6, 0x0

    :try_start_115
    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/spi/ToolProvider;->run(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_115 .. :try_end_120} :catchall_1d1

    move-result v0

    .line 1952
    :try_start_121
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_1d6

    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 1954
    if-eqz v0, :cond_192

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1956
    const-string v4, "jlink failed (exit code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_149

    .line 1958
    const-string v0, ", output is: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1960
    :cond_149
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_157

    .line 1961
    const-string v0, ", error output is: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1964
    :cond_157
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1892
    :catchall_165
    move-exception v0

    if-eqz v6, :cond_16b

    :try_start_168
    invoke-interface {v6}, Ljava/util/stream/Stream;->close()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1ff

    :cond_16b
    :goto_16b
    :try_start_16b
    throw v0
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16c} :catch_16c

    .line 1916
    :catch_16c
    move-exception v0

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not scan \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" for being up-to-date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 1967
    :cond_192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    if-eqz v0, :cond_1b4

    .line 1968
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/LogLevel;->getLevel()I

    move-result v0

    .line 1970
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_1a7

    .line 1971
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1973
    :cond_1a7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_1b4

    .line 1974
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    .line 1978
    :cond_1b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->log(Ljava/lang/String;I)V

    goto/16 :goto_73

    .line 1948
    :catchall_1d1
    move-exception v0

    :try_start_1d2
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_1d5
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_202

    :goto_1d5
    :try_start_1d5
    throw v0
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d6

    :catchall_1d6
    move-exception v0

    :try_start_1d7
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_204

    :goto_1da
    throw v0

    .line 1886
    :cond_1db
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one module must be specified."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1882
    :cond_1e7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Module path is required."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1877
    :cond_1f3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destination directory is required."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1892
    :catchall_1ff
    move-exception v1

    goto/16 :goto_16b

    .line 1948
    :catchall_202
    move-exception v1

    goto :goto_1d5

    :catchall_204
    move-exception v1

    goto :goto_1da
.end method

.method public getBindServices()Z
    .registers 2

    .line 600
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    return v0
.end method

.method public getCheckDuplicateLegal()Z
    .registers 2

    .line 882
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    return v0
.end method

.method public getCompress()Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;
    .registers 2

    .line 806
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    return-object v0
.end method

.method public getDebug()Z
    .registers 2

    .line 730
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    return v0
.end method

.method public getDestDir()Ljava/io/File;
    .registers 2

    .line 781
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    return-object v0
.end method

.method public getEndianness()Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;
    .registers 2

    .line 854
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    return-object v0
.end method

.method public getIgnoreSigning()Z
    .registers 2

    .line 625
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    return v0
.end method

.method public getIncludeHeaders()Z
    .registers 2

    .line 654
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    return v0
.end method

.method public getIncludeManPages()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    return v0
.end method

.method public getIncludeNativeCommands()Z
    .registers 2

    .line 704
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    return v0
.end method

.method public getModulePath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVerboseLevel()Lorg/apache/tools/ant/types/LogLevel;
    .registers 2

    .line 756
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    return-object v0
.end method

.method public getVmType()Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;
    .registers 2

    .line 908
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    return-object v0
.end method

.method public synthetic lambda$execute$1$Link()Lorg/apache/tools/ant/BuildException;
    .registers 4

    .line 1934
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jlink tool not found in JDK."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    return-object v0
.end method

.method public setBindServices(Z)V
    .registers 2

    .line 612
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->bindServices:Z

    .line 613
    return-void
.end method

.method public setCheckDuplicateLegal(Z)V
    .registers 2

    .line 896
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->checkDuplicateLegal:Z

    .line 897
    return-void
.end method

.method public setCompress(Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;)V
    .registers 2

    .line 820
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->compressionLevel:Lorg/apache/tools/ant/taskdefs/modules/Link$CompressionLevel;

    .line 821
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 743
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->debug:Z

    .line 744
    return-void
.end method

.method public setDestDir(Ljava/io/File;)V
    .registers 2

    .line 792
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->outputDir:Ljava/io/File;

    .line 793
    return-void
.end method

.method public setEndianness(Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;)V
    .registers 2

    .line 868
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->endianness:Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;

    .line 869
    return-void
.end method

.method public setExcludeFiles(Ljava/lang/String;)V
    .registers 8

    .line 521
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 522
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedFiles:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 524
    :cond_19
    return-void
.end method

.method public setExcludeResources(Ljava/lang/String;)V
    .registers 8

    .line 550
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 551
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->excludedResources:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 553
    :cond_19
    return-void
.end method

.method public setIgnoreSigning(Z)V
    .registers 2

    .line 642
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ignoreSigning:Z

    .line 643
    return-void
.end method

.method public setIncludeHeaders(Z)V
    .registers 2

    .line 667
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeHeaders:Z

    .line 668
    return-void
.end method

.method public setIncludeManPages(Z)V
    .registers 2

    .line 692
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeManPages:Z

    .line 693
    return-void
.end method

.method public setIncludeNativeCommands(Z)V
    .registers 2

    .line 717
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->includeNativeCommands:Z

    .line 718
    return-void
.end method

.method public setLaunchers(Ljava/lang/String;)V
    .registers 8

    .line 466
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 467
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->launchers:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 469
    :cond_19
    return-void
.end method

.method public setLocales(Ljava/lang/String;)V
    .registers 8

    .line 493
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 494
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->locales:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$LocaleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 496
    :cond_19
    return-void
.end method

.method public setModulePath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 378
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 382
    :goto_6
    return-void

    .line 380
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setModulePathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 393
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->createModulePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 394
    return-void
.end method

.method public setModules(Ljava/lang/String;)V
    .registers 8

    .line 415
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 416
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->modules:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 418
    :cond_19
    return-void
.end method

.method public setObservableModules(Ljava/lang/String;)V
    .registers 8

    .line 438
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 439
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->observableModules:Ljava/util/List;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;

    invoke-direct {v5, p0, v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 441
    :cond_19
    return-void
.end method

.method public setResourceOrder(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    .line 581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 583
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_1d

    aget-object v5, v3, v0

    .line 584
    new-instance v6, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;

    invoke-direct {v6, p0, v5}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 588
    :cond_1d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->ordering:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 589
    return-void
.end method

.method public setVerboseLevel(Lorg/apache/tools/ant/types/LogLevel;)V
    .registers 2

    .line 769
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->verboseLevel:Lorg/apache/tools/ant/types/LogLevel;

    .line 770
    return-void
.end method

.method public setVmType(Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;)V
    .registers 2

    .line 920
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link;->vmType:Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;

    .line 921
    return-void
.end method
