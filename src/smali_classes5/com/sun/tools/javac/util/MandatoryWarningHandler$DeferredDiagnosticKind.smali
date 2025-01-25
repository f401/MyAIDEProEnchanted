.class final enum Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
.super Ljava/lang/Enum;
.source "MandatoryWarningHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/MandatoryWarningHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeferredDiagnosticKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum ADDITIONAL_IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum ADDITIONAL_IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const-string v1, "IN_FILE"

    const-string v2, ".filename"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 75
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const-string v1, "ADDITIONAL_IN_FILE"

    const-string v2, ".filename.additional"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 82
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const-string v1, "IN_FILES"

    const-string v2, ".plural"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 89
    new-instance v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const-string v1, "ADDITIONAL_IN_FILES"

    const-string v2, ".plural.additional"

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    .line 61
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILES:Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->$VALUES:[Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    .registers 2

    .line 61
    const-class v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    .registers 1

    .line 61
    sget-object v0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->$VALUES:[Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    return-object v0
.end method


# virtual methods
.method getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
