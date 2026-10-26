.class public Lcom/s1243808733/android/dx/command/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final USAGE_MESSAGE:Ljava/lang/String; = "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    move v2, v0

    .line 85
    :goto_0
    :try_start_0
    array-length v3, p0
    :try_end_0
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v2, v3, :cond_b

    .line 86
    aget-object v3, p0, v2

    .line 87
    :try_start_1
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    move v2, v0

    move v3, v1

    .line 122
    :goto_2
    if-nez v2, :cond_c

    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "error: no command specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/s1243808733/android/dx/command/Main;->usage()V

    .line 144
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void

    .line 94
    :cond_2
    :try_start_2
    const-string v4, "--dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->main([Ljava/lang/String;)V

    :goto_4
    move v2, v1

    move v3, v0

    .line 108
    goto :goto_2

    .line 97
    :cond_3
    const-string v4, "--dump"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dump/Main;->main([Ljava/lang/String;)V

    goto :goto_4

    .line 110
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 100
    :cond_4
    const-string v4, "--annotool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/s1243808733/android/dx/command/annotool/Main;->main([Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 110
    :catch_1
    move-exception v3

    move v2, v1

    .line 120
    :goto_5
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 122
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :goto_6
    move v3, v0

    goto :goto_2

    .line 104
    :cond_5
    :try_start_3
    const-string v4, "--find-usages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 105
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/findusages/Main;->main([Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 110
    :catchall_0
    move-exception v3

    move v2, v1

    .line 124
    :goto_7
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\nUNEXPECTED TOP-LEVEL ERROR:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    instance-of v4, v3, Ljava/lang/NoClassDefFoundError;

    if-nez v4, :cond_6

    instance-of v3, v3, Ljava/lang/NoSuchMethodError;

    if-eqz v3, :cond_7

    .line 128
    :cond_6
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_7
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_6

    .line 107
    :cond_8
    :try_start_4
    const-string v4, "--version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 108
    invoke-static {}, Lcom/s1243808733/android/dx/command/Main;->version()V

    goto :goto_4

    .line 110
    :cond_9
    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    move v2, v0

    .line 85
    goto :goto_6

    .line 110
    :catchall_1
    move-exception v3

    move v2, v0

    goto :goto_7

    .line 134
    :catch_2
    move-exception v3

    move v2, v0

    goto :goto_5

    .line 122
    :catch_3
    move-exception v2

    goto/16 :goto_1

    :cond_c
    move v0, v3

    goto/16 :goto_3
.end method

.method private static usage()V
    .locals 2

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static version()V
    .locals 2

    .line 152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dx version 1.16"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static without([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    .line 172
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 173
    new-array v1, v0, [Ljava/lang/String;

    .line 174
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
