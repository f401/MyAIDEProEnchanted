.class Labcd/eq;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/iq;


# direct methods
.method constructor <init>(Labcd/iq;)V
    .registers 2

    iput-object p1, p0, Labcd/eq;->j6:Labcd/iq;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/eq;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/eq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->FH:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    invoke-static {p1, v0}, Labcd/iq;->j6(II)V

    iget-object v0, p0, Labcd/eq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->FH(Labcd/iq;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Labcd/eq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->DW(Labcd/iq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/eq;->j6:Labcd/iq;

    invoke-static {v0}, Labcd/iq;->j6(Labcd/iq;)Labcd/Gn;

    move-result-object v0

    iget-object v0, v0, Labcd/Gn;->FH:Labcd/Gn$a;

    iget v0, v0, Labcd/Gn$a;->DW:I

    return v0
.end method
