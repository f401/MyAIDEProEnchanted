.class Lcom/sun/tools/javac/comp/Infer$4;
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

    .line 252
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$4;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 255
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 252
    check-cast p1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/comp/Infer$4;->accepts(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method
