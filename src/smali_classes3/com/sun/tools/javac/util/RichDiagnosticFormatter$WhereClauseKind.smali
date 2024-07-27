.class final enum Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
.super Ljava/lang/Enum;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WhereClauseKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum INTERSECTION:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const-string v1, "TYPEVAR"

    const-string v2, "where.description.typevar"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 263
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const-string v1, "CAPTURED"

    const-string v2, "where.description.captured"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 267
    new-instance v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const-string v1, "INTERSECTION"

    const-string v2, "where.description.intersection"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 254
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    sget-object v2, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->$VALUES:[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    iput-object p3, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    .registers 2

    .line 254
    const-class v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    .registers 1

    .line 254
    sget-object v0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->$VALUES:[Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    return-object v0
.end method


# virtual methods
.method key()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key:Ljava/lang/String;

    return-object v0
.end method
