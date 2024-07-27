.class public Lcom/sun/tools/javac/util/Warner;
.super Ljava/lang/Object;
.source "Warner.java"


# static fields
.field public static final noWarnings:Lcom/sun/tools/javac/util/Warner;


# instance fields
.field private nonSilentLintSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private silentLintSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected warned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/sun/tools/javac/util/Warner;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Warner;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/Warner;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/util/Warner;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Warner;->warned:Z

    .line 46
    const-class v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    .line 47
    const-class v0, Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    .line 62
    iput-object p1, p0, Lcom/sun/tools/javac/util/Warner;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 80
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/util/Warner;->warned:Z

    .line 82
    return-void
.end method

.method public hasLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z
    .registers 3

    .line 74
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Warner;->hasSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Warner;->hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNonSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSilentLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object v0
.end method

.method public silentWarn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->silentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/sun/tools/javac/util/Warner;->nonSilentLintSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
