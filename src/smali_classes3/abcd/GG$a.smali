.class Labcd/GG$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final j6:Labcd/GG;


# direct methods
.method constructor <init>(Labcd/GG;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/GG$a;->j6:Labcd/GG;

    return-void
.end method


# virtual methods
.method DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->Zo()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method j6()V
    .registers 2

    iget-object v0, p0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0}, Labcd/xE;->j6()V

    return-void
.end method
