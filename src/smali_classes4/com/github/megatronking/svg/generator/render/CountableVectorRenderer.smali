.class public abstract Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/render/IVectorRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/megatronking/svg/generator/render/IVectorRenderer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/megatronking/svg/generator/render/CountableVectorRenderer;->mCount:I

    return-void
.end method
