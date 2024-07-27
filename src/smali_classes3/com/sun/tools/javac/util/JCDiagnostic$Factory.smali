.class public Lcom/sun/tools/javac/util/JCDiagnostic$Factory;
.super Ljava/lang/Object;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field protected static final diagnosticFactoryKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final defaultErrorFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;"
        }
    .end annotation
.end field

.field formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/api/DiagnosticFormatter",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 70
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    const-string v1, "compiler"

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;-><init>(Lcom/sun/tools/javac/util/JavacMessages;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    .line 74
    const-string v1, "onlySyntaxErrorsUnrecoverable"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/JavacMessages;Ljava/lang/String;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lcom/sun/tools/javac/util/JavacMessages;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    .line 82
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JCDiagnostic$Factory;
    .registers 2

    .line 58
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;",
            "Lcom/sun/tools/javac/util/DiagnosticSource;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sun/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic;

    iget-object v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->formatter:Lcom/sun/tools/javac/api/DiagnosticFormatter;

    invoke-virtual {p0, p1, p6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->qualify(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sun/tools/javac/util/JCDiagnostic;-><init>(Lcom/sun/tools/javac/api/DiagnosticFormatter;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 14

    .line 215
    const/4 v2, 0x0

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs error(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 13

    .line 94
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 11

    const/4 v2, 0x0

    .line 200
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs mandatoryNote(Lcom/sun/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 12

    const/4 v2, 0x0

    .line 170
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs mandatoryWarning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 14

    .line 122
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs mandatoryWarning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 13

    .line 107
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v2, 0x0

    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs note(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 13

    .line 191
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v2, 0x0

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs note(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 11

    const/4 v2, 0x0

    .line 179
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method protected qualify(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 14

    .line 160
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 12

    const/4 v4, 0x0

    .line 134
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public varargs warning(Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 13

    .line 146
    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v2, 0x0

    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method
