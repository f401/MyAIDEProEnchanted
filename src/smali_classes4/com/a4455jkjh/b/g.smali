.class public Lcom/a4455jkjh/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qa;


# instance fields
.field private final a:Labcd/La;


# direct methods
.method public constructor <init>(Labcd/La;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/b/g;->a:Labcd/La;

    return-void
.end method

.method private a(Labcd/Da;II)I
    .registers 8

    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_21

    :cond_1e
    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method private static a(Labcd/ab;)V
    .registers 2

    const-string v0, "parcelable"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "import"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "int"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "String"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "in"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "out"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "inout"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "cpp_header"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "const"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "@nullable"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "@utf8"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "@utf8InCpp"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "interface"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "oneway"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    const-string v0, "boolean"

    invoke-interface {p0, v0}, Labcd/ab;->DW(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DW(Labcd/Sa;Labcd/Ta;III)Labcd/wb;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public DW(Labcd/Na;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public DW(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public DW(Labcd/Da;IIII)V
    .registers 6

    return-void
.end method

.method public DW(Labcd/Sa;Labcd/Ta;II)V
    .registers 5

    return-void
.end method

.method public FH(Labcd/Sa;Labcd/Ta;III)Labcd/wb;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public FH(Labcd/Na;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public FH(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public FH(Labcd/Da;IIII)V
    .registers 6

    return-void
.end method

.method public FH(Labcd/Sa;Labcd/Ta;II)V
    .registers 5

    return-void
.end method

.method public Hw(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public Hw(Labcd/Da;IIII)V
    .registers 6

    return-void
.end method

.method public VH(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public Zo(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public gn(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public j6(Labcd/Sa;Labcd/Ta;III)Labcd/wb;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Na;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;IILabcd/Yb;Labcd/Yb;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;Labcd/Fb;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;Labcd/Fb;Labcd/Yb;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Sa;I)Ljava/util/Set;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Da;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 6

    return-void
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;)V
    .registers 7

    return-void
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;[I[Labcd/Ya;[I)V
    .registers 10

    return-void
.end method

.method public j6(Labcd/Da;IIILabcd/Ya;)V
    .registers 6

    return-void
.end method

.method public j6(Labcd/Da;IILabcd/Ia;)V
    .registers 5

    return-void
.end method

.method public j6(Labcd/Da;IILjava/lang/String;I)V
    .registers 6

    return-void
.end method

.method public j6(Labcd/Da;IILjava/lang/String;IIZ)V
    .registers 8

    return-void
.end method

.method public j6(Labcd/Da;IIZ)V
    .registers 5

    return-void
.end method

.method public j6(Labcd/Da;Labcd/Da;IIII)V
    .registers 7

    return-void
.end method

.method public j6(Labcd/Da;Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)V
    .registers 8

    return-void
.end method

.method public j6(Labcd/Da;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public j6(Labcd/Sa;II)V
    .registers 4

    return-void
.end method

.method public j6(Labcd/Sa;IIIZ)V
    .registers 6

    return-void
.end method

.method public j6(Labcd/Sa;Labcd/Da;Labcd/na;II)V
    .registers 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a4455jkjh/b/g;->a:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p2}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const/4 v3, 0x1

    const-string v4, "AIDL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "AUTO HINT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/a4455jkjh/b/c;->a([Ljava/lang/Object;)V

    const-string v2, ".aidl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Labcd/ab;->j6()V

    invoke-static {v0}, Lcom/a4455jkjh/b/g;->a(Labcd/ab;)V

    invoke-direct {p0, p2, p4, p5}, Lcom/a4455jkjh/b/g;->a(Labcd/Da;II)I

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v7, v6

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    :goto_35
    return-void

    :cond_36
    invoke-interface {v0, p2, p4, p5}, Labcd/ab;->DW(Labcd/Da;II)V

    goto :goto_35
.end method

.method public j6(Labcd/nb;Labcd/Da;IILjava/lang/String;Ljava/util/List;)V
    .registers 7

    return-void
.end method

.method public j6(Labcd/Da;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/Ia;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;Labcd/Cb;)Z
    .registers 8

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/Sa;Labcd/Ta;II)[I
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public u7(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public v5(Labcd/Da;II)V
    .registers 4

    return-void
.end method

.method public v5(Labcd/Da;IIII)V
    .registers 6

    return-void
.end method
