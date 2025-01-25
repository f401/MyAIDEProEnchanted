.class public final Lcom/google/googlejavaformat/java/UsageException;
.super Ljava/lang/Exception;
.source "UsageException.java"


# static fields
.field private static final ADDITIONAL_USAGE:[Ljava/lang/String;

.field private static final DOCS_LINK:[Ljava/lang/String;

.field private static final NEWLINE_JOINER:Lcom/google/common/base/Joiner;

.field private static final USAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/UsageException;->NEWLINE_JOINER:Lcom/google/common/base/Joiner;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://github.com/google/google-java-format"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlejavaformat/java/UsageException;->DOCS_LINK:[Ljava/lang/String;

    .line 32
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Usage: google-java-format [options] file(s)"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "Options:"

    aput-object v1, v0, v6

    const-string v1, "  -i, -r, -replace, --replace"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "    Send formatted output back to files, not stdout."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "  -"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "    Format stdin -> stdout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "  --aosp, -aosp, -a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "    Use AOSP style instead of Google Style (4-space indentation)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "  --fix-imports-only"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "    Fix import order and remove any unused imports, but do no other formatting."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "  --skip-sorting-imports"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "    Do not fix the import order. Unused imports will still be removed."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "  --skip-removing-unused-imports"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "    Do not remove unused imports. Imports will still be sorted."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "  --length, -length"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "    Character length to format."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "  --lines, -lines, --line, -line"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "    Line range(s) to format, like 5:10 (1-based; default is all)."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "  --offset, -offset"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "    Character offset to format (0-based; default is all)."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "  --help, -help, -h"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "    Print this usage statement"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "  --version, -version, -v"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "    Print the version."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlejavaformat/java/UsageException;->USAGE:[Ljava/lang/String;

    .line 62
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "If -i is given with -, the result is sent to stdout."

    aput-object v1, v0, v3

    const-string v1, "The --lines, --offset, and --length flags may be given more than once."

    aput-object v1, v0, v4

    const-string v1, "The --offset and --length flags must be given an equal number of times."

    aput-object v1, v0, v5

    const-string v1, "If --lines, --offset, or --length are given, only one file (or -) may be given."

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlejavaformat/java/UsageException;->ADDITIONAL_USAGE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/UsageException;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 74
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/UsageException;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 4

    .line 91
    sget-object v0, Lcom/google/googlejavaformat/java/UsageException;->NEWLINE_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    return-void
.end method

.method private static buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    if-eqz p0, :cond_f

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_f
    sget-object v1, Lcom/google/googlejavaformat/java/UsageException;->USAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/google/googlejavaformat/java/UsageException;->ADDITIONAL_USAGE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/google/googlejavaformat/java/Main;->VERSION:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/google/googlejavaformat/java/UsageException;->DOCS_LINK:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
