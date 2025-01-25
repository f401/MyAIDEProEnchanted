.class Lcom/sun/tools/javac/comp/Infer$3;
.super Ljava/lang/Object;
.source "Infer.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/util/Filter",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Infer;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$3;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 248
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 245
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Infer$3;->accepts(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method
