.class final enum Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
.super Ljava/lang/Enum;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

.field public static final enum HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

.field public static final enum VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3329
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 3330
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 3328
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .registers 2

    .line 3328
    const-class v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .registers 1

    .line 3328
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    return-object v0
.end method


# virtual methods
.method isVertical()Z
    .registers 2

    .line 3333
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
