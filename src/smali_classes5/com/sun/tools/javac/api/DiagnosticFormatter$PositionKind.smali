.class public final enum Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;
.super Ljava/lang/Enum;
.source "DiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/DiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

.field public static final enum COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

.field public static final enum END:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

.field public static final enum LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

.field public static final enum OFFSET:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

.field public static final enum START:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->START:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    .line 111
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->END:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    .line 115
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    .line 119
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const-string v1, "COLUMN"

    invoke-direct {v0, v1, v6}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    .line 123
    new-instance v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    const-string v1, "OFFSET"

    invoke-direct {v0, v1, v7}, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->OFFSET:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    .line 103
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->START:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->END:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->$VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;
    .registers 2

    .line 103
    const-class v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;
    .registers 1

    .line 103
    sget-object v0, Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->$VALUES:[Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;

    return-object v0
.end method
