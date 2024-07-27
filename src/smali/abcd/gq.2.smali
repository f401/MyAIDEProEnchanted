.class Labcd/gq;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Labcd/lq;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/iq;


# direct methods
.method constructor <init>(Labcd/iq;)V
    .registers 2

    iput-object p1, p0, Labcd/gq;->j6:Labcd/iq;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Labcd/lq;
    .registers 5

    iget-object v0, p0, Labcd/gq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->v5:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    invoke-static {p1, v0}, Labcd/iq;->j6(II)V

    iget-object v0, p0, Labcd/gq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v1

    iget-object v1, v1, Labcd/Gn;->v5:Labcd/Gn$a;

    iget v1, v1, Labcd/Gn$a;->FH:I

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/iq$a;->QX()Labcd/lq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/gq;->get(I)Labcd/lq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/gq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->v5:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    return v0
.end method
