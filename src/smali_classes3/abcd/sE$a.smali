.class final Labcd/sE$a;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final FH:Labcd/LE;

.field private Hw:I

.field private final Zo:I

.field private v5:I


# direct methods
.method private constructor <init>(Labcd/LE;I)V
    .registers 4

    invoke-direct {p0}, Labcd/jK;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/sE$a;->Hw:I

    iput-object p1, p0, Labcd/sE$a;->FH:Labcd/LE;

    iput p2, p0, Labcd/sE$a;->Zo:I

    div-int/lit8 p2, p2, 0x64

    iput p2, p0, Labcd/sE$a;->v5:I

    if-nez p2, :cond_14

    const/16 p1, 0x3e8

    iput p1, p0, Labcd/sE$a;->v5:I

    :cond_14
    return-void
.end method

.method synthetic constructor <init>(Labcd/LE;ILabcd/sE$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/sE$a;-><init>(Labcd/LE;I)V

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Do not clone this kind of filter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Labcd/sE$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 5

    iget p1, p0, Labcd/sE$a;->Hw:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Labcd/sE$a;->Hw:I

    iget v1, p0, Labcd/sE$a;->v5:I

    rem-int v2, p1, v1

    if-nez v2, :cond_21

    iget v2, p0, Labcd/sE$a;->Zo:I

    if-gt p1, v2, :cond_15

    iget-object p1, p0, Labcd/sE$a;->FH:Labcd/LE;

    invoke-interface {p1, v1}, Labcd/LE;->update(I)V

    :cond_15
    iget-object p1, p0, Labcd/sE$a;->FH:Labcd/LE;

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_21

    :cond_1e
    sget-object p1, Labcd/sD;->j6:Labcd/sD;

    throw p1

    :cond_21
    :goto_21
    return v0
.end method
