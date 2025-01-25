.class public Labcd/Zx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final j6:Labcd/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqy<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/qy;

    invoke-direct {v0}, Labcd/qy;-><init>()V

    iput-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/Exception;)Z
    .registers 3

    iget-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->DW(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public DW(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->DW(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j6()Labcd/Yx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    return-object v0
.end method

.method public j6(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/Zx;->j6:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->j6(Ljava/lang/Object;)V

    return-void
.end method
