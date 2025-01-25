.class Lcom/sun/tools/javac/comp/Lower$4;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower;->makeComma(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final val$expr2:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 2137
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$4;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$4;->val$expr2:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 2139
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$4;->val$expr2:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0
.end method
