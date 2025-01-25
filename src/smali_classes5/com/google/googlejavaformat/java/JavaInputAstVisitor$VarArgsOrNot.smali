.class final enum Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
.super Ljava/lang/Enum;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VarArgsOrNot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

.field public static final enum NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

.field public static final enum YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3417
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    .line 3418
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    .line 3416
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromVariable(Lcom/sun/source/tree/VariableTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .registers 5

    const-wide v2, 0x400000000L

    .line 3425
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .registers 2

    .line 3416
    const-class v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    return-object v0
.end method

.method static valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .registers 2

    .line 3421
    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    goto :goto_4
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .registers 1

    .line 3416
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    return-object v0
.end method


# virtual methods
.method isYes()Z
    .registers 2

    .line 3429
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
