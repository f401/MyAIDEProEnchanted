.class final Labcd/XG$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/XG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final DW:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/QG;",
            ">;"
        }
    .end annotation
.end field

.field final FH:[B

.field final j6:Labcd/LG;


# direct methods
.method constructor <init>(Labcd/LG;Ljava/util/List;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LG;",
            "Ljava/util/List",
            "<",
            "Labcd/QG;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/XG$a;->j6:Labcd/LG;

    iput-object p2, p0, Labcd/XG$a;->DW:Ljava/util/Collection;

    iput-object p3, p0, Labcd/XG$a;->FH:[B

    return-void
.end method


# virtual methods
.method j6()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XG$a;->DW:Ljava/util/Collection;

    return-object v0
.end method
