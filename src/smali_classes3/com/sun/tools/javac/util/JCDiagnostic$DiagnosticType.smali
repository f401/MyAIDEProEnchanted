.class public final enum Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;
.super Ljava/lang/Enum;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-string v1, "FRAGMENT"

    const-string v2, "misc"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 273
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-string v1, "NOTE"

    const-string v2, "note"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 275
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-string v1, "WARNING"

    const-string v2, "warn"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 277
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-string v1, "ERROR"

    const-string v2, "err"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 269
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->$VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

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

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 285
    iput-object p3, p0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->key:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;
    .registers 2

    .line 269
    const-class v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;
    .registers 1

    .line 269
    sget-object v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->$VALUES:[Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object v0
.end method
