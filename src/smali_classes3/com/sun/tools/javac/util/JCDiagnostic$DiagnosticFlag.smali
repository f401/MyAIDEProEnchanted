.class public final enum Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;
.super Ljava/lang/Enum;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v1, "MANDATORY"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    .line 340
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v1, "RESOLVE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    .line 341
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v1, "SYNTAX"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    .line 342
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v1, "RECOVERABLE"

    invoke-direct {v0, v1, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    .line 338
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->$VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;
    .registers 2

    .line 338
    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;
    .registers 1

    .line 338
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->$VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    return-object v0
.end method
