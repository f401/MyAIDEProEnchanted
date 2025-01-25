.class public Labcd/KB;
.super Labcd/NB;


# instance fields
.field private j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Labcd/VC;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Labcd/VC;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Labcd/NB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Labcd/KB;->j6:Ljava/util/List;

    return-void
.end method
