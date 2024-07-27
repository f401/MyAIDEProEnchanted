.class final enum Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
.super Ljava/lang/Enum;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DimensionsOrNot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

.field public static final enum NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

.field public static final enum YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3405
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    .line 3406
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    .line 3404
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    .registers 2

    .line 3404
    const-class v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    .registers 1

    .line 3404
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    return-object v0
.end method


# virtual methods
.method isYes()Z
    .registers 2

    .line 3409
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
