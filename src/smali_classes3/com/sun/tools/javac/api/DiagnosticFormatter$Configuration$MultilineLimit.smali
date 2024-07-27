.class public final enum Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;
.super Ljava/lang/Enum;
.source "DiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultilineLimit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

.field public static final enum DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

.field public static final enum LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const-string v1, "DEPTH"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    .line 215
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    const-string v1, "LENGTH"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    .line 206
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->$VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;
    .registers 2

    .line 206
    const-class v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;
    .registers 1

    .line 206
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->$VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    return-object v0
.end method
