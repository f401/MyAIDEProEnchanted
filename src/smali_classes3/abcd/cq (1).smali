.class Labcd/cq;
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
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/iq;


# direct methods
.method constructor <init>(Labcd/iq;)V
    .registers 2

    iput-object p1, p0, Labcd/cq;->j6:Labcd/iq;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/cq;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/cq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->DW:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    invoke-static {p1, v0}, Labcd/iq;->j6(II)V

    iget-object v0, p0, Labcd/cq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v1

    iget-object v1, v1, Labcd/Gn;->DW:Labcd/Gn$a;

    iget v1, v1, Labcd/Gn$a;->FH:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object p1

    invoke-virtual {p1}, Labcd/iq$a;->a8()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/cq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->DW:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    return v0
.end method
