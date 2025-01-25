.class Lcom/sun/tools/javac/comp/Infer$6;
.super Lcom/sun/tools/javac/code/Type$Mapping;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V
    .registers 3

    .line 667
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$6;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$6;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 670
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1e

    .line 673
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$6;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Infer;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Infer$6;->this$0:Lcom/sun/tools/javac/comp/Infer;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Infer;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 674
    :cond_1e
    return-object v0
.end method
