.class public final enum Lcom/sun/tools/javac/main/JavaCompiler$CompileState;
.super Ljava/lang/Enum;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/JavaCompiler$CompileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum ENTER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum GENERATE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum PARSE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum PROCESS:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

.field public static final enum TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 596
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "PARSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PARSE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 597
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v4, v5}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ENTER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 598
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "PROCESS"

    invoke-direct {v0, v1, v5, v6}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PROCESS:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 599
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "ATTR"

    invoke-direct {v0, v1, v6, v7}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 600
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "FLOW"

    invoke-direct {v0, v1, v7, v8}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 601
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "TRANSTYPES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 602
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "LOWER"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 603
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const-string v1, "GENERATE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->GENERATE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    .line 595
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PARSE:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ENTER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->PROCESS:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->ATTR:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->FLOW:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->TRANSTYPES:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v2, v1, v8

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->LOWER:Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 606
    iput p3, p0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->value:I

    .line 607
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$CompileState;
    .registers 2

    .line 595
    const-class v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/JavaCompiler$CompileState;
    .registers 1

    .line 595
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavaCompiler$CompileState;

    return-object v0
.end method


# virtual methods
.method isDone(Lcom/sun/tools/javac/main/JavaCompiler$CompileState;)Z
    .registers 4

    .line 610
    iget v0, p0, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->value:I

    iget v1, p1, Lcom/sun/tools/javac/main/JavaCompiler$CompileState;->value:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
