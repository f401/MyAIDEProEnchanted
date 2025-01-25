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

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_4e

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_4c

    .line 534
    :goto_1d
    invoke-static {}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    :try_start_26
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2f} :catch_4a

    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_3a} :catch_48

    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    goto :goto_45

    :catch_48
    move-exception v0

    goto :goto_3a

    :catch_4a
    move-exception v0

    goto :goto_2f

    .line 560
    :catch_4c
    move-exception v0

    goto :goto_1d

    :catch_4e
    move-exception v0

    goto :goto_12
.end method
