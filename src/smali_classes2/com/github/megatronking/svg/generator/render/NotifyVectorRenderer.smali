.class public abstract Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;
.super Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mVectorRendererListener:Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyResult(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;->mVectorRendererListener:Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;->mVectorRendererListener:Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;

    invoke-interface {v0, p1}, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;->receiveResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVectorRendererListener(Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;->mVectorRendererListener:Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;

    return-void
.end method

.method protected writeNewLine()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;->notifyResult(Ljava/lang/String;)V

    return-void
.end method
