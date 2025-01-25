.class public final enum Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
.super Ljava/lang/Enum;
.source "BasicDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourcePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

.field public static final enum AFTER_SUMMARY:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

.field public static final enum BOTTOM:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    .line 371
    new-instance v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    const-string v1, "AFTER_SUMMARY"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->AFTER_SUMMARY:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    .line 362
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    sget-object v2, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->$VALUES:[Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    .registers 2

    .line 362
    const-class v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    .registers 1

    .line 362
    sget-object v0, Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->$VALUES:[Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-object v0
.end method
