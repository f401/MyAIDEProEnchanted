.class Labcd/gE$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/gE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field DW:Ljava/lang/String;

.field FH:Ljava/lang/String;

.field Hw:Ljava/lang/String;

.field Zo:Ljava/lang/String;

.field j6:Ljava/lang/String;

.field v5:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/gE$a;-><init>()V

    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_10

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {p0, p1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_10

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method j6(Ljava/lang/String;)Labcd/gE$a;
    .registers 4

    new-instance v0, Labcd/gE$a;

    invoke-direct {v0}, Labcd/gE$a;-><init>()V

    iget-object v1, p0, Labcd/gE$a;->j6:Ljava/lang/String;

    iput-object v1, v0, Labcd/gE$a;->j6:Ljava/lang/String;

    iget-object v1, p0, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object v1, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    iget-object v1, p0, Labcd/gE$a;->FH:Ljava/lang/String;

    iput-object v1, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    iget-object v1, p0, Labcd/gE$a;->Hw:Ljava/lang/String;

    iput-object v1, v0, Labcd/gE$a;->Hw:Ljava/lang/String;

    iput-object p1, v0, Labcd/gE$a;->v5:Ljava/lang/String;

    iget-object p1, p0, Labcd/gE$a;->Zo:Ljava/lang/String;

    iput-object p1, v0, Labcd/gE$a;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-static {v0, p1}, Labcd/gE$a;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-static {p1, p2}, Labcd/gE$a;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-static {v0, p1}, Labcd/gE$a;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-static {p1, p2}, Labcd/gE$a;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-static {p1, p3}, Labcd/gE$a;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/gE$a;->DW:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "<empty>"

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/gE$a;->FH:Ljava/lang/String;

    const-string v2, "."

    if-eqz v0, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v0, p0, Labcd/gE$a;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-object v0, p0, Labcd/gE$a;->v5:Ljava/lang/String;

    if-eqz v0, :cond_34

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
