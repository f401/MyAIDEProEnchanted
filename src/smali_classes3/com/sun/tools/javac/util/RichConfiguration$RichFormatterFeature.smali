.class public final enum Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;
.super Ljava/lang/Enum;
.source "RichConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RichFormatterFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

.field public static final enum SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

.field public static final enum UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

.field public static final enum WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    const-string v1, "WHERE_CLAUSES"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    .line 91
    new-instance v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    const-string v1, "SIMPLE_NAMES"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    .line 95
    new-instance v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    const-string v1, "UNIQUE_TYPEVAR_NAMES"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    .line 83
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    sget-object v2, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->$VALUES:[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;
    .registers 2

    .line 83
    const-class v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;
    .registers 1

    .line 83
    sget-object v0, Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->$VALUES:[Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/util/RichConfiguration$RichFormatterFeature;

    return-object v0
.end method
