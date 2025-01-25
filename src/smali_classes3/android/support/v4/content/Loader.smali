.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$a;,
        Landroid/support/v4/content/Loader$b;,
        Landroid/support/v4/content/Loader$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field DW:Landroid/support/v4/content/Loader$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$c<",
            "TD;>;"
        }
    .end annotation
.end field

.field FH:Landroid/support/v4/content/Loader$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field Hw:Landroid/content/Context;

.field VH:Z

.field Zo:Z

.field gn:Z

.field j6:I

.field u7:Z

.field v5:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->VH:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/content/Loader;->Hw:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    return-void
.end method

.method public DW(Landroid/support/v4/content/Loader$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$c;->j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method protected EQ()V
    .registers 1

    return-void
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/support/v4/content/Loader$b;->j6(Landroid/support/v4/content/Loader;)V

    :cond_7
    return-void
.end method

.method public Hw()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->EQ()V

    return-void
.end method

.method protected J0()V
    .registers 1

    return-void
.end method

.method protected J8()V
    .registers 1

    return-void
.end method

.method public QX()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->tp()V

    :cond_7
    return-void
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    return v0
.end method

.method public Ws()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->we()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    return-void
.end method

.method public final XL()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->J0()V

    return-void
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    return v0
.end method

.method public aM()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->J8()V

    return-void
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    return v0
.end method

.method public j3()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->gn:Z

    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    return v0
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILandroid/support/v4/content/Loader$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$c<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-nez v0, :cond_9

    iput-object p2, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    iput p1, p0, Landroid/support/v4/content/Loader;->j6:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/support/v4/content/Loader$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$b<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-nez v0, :cond_7

    iput-object p1, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/support/v4/content/Loader$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$c<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/content/Loader;->j6:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->v5:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->gn:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->u7:Z

    if-eqz p2, :cond_44

    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->v5:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->gn:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->u7:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_44
    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->Zo:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Landroid/support/v4/content/Loader;->VH:Z

    if-eqz p2, :cond_63

    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->Zo:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->VH:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public j6()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->u7()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/Loader;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->Hw()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    :goto_b
    return-void
.end method

.method protected u7()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v5()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/Loader;->Hw:Landroid/content/Context;

    return-object v0
.end method

.method protected we()V
    .registers 1

    return-void
.end method
