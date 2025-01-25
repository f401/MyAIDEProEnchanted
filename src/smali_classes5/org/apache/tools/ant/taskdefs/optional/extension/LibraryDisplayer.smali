.class Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;
.super Ljava/lang/Object;
.source "LibraryDisplayer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displaySpecification(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)V
    .registers 5

    .line 135
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_18

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sections:  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 138
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 139
    const-string v2, " "

    invoke-static {v2, v0}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 124
    :catch_5
    move-exception v0

    .line 125
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private printLine(I)V
    .registers 5

    .line 107
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_d

    .line 108
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 111
    return-void
.end method


# virtual methods
.method displayLibrary(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;Ljava/util/jar/Manifest;)V

    .line 44
    return-void
.end method

.method displayLibrary(Ljava/io/File;Ljava/util/jar/Manifest;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    .line 58
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getRequired(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v3

    .line 59
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getOptions(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v4

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object v5

    .line 62
    array-length v1, v2

    if-nez v1, :cond_1e

    array-length v1, v3

    if-nez v1, :cond_1e

    array-length v1, v4

    if-nez v1, :cond_1e

    array-length v1, v5

    if-nez v1, :cond_1e

    .line 99
    :cond_1d
    return-void

    .line 67
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 69
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->printLine(I)V

    .line 70
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->printLine(I)V

    .line 72
    array-length v1, v2

    if-eqz v1, :cond_56

    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Extensions Supported By Library:"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    array-length v6, v2

    move v1, v0

    :goto_4a
    if-ge v1, v6, :cond_56

    aget-object v7, v2, v1

    .line 75
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 79
    :cond_56
    array-length v1, v3

    if-eqz v1, :cond_6e

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Extensions Required By Library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    array-length v2, v3

    move v1, v0

    :goto_62
    if-ge v1, v2, :cond_6e

    aget-object v6, v3, v1

    .line 82
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 86
    :cond_6e
    array-length v1, v4

    if-eqz v1, :cond_86

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Extensions that will be used by Library if present:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    array-length v2, v4

    move v1, v0

    :goto_7a
    if-ge v1, v2, :cond_86

    aget-object v3, v4, v1

    .line 89
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 93
    :cond_86
    array-length v1, v5

    if-eqz v1, :cond_1d

    .line 94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Specifications Supported By Library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    array-length v1, v5

    :goto_91
    if-ge v0, v1, :cond_1d

    aget-object v2, v5, v0

    .line 96
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displaySpecification(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method
