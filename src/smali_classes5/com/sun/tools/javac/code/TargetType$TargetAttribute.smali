.class final enum Lcom/sun/tools/javac/code/TargetType$TargetAttribute;
.super Ljava/lang/Enum;
.source "TargetType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/TargetType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TargetAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/TargetType$TargetAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

.field public static final enum HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

.field public static final enum HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

.field public static final enum HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

.field public static final enum IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    new-instance v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    const-string v1, "HasLocation"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    new-instance v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    const-string v1, "HasParameter"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    new-instance v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    const-string v1, "HasBound"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    new-instance v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    const-string v1, "IsLocal"

    invoke-direct {v0, v1, v6}, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->IsLocal:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    .line 274
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    sget-object v2, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasLocation:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasParameter:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->HasBound:Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->$VALUES:[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/TargetType$TargetAttribute;
    .registers 2

    .line 274
    const-class v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;
    .registers 1

    .line 274
    sget-object v0, Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->$VALUES:[Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/TargetType$TargetAttribute;

    return-object v0
.end method
