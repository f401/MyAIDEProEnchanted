.class synthetic Lcom/sun/tools/javac/util/JCDiagnostic$1;
.super Ljava/lang/Object;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

.field static final $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 560
    invoke-static {}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 534
    :goto_1
    invoke-static {}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    :try_start_2
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 560
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
