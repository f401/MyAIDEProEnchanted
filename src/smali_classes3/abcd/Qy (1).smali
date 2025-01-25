.class public Labcd/Qy;
.super Labcd/Py;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LPy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/Qy;-><init>(Labcd/Ry;)V

    return-void
.end method

.method public constructor <init>(Labcd/Ry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRy<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Labcd/Py;-><init>(Labcd/Ry;)V

    return-void
.end method


# virtual methods
.method protected j6(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Labcd/Qy;->DW:Ljava/lang/Object;

    return-object p1
.end method

.method protected j6(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    iput-object p2, p0, Labcd/Qy;->DW:Ljava/lang/Object;

    return-void
.end method
