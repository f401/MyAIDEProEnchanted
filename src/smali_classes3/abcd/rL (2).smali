.class public Labcd/rL;
.super Ljava/lang/Object;


# instance fields
.field j6:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/rL;->j6:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/rL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    iget-object v0, p0, Labcd/rL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    return-object p1
.end method

.method public j6(Labcd/qL;)V
    .registers 3

    iget-object v0, p0, Labcd/rL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
