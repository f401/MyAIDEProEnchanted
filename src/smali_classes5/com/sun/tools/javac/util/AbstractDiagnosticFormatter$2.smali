.class synthetic Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;
.super Ljava/lang/Object;
.source "AbstractDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

.field static final $SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 125
    invoke-static {}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->values()[Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->START:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_82

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->END:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_80

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_7e

    :goto_28
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_7c

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    sget-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->OFFSET:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_7a

    .line 101
    :goto_3e
    invoke-static {}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    :try_start_47
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_50} :catch_78

    :goto_50
    :try_start_50
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5b} :catch_76

    :goto_5b
    :try_start_5b
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_66} :catch_74

    :goto_66
    :try_start_66
    sget-object v0, Lcom/sun/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_72

    :goto_71
    return-void

    :catch_72
    move-exception v0

    goto :goto_71

    :catch_74
    move-exception v0

    goto :goto_66

    :catch_76
    move-exception v0

    goto :goto_5b

    :catch_78
    move-exception v0

    goto :goto_50

    .line 125
    :catch_7a
    move-exception v0

    goto :goto_3e

    :catch_7c
    move-exception v0

    goto :goto_33

    :catch_7e
    move-exception v0

    goto :goto_28

    :catch_80
    move-exception v0

    goto :goto_1d

    :catch_82
    move-exception v0

    goto :goto_12
.end method
