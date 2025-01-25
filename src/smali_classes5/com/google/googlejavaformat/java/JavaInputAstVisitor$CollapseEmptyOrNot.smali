.class final enum Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;
.super Ljava/lang/Enum;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CollapseEmptyOrNot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

.field public static final enum NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

.field public static final enum YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3353
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    .line 3354
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    .line 3352
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;
    .registers 2

    .line 3352
    const-class v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    return-object v0
.end method

.method static valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;
    .registers 2

    .line 3357
    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    goto :goto_4
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;
    .registers 1

    .line 3352
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    return-object v0
.end method


# virtual methods
.method isYes()Z
    .registers 2

    .line 3361
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
