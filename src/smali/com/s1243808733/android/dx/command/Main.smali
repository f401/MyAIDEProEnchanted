.class public Lcom/s1243808733/android/dx/command/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final USAGE_MESSAGE:Ljava/lang/String; = "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .line 81
    const-string v0, "--"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_4
    const/4 v3, 0x1

    :try_start_5
    array-length v4, p0
    :try_end_6
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_5 .. :try_end_6} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_6} :catch_9d
    .catchall {:try_start_5 .. :try_end_6} :catchall_7d

    if-ge v2, v4, :cond_7b

    .line 86
    aget-object v4, p0, v2

    .line 87
    :try_start_a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_14
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_a .. :try_end_14} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_14} :catch_9d
    .catchall {:try_start_a .. :try_end_14} :catchall_7d

    if-nez v5, :cond_18

    goto/16 :goto_af

    .line 94
    :cond_18
    :try_start_18
    const-string v5, "--dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 95
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/command/dexer/Main;->main([Ljava/lang/String;)V

    goto :goto_63

    .line 97
    :cond_28
    const-string v5, "--dump"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 98
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/command/dump/Main;->main([Ljava/lang/String;)V

    goto :goto_63

    .line 100
    :cond_38
    const-string v5, "--annotool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 102
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/s1243808733/android/dx/command/annotool/Main;->main([Ljava/lang/String;)V

    goto :goto_63

    .line 104
    :cond_48
    const-string v5, "--find-usages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 105
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/command/findusages/Main;->main([Ljava/lang/String;)V

    goto :goto_63

    .line 107
    :cond_58
    const-string v5, "--version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 108
    invoke-static {}, Lcom/s1243808733/android/dx/command/Main;->version()V

    :goto_63
    goto :goto_6d

    .line 110
    :cond_64
    const-string v5, "--help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6a
    .catch Lcom/s1243808733/android/dx/command/UsageException; {:try_start_18 .. :try_end_6a} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_6a} :catch_75
    .catchall {:try_start_18 .. :try_end_6a} :catchall_72

    if-eqz v4, :cond_6f

    const/4 v1, 0x1

    .line 108
    :goto_6d
    const/4 v0, 0x1

    goto :goto_b1

    .line 110
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_72
    move-exception p0

    const/4 v0, 0x1

    goto :goto_7f

    :catch_75
    move-exception p0

    const/4 v0, 0x1

    goto :goto_9f

    :catch_78
    move-exception p0

    const/4 v1, 0x1

    goto :goto_af

    .line 85
    :cond_7b
    const/4 v0, 0x0

    goto :goto_ad

    .line 110
    :catchall_7d
    move-exception p0

    const/4 v0, 0x0

    .line 124
    :goto_7f
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\nUNEXPECTED TOP-LEVEL ERROR:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    instance-of v2, p0, Ljava/lang/NoClassDefFoundError;

    if-nez v2, :cond_91

    instance-of p0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz p0, :cond_98

    .line 128
    :cond_91
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_98
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_ad

    :catch_9d
    move-exception p0

    const/4 v0, 0x0

    .line 120
    :goto_9f
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 122
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_ad
    goto :goto_b1

    :catch_ae
    move-exception p0

    :cond_af
    :goto_af
    move v0, v1

    const/4 v1, 0x1

    :goto_b1
    if-nez v0, :cond_bb

    .line 138
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "error: no command specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_bb
    if-eqz v1, :cond_c3

    .line 143
    invoke-static {}, Lcom/s1243808733/android/dx/command/Main;->usage()V

    .line 144
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_c3
    return-void
.end method

.method private static usage()V
    .registers 2

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static version()V
    .registers 2

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
    .registers 5

    .line 172
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 173
    new-array v1, v0, [Ljava/lang/String;

    .line 174
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
