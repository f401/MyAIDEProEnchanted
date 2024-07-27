.class public Labcd/gd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x22a2d85d3c0eed00L
    .end annotation
.end field

.field private final Hw:Labcd/Va;
    .annotation runtime Labcd/ru;
        field = -0x1f04293837c77f3cL
    .end annotation
.end field

.field private final VH:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0xd37dd92deb3ef2fL
    .end annotation
.end field

.field private final Zo:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = -0x5e27f00aa79056fL
    .end annotation
.end field

.field private final gn:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = 0x4af1ce1efaf66f9L
    .end annotation
.end field

.field private final v5:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x1f8236be34991685L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x41e031d7867c2573L    # -1.8513124141856157E-9

    const-class v0, Labcd/gd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/yd;)V
    .registers 10

    const-wide v2, -0x2ebfca38e2afa940L    # -2.460218574313146E83

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ebfca38e2afa940L    # -2.460218574313146E83

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v0, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v0, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v0, p0, Labcd/gd;->v5:Labcd/Ba;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v0, p0, Labcd/gd;->Zo:Labcd/Ga;

    iget-object v0, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v0, p0, Labcd/gd;->VH:Labcd/Ea;

    iput-object p2, p0, Labcd/gd;->gn:Labcd/yd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(Labcd/Sa;IZ)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x24afd93a69881d27L
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x2

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0xde2f22473842bd5L    # -4.843334170793949E241

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "/**\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n *\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-le v0, v7, :cond_4

    move v1, v6

    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * @param    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "AEIOUaeiou"

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const-string v4, "an "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v5}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v4, "a  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, -0xde2f22473842bd5L    # -4.843334170793949E241

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    const-string v0, " *\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_5

    const-string v0, " * @return   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEIOUaeiou"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    const-string v1, "an "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v3, 0x6

    invoke-virtual {p1, p2, v3}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n * \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-lez v0, :cond_8

    move v1, v6

    :goto_3
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " * @exception   "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    invoke-virtual {v0, p1, v3}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_3

    :cond_6
    const-string v1, "a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_7
    const-string v0, " *\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz p3, :cond_9

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * @version  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string v0, " */"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private DW(Labcd/Sa;I)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x22edfc9edf72868L
    .end annotation

    const-wide v2, 0x59d47154bc98764L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/gd;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x59d47154bc98764L

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->we(I)I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v4, v1}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {p1, v6}, Labcd/Sa;->P8(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x4b

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private FH(Labcd/Sa;IZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xdc22ef6e68c5b0dL
    .end annotation

    const-wide v8, -0x2737cfb610dbad5bL    # -4.879772037498783E119

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x2737cfb610dbad5bL    # -4.879772037498783E119

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Labcd/gd;->FH(Labcd/Sa;IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_3

    :try_start_1
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->v5(Labcd/Sa;IZ)V
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    :try_start_3
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ba;->DW(Labcd/Da;Labcd/na;I)Labcd/Ia;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->Hw(Labcd/Sa;IZ)V
    :try_end_3
    .catch Labcd/jc; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private FH(Labcd/Sa;I)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x82d85df6309ca50L
    .end annotation

    const-wide v2, -0x10161eec390edc00L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/gd;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x10161eec390edc00L

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->we(I)I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v4, v1}, Labcd/Sa;->Zo(II)I

    move-result v6

    invoke-virtual {p1, v6}, Labcd/Sa;->P8(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x56

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private Hw(Labcd/Sa;IZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x23c96770b7aba88L
    .end annotation

    const-wide v8, -0x348d77b1b673f70L    # -5.777528037983039E292

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x348d77b1b673f70L    # -5.777528037983039E292

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->j6(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/gd;->j6(Labcd/Sa;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/lang/String;)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2c885df4c90fc671L
    .end annotation

    const-wide v4, 0x299b1a9ad377acadL    # 2.885185599439661E-108

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x299b1a9ad377acadL    # 2.885185599439661E-108

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v1, v2

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return v0
.end method

.method private static j6(I)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xd019d75fa525814L
    .end annotation

    const-wide v4, -0x23d3ba8db4cb338L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23d3ba8db4cb338L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-array v1, p0, [C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Labcd/Ia;Z)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7e2f3da2f205989L
    .end annotation

    const-wide v2, 0xd3e879568f4e569L

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0xd3e879568f4e569L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v0

    instance-of v1, v0, Labcd/yd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Labcd/Ia;->Zo()Labcd/Da;

    move-result-object v1

    iget-object v4, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {p1}, Labcd/Aa;->QX()Labcd/na;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Ia;->j6()I

    move-result v4

    invoke-virtual {v1, v4}, Labcd/Sa;->rN(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v1, v4}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x7c

    if-eq v5, v6, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, v1, v4, p2}, Labcd/gd;->DW(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v1}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x131b395eeefa5a08L
    .end annotation

    sget-boolean v2, Labcd/gd;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x33b18701b3773a0L

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XL()I

    move-result v4

    const/4 v2, 0x0

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Labcd/Ia;->FH(Labcd/Ya;)Labcd/Ya;
    :try_end_0
    .catch Labcd/jc; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_1
    const-string v3, "@Override\n"

    :try_start_1
    invoke-static {v4}, Labcd/Ma;->J8(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@Override\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "public "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v4}, Labcd/Ma;->J0(I)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "protected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :goto_0
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Labcd/gd;->Zo:Labcd/Ga;

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->we()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_1
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Labcd/Ia;->DW(Labcd/Ya;)I

    move-result v6

    if-lez v6, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_7

    if-lez v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Labcd/Ia;->Zo(I)Labcd/Ja;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Labcd/Aa;->a8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Labcd/Ja;->x9()I

    move-result v10

    if-lez v10, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extends "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_6

    if-lez v4, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " & "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v9, v0, v4}, Labcd/Ja;->j6(Labcd/Ya;I)Labcd/Ya;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, p1, p2, v0, v11}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual/range {p6 .. p6}, Labcd/ua;->ye()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_2

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    :goto_4
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->u7()Labcd/qa;

    move-result-object v4

    move/from16 v0, p3

    invoke-interface {v4, p1, p2, v0, v2}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_5
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    const-string v3, "("

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v9, :cond_b

    :try_start_2
    iget-object v10, p0, Labcd/gd;->Zo:Labcd/Ga;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Labcd/Ia;->v5(I)I

    move-result v11

    invoke-virtual {v10, v11}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v11

    invoke-interface {v11}, Labcd/na;->u7()Labcd/qa;

    move-result-object v11

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Labcd/Ia;->FH(Labcd/Ya;I)Labcd/Ya;

    move-result-object v12

    move/from16 v0, p3

    invoke-interface {v11, p1, p2, v0, v12}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Labcd/jc; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const-string v3, ""

    move-object v6, v3

    goto/16 :goto_4

    :cond_a
    const-string v3, ""

    move-object v5, v3

    goto :goto_5

    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->cb()I
    :try_end_3
    .catch Labcd/jc; {:try_start_3 .. :try_end_3} :catch_0

    move-result v10

    const-string v3, ""

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v10, :cond_d

    :try_start_4
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Labcd/Ia;->j6(ILabcd/Ya;)Labcd/Ya;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    move/from16 v0, p3

    invoke-interface {v3, p1, p2, v0, v11}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Labcd/jc; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    const-string v3, " throws "

    goto :goto_8

    :cond_d
    :try_start_5
    iget-object v4, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->gn:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_9
    invoke-virtual/range {p6 .. p6}, Labcd/ua;->g3()Z
    :try_end_5
    .catch Labcd/jc; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-eqz v3, :cond_f

    const-string v2, ";\n"

    :goto_a
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    return-object v2

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_9

    :cond_f
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XG()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I
    :try_end_6
    .catch Labcd/jc; {:try_start_6 .. :try_end_6} :catch_0

    move-result v10

    const-string v2, "{\nsuper("

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v10, :cond_11

    if-eqz v3, :cond_10

    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/gd;->Zo:Labcd/Ga;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Labcd/Ia;->v5(I)I

    move-result v12

    invoke-virtual {v2, v12}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");\n}\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_12
    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->XX()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Labcd/Ya;->dx()I
    :try_end_7
    .catch Labcd/jc; {:try_start_7 .. :try_end_7} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14

    const/4 v3, 0x3

    if-eq v2, v3, :cond_13

    const/4 v3, 0x5

    if-eq v2, v3, :cond_13

    const/4 v3, 0x7

    if-eq v2, v3, :cond_13

    const/16 v3, 0x9

    if-eq v2, v3, :cond_13

    packed-switch v2, :pswitch_data_0

    const-string v2, "{\nreturn null;\n}\n"

    goto/16 :goto_a

    :pswitch_0
    const-string v2, "{\nreturn false;\n}\n"

    goto/16 :goto_a

    :cond_13
    :pswitch_1
    const-string v2, "{\nreturn 0;\n}\n"

    goto/16 :goto_a

    :cond_14
    const-string v2, "{\n}\n"

    goto/16 :goto_a

    :cond_15
    :try_start_8
    invoke-virtual {v2}, Labcd/Ya;->dx()I
    :try_end_8
    .catch Labcd/jc; {:try_start_8 .. :try_end_8} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    const-string v2, "{\nreturn super."

    :goto_d
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Labcd/Ia;->vJ()I

    move-result v10

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v10, :cond_18

    if-eqz v2, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/gd;->Zo:Labcd/Ga;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Labcd/Ia;->v5(I)I

    move-result v12

    invoke-virtual {v3, v12}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Labcd/jc; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    const-string v2, "{\nsuper."

    goto :goto_d

    :cond_18
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Labcd/jc; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v2

    goto/16 :goto_a

    :catch_0
    move-exception v2

    :goto_f
    const-string v2, ""

    goto/16 :goto_b

    :catch_1
    move-exception v2

    goto :goto_f

    :cond_19
    move-object v8, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private j6(Labcd/Sa;IZ)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x19bfd9bc374b9278L
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x1945006d4a26f72cL    # 6.033460619042034E-187

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "/**\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " * Constructor\n *\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-le v0, v7, :cond_4

    move v1, v6

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " * @param    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "AEIOUaeiou"

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const-string v4, "an "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v5}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Labcd/Fd;->Mr(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v4, "a  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x1945006d4a26f72cL    # 6.033460619042034E-187

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    const-string v0, " *\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-lez v0, :cond_6

    move v1, v6

    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v1, v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " * @exception   "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0

    invoke-interface {v0}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    check-cast v0, Labcd/Fd;

    invoke-virtual {v0, p1, v3}, Labcd/Fd;->rN(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v0, " *\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz p3, :cond_7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " * @version  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v0, " */"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2e092f2191bbe5e0L
    .end annotation

    const-wide v2, 0x2e8b019858c40080L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x2e8b019858c40080L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Labcd/gd;->j6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/Sa;ILjava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x153f5cf5e0593813L
    .end annotation

    const-wide v8, -0x3fb2e39fa01e5de1L    # -58.22169111745119

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x3fb2e39fa01e5de1L    # -58.22169111745119

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v4

    const/4 v5, 0x1

    const-string v6, "\n"

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v2

    invoke-virtual {p1, p2}, Labcd/Sa;->vy(I)I

    move-result v3

    invoke-direct {p0, p3}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Labcd/hb;->j6(Labcd/Da;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/Sa;I)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x15c97eec88015540L
    .end annotation

    const-wide v2, -0x13ca37e3424cab00L    # -1.8331942712742598E213

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x13ca37e3424cab00L    # -1.8331942712742598E213

    invoke-static {v6, v7, p0, p1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->we(I)I

    move-result v5

    if-ne v5, v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, p2, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {p1, v4}, Labcd/Sa;->we(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private v5(Labcd/Sa;IZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x245994f81ca7f8ddL
    .end annotation

    const-wide v8, 0x802134193e979fbL

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x802134193e979fbL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/gd;->DW(Labcd/Sa;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labcd/gd;->j6(Labcd/Sa;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW(Labcd/Da;II)V
    .registers 21

    :try_start_0
    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x31c55d4d617dacb3L    # 6.191030766468001E-69

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->aM()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/gd;->gn:Labcd/yd;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v5

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Labcd/Sa;->v5(IIII)I

    move-result v8

    const/4 v4, -0x1

    if-ne v8, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    const-string v5, "Select a place inside a class."

    invoke-interface {v4, v5}, Labcd/hb;->v5(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v5, v4}, Labcd/Sa;->QX(I)I

    move-result v6

    const/4 v4, 0x0

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v5, v4}, Labcd/Sa;->Ws(I)I

    move-result v7

    invoke-virtual {v5, v8}, Labcd/Sa;->we(I)I

    move-result v9

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v10

    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v11

    move/from16 v0, p2

    if-lt v11, v0, :cond_2

    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_3

    invoke-virtual {v5, v10}, Labcd/Sa;->Ws(I)I

    move-result v11

    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    :cond_2
    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v5, v10}, Labcd/Sa;->Ws(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->v5:Labcd/Ba;

    invoke-virtual {v5}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v5, v8}, Labcd/Sa;->er(I)I

    move-result v8

    invoke-virtual {v5, v8}, Labcd/Sa;->J8(I)I

    move-result v8

    invoke-virtual {v4, v9, v10, v8}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :try_start_2
    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v4

    invoke-interface {v4, v5}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v15, Labcd/Yb;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v15, v4}, Labcd/Yb;-><init>(Labcd/Ba;)V

    new-instance v12, Labcd/Ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v12, v4}, Labcd/Ab;-><init>(Labcd/Ba;)V

    invoke-virtual {v10}, Labcd/ua;->XG()Labcd/Hb;

    move-result-object v8

    iget-object v4, v8, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v4}, Labcd/Hb$a;->DW()V

    :cond_5
    :goto_2
    iget-object v4, v8, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v4}, Labcd/Hb$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v8, Labcd/Hb;->Hw:Labcd/Hb$a;

    invoke-virtual {v4}, Labcd/Hb$a;->Hw()Labcd/Aa;

    move-result-object v4

    check-cast v4, Labcd/Ia;

    invoke-virtual {v4}, Labcd/Ia;->XL()I

    move-result v9

    invoke-static {v9}, Labcd/Ma;->j6(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Labcd/Ia;->FH()Labcd/ua;

    move-result-object v9

    if-eq v9, v10, :cond_5

    invoke-virtual {v12, v4}, Labcd/Ab;->j6(Labcd/Aa;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    :goto_3
    sget-boolean v4, Labcd/gd;->DW:Z

    if-eqz v4, :cond_6

    const-wide v6, 0x31c55d4d617dacb3L    # 6.191030766468001E-69

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v5

    :cond_7
    :try_start_3
    invoke-virtual {v12}, Labcd/Ab;->Hw()I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    const-string v6, "This class has no unimplemented methods."

    invoke-interface {v4, v6}, Labcd/hb;->v5(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v5}, Labcd/Va;->j6(Labcd/Sa;)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Labcd/fd;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Labcd/fd;-><init>(Labcd/gd;)V

    invoke-virtual {v12, v4}, Labcd/Ab;->j6(Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const-string v14, ""

    const/4 v4, 0x0

    move v11, v4

    :goto_4
    :try_start_4
    invoke-virtual {v12}, Labcd/Ab;->Hw()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-ge v11, v4, :cond_f

    :try_start_5
    invoke-virtual {v12, v11}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v9

    check-cast v9, Labcd/Ia;

    invoke-virtual {v14}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result v4

    if-nez v4, :cond_9

    const-string v14, "\n"

    :cond_9
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v8}, Labcd/La;->Hw()Labcd/va;

    move-result-object v8

    iget-boolean v8, v8, Labcd/va;->Hw:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v8, :cond_d

    :try_start_7
    invoke-virtual {v9}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d

    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, "\n"

    invoke-direct {v13, v8, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    const-string v8, "/**\n"

    :goto_5
    :try_start_8
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " *"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*/"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v8

    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v13}, Labcd/La;->Hw()Labcd/va;

    move-result-object v13

    iget-boolean v13, v13, Labcd/va;->v5:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v13, :cond_b

    :try_start_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v8}, Labcd/La;->Hw()Labcd/va;

    move-result-object v8

    iget-boolean v8, v8, Labcd/va;->Zo:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Labcd/gd;->j6(Labcd/Ia;Z)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v8

    :cond_b
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    move-result v13

    if-lez v13, :cond_c

    :try_start_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v4

    :cond_c
    :try_start_d
    invoke-virtual {v10}, Labcd/ua;->Gj()Labcd/Ya;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Labcd/gd;->j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v14

    :try_start_e
    invoke-virtual {v9}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v4

    invoke-virtual {v15, v4}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v9}, Labcd/Ia;->vJ()I

    move-result v8

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v8, :cond_e

    invoke-virtual {v9, v4}, Labcd/Ia;->gn(I)Labcd/Ya;

    move-result-object v13

    invoke-virtual {v15, v13}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_e
    .catch Labcd/jc; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const-string v8, ""

    goto :goto_6

    :catch_1
    move-exception v4

    :cond_e
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_4

    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v8, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v9, p1

    move v10, v6

    move v11, v7

    move v12, v6

    move v13, v7

    invoke-interface/range {v8 .. v14}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v7}, Labcd/hb;->j6(Labcd/Da;II)V

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->u7()Labcd/qa;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    move-result-object v4

    :try_start_10
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1, v15}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {v5}, Labcd/Sa;->tp()I

    move-result v8

    invoke-virtual {v5}, Labcd/Sa;->u7()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v6, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v7, p1

    move v10, v8

    move v11, v9

    invoke-interface/range {v6 .. v12}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v5}, Labcd/Va;->j6(Labcd/Sa;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->EQ()V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :catch_3
    move-exception v5

    goto/16 :goto_3
.end method

.method public DW(Labcd/Da;IIII)V
    .registers 29

    :try_start_0
    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1ac9b11e17a910L

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v11}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->aM()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/gd;->gn:Labcd/yd;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Labcd/Sa;->Zo(IIII)Labcd/Cb;

    move-result-object v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    const v6, 0x7f0d0777

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/hb;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v15}, Labcd/Va;->j6(Labcd/Sa;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {v16 .. v16}, Labcd/Cb;->Hw()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v15, v5}, Labcd/Sa;->P8(I)I

    move-result v5

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v15, v5}, Labcd/Sa;->QX(I)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->Ws(I)I

    move-result v7

    :goto_2
    const/4 v4, -0x1

    if-ne v6, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    const v6, 0x7f0d0778

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/hb;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v15}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_3
    sget-boolean v4, Labcd/gd;->DW:Z

    if-eqz v4, :cond_2

    const-wide v6, -0x1ac9b11e17a910L

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v5

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    const/4 v7, -0x1

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    :try_start_1
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Labcd/Sa;->v5(IIII)I

    move-result v8

    invoke-virtual {v15, v8}, Labcd/Sa;->er(I)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->P8(I)I

    const/4 v5, 0x2

    invoke-virtual {v15, v4, v5}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v15, v8}, Labcd/Sa;->we(I)I

    move-result v9

    if-ge v4, v9, :cond_6

    invoke-virtual {v15, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v9

    invoke-virtual {v15, v9}, Labcd/Sa;->P8(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_e

    const/16 v11, 0x7b

    if-eq v10, v11, :cond_d

    const/16 v11, 0x7e

    if-eq v10, v11, :cond_e

    :cond_6
    const-string v8, ""

    const-string v10, ""

    const/4 v4, 0x0

    move v9, v4

    :goto_5
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Labcd/Cb;->Hw()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-ge v9, v4, :cond_1a

    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v11, 0x7e

    if-ne v4, v11, :cond_19

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->we(I)I

    move-result v17

    const/4 v4, 0x3

    move v14, v4

    :goto_6
    move/from16 v0, v17

    if-ge v14, v0, :cond_19

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v15, v4, v14}, Labcd/Sa;->Zo(II)I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v15, v11, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v12}, Labcd/La;->Hw()Labcd/va;

    move-result-object v12

    iget-object v12, v12, Labcd/va;->FH:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v12, :cond_f

    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v12}, Labcd/La;->Hw()Labcd/va;

    move-result-object v12

    iget-object v12, v12, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v12}, Labcd/La;->Hw()Labcd/va;

    move-result-object v12

    iget-object v12, v12, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    :cond_7
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    invoke-virtual {v15, v11, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v15, v4}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Labcd/gd;->j6(Labcd/Sa;I)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x1

    invoke-virtual {v15, v11, v12}, Labcd/Sa;->Zo(II)I

    move-result v12

    invoke-virtual {v15, v12}, Labcd/Sa;->we(I)I

    move-result v12

    if-nez v12, :cond_1b

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v12, "IS"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v12, v13

    :goto_7
    invoke-virtual {v15}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->v5()Labcd/pa;

    move-result-object v4

    check-cast v4, Labcd/Fd;

    invoke-virtual {v4, v15, v11}, Labcd/Fd;->U2(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->v5:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/**\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* Sets "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* @param    "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "AEIOUaeiou"

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "an "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-boolean v11, v11, Labcd/va;->Zo:Z

    if-eqz v11, :cond_8

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*\n* @version  "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->v5:Z

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v22, "/**\n"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* Returns "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* @return    "

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v18, "AEIOUaeiou"

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "an "

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Labcd/gd;->FH:Labcd/La;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Labcd/La;->Hw()Labcd/va;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Labcd/va;->Zo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*\n* @version  "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Labcd/gd;->DW(Labcd/Sa;I)Z

    move-result v18

    if-nez v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "public "

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "static "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "void "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-boolean v11, v11, Labcd/va;->gn:Z

    if-eqz v11, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_c
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "{\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v11

    if-eqz v11, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";\n}"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_b
    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "public "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Labcd/Cb;->DW(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "()"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v10}, Labcd/La;->Hw()Labcd/va;

    move-result-object v10

    iget-boolean v10, v10, Labcd/va;->gn:Z

    if-eqz v10, :cond_18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{\nreturn "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";\n}"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v10

    add-int/lit8 v4, v14, 0x2

    move v14, v4

    goto/16 :goto_6

    :cond_d
    :try_start_6
    invoke-virtual {v15, v9}, Labcd/Sa;->QX(I)I

    move-result v10

    invoke-virtual {v15, v9}, Labcd/Sa;->vy(I)I

    move-result v11

    if-ne v10, v11, :cond_e

    invoke-virtual {v15, v9}, Labcd/Sa;->Ws(I)I

    move-result v10

    invoke-virtual {v15, v9}, Labcd/Sa;->BT(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    if-eq v10, v11, :cond_6

    :cond_e
    invoke-virtual {v15, v9}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v15, v9}, Labcd/Sa;->Ws(I)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_f
    :goto_10
    :try_start_7
    const-string v12, "_"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :try_start_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v4

    goto :goto_10

    :cond_10
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto/16 :goto_7

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a  "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_12
    move-object v11, v8

    goto/16 :goto_9

    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    :cond_14
    move-object v4, v8

    goto/16 :goto_b

    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c

    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "this."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "{\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";\n}"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_e

    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    :cond_19
    move-object v4, v5

    add-int/lit8 v9, v9, 0x1

    move-object v5, v4

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v5, p1

    move v8, v6

    move v9, v7

    invoke-interface/range {v4 .. v10}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Labcd/gd;->j6(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result v5

    add-int/2addr v5, v6

    :try_start_a
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v5}, Labcd/hb;->j6(Labcd/Da;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v15}, Labcd/Va;->j6(Labcd/Sa;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->VH()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_3

    :cond_1b
    move-object v12, v4

    goto/16 :goto_7
.end method

.method public j6(Labcd/Da;)V
    .registers 8

    const-wide v4, 0x544abad7e6a11507L    # 1.1418925556198118E98

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x544abad7e6a11507L    # 1.1418925556198118E98

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->aM()I

    move-result v1

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->Zo:Z

    invoke-direct {p0, v0, v1, v2}, Labcd/gd;->FH(Labcd/Sa;IZ)V

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/gd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;II)V
    .registers 14

    const-wide v8, -0x1ca02349c6b48bfL    # -9.204671098072554E299

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1ca02349c6b48bfL    # -9.204671098072554E299

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    iget-object v0, p0, Labcd/gd;->Hw:Labcd/Va;

    iget-object v1, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->EQ(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a method to documentize."

    invoke-interface {v0, v1}, Labcd/hb;->u7(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->Zo:Z

    invoke-direct {p0, v0, v1, v2}, Labcd/gd;->v5(Labcd/Sa;IZ)V

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v0, v1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->Zo:Z

    invoke-direct {p0, v0, v1, v2}, Labcd/gd;->Hw(Labcd/Sa;IZ)V

    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->J8()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    const-string v1, "Select a method to documentize."

    invoke-interface {v0, v1}, Labcd/hb;->u7(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 26

    :try_start_0
    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x4ad3eaa1dc15a817L    # 2.980663761071018E52

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v11}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->aM()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/gd;->gn:Labcd/yd;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v13

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v13, v0, v1, v2, v3}, Labcd/Sa;->Zo(IIII)Labcd/Cb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f0d077a

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v14, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4, v5}, Labcd/hb;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v13}, Labcd/Va;->j6(Labcd/Sa;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v14}, Labcd/Cb;->Hw()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_4

    invoke-virtual {v14, v4}, Labcd/Cb;->DW(I)I

    move-result v6

    invoke-virtual {v13, v6}, Labcd/Sa;->P8(I)I

    move-result v6

    const/16 v7, 0x7e

    if-ne v6, v7, :cond_3

    invoke-virtual {v14, v4}, Labcd/Cb;->DW(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v14, v4}, Labcd/Cb;->DW(I)I

    move-result v6

    invoke-virtual {v13, v6}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v14, v4}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v13, v4}, Labcd/Sa;->Ws(I)I

    move-result v7

    :goto_2
    const/4 v4, -0x1

    if-ne v6, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4, v5}, Labcd/hb;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v13}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_3
    sget-boolean v4, Labcd/gd;->DW:Z

    if-eqz v4, :cond_2

    const-wide v6, 0x4ad3eaa1dc15a817L    # 2.980663761071018E52

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v5

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    const/4 v7, -0x1

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    :try_start_2
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v13, v0, v1, v2, v3}, Labcd/Sa;->v5(IIII)I

    move-result v5

    invoke-virtual {v13, v5}, Labcd/Sa;->er(I)I

    move-result v8

    invoke-virtual {v13, v8}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v9, 0x78

    if-eq v4, v9, :cond_6

    const/16 v9, 0x79

    if-eq v4, v9, :cond_6

    const/16 v9, 0xdc

    if-eq v4, v9, :cond_6

    const/16 v9, 0xdd

    if-eq v4, v9, :cond_6

    const/16 v9, 0xe3

    if-eq v4, v9, :cond_6

    const/16 v9, 0xe4

    if-eq v4, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    const v6, 0x7f0d077b

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/hb;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v13}, Labcd/Va;->j6(Labcd/Sa;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v13, v5}, Labcd/Sa;->we(I)I

    move-result v9

    if-ge v4, v9, :cond_7

    invoke-virtual {v13, v5, v4}, Labcd/Sa;->Zo(II)I

    move-result v9

    invoke-virtual {v13, v9}, Labcd/Sa;->P8(I)I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_b

    const/16 v11, 0x7e

    if-eq v10, v11, :cond_b

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "public "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v13, v8, v5}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {v13, v5}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    const-string v4, ""

    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v5}, Labcd/La;->Hw()Labcd/va;

    move-result-object v5

    iget-boolean v5, v5, Labcd/va;->v5:Z

    if-eqz v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/**\n* Constructor\n*\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    :cond_8
    const-string v8, "\n{"

    const/4 v10, 0x0

    move-object v5, v4

    :goto_5
    :try_start_4
    invoke-virtual {v14}, Labcd/Cb;->Hw()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-ge v10, v4, :cond_10

    :try_start_5
    invoke-virtual {v14, v10}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v13, v4}, Labcd/Sa;->P8(I)I

    move-result v4

    const/16 v11, 0x7e

    if-ne v4, v11, :cond_13

    invoke-virtual {v14, v10}, Labcd/Cb;->DW(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Labcd/gd;->FH(Labcd/Sa;I)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v14, v10}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v13, v4}, Labcd/Sa;->we(I)I

    move-result v15

    const/4 v4, 0x3

    move v12, v4

    :goto_6
    if-ge v12, v15, :cond_f

    invoke-virtual {v14, v10}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {v13, v4, v12}, Labcd/Sa;->Zo(II)I

    move-result v16

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0, v4}, Labcd/Sa;->Zo(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-object v11, v11, Labcd/va;->FH:Ljava/lang/String;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-object v11, v11, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v11}, Labcd/La;->Hw()Labcd/va;

    move-result-object v11

    iget-object v11, v11, Labcd/va;->FH:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Labcd/Sa;->aM(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v13}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->v5()Labcd/pa;

    move-result-object v4

    check-cast v4, Labcd/Fd;

    move/from16 v0, v16

    invoke-virtual {v4, v13, v0}, Labcd/Fd;->U2(Labcd/Sa;I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "("

    invoke-virtual {v9, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "this."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v8}, Labcd/La;->Hw()Labcd/va;

    move-result-object v8

    iget-boolean v8, v8, Labcd/va;->v5:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* @param    "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-static {v11, v5}, Labcd/gd;->j6(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "AEIOUaeiou"

    const/4 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "an "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v5

    :cond_a
    add-int/lit8 v11, v12, 0x2

    move-object v8, v4

    move v12, v11

    goto/16 :goto_6

    :cond_b
    :try_start_6
    invoke-virtual {v13, v9}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v13, v9}, Labcd/Sa;->Ws(I)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_c
    :goto_a
    :try_start_7
    const-string v11, "_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "a  "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_f
    move-object v4, v8

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object v8, v4

    goto/16 :goto_5

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n}"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-boolean v9, v9, Labcd/va;->v5:Z

    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-boolean v9, v9, Labcd/va;->Zo:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "*\n* @version  "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "*/\n"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v5, p1

    move v8, v6

    move v9, v7

    invoke-interface/range {v4 .. v10}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Labcd/gd;->j6(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result v5

    add-int/2addr v5, v6

    :try_start_8
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v5}, Labcd/hb;->j6(Labcd/Da;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v13}, Labcd/Va;->j6(Labcd/Sa;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->VH()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_3

    :cond_13
    move-object v4, v8

    goto/16 :goto_b

    :cond_14
    move-object v11, v4

    goto/16 :goto_7
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;)V
    .registers 19

    sget-boolean v2, Labcd/gd;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x43dd9cab2e32afL

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->gn()Labcd/ia;

    move-result-object v4

    move/from16 v0, p4

    invoke-interface {v4, v0}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v4

    invoke-interface {v4, v3}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v2, v3, p2, p3, v0}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Labcd/Ma;->Hw(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Labcd/Yb;

    iget-object v4, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v2, v4}, Labcd/Yb;-><init>(Labcd/Ba;)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->u7()Labcd/qa;

    move-result-object v4

    invoke-interface {v4, v3, p2, p3, v2}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Labcd/Sa;->tp()I

    move-result v10

    invoke-virtual {v3}, Labcd/Sa;->u7()I

    move-result v11

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v3}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->aM()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v3, p2, 0x2

    invoke-interface {v2, p1, p2, v3}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, v10

    move v5, v11

    move v6, v10

    move v7, v11

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :goto_0
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->j3()V

    return-void

    :cond_2
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v3, p2, 0x2

    invoke-interface {v2, p1, p2, v3}, Labcd/hb;->j6(Labcd/Da;II)V

    goto :goto_0
.end method

.method public j6(Labcd/Da;IIIILabcd/Ya;[I[Labcd/Ya;[I)V
    .registers 22

    sget-boolean v2, Labcd/gd;->j6:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-wide v2, -0x2a1cea566f214fedL    # -5.471318299035649E105

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    const/4 v6, 0x6

    aput-object p7, v5, v6

    const/4 v6, 0x7

    aput-object p8, v5, v6

    const/16 v6, 0x8

    aput-object p9, v5, v6

    invoke-static {v2, v3, p0, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    iget-object v3, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v2, p1, v3}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v5

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v2}, Labcd/La;->Hw()Labcd/va;

    move-result-object v2

    iget-boolean v2, v2, Labcd/va;->v5:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->gn()Labcd/ia;

    move-result-object v3

    move/from16 v0, p4

    and-int/lit16 v6, v0, -0x4001

    invoke-interface {v3, v6}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v3

    invoke-interface {v3, v5}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v2, v5, p2, p3, v0}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p8

    array-length v6, v0

    if-ge v3, v6, :cond_2

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    aget v7, p7, v3

    invoke-interface {v2, v7}, Labcd/ia;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    aget-object v7, p8, v3

    invoke-interface {v2, v5, p2, p3, v7}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    aget v7, p9, v3

    invoke-virtual {v2, v7}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Labcd/Ma;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    new-instance v3, Labcd/Yb;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v3, v2}, Labcd/Yb;-><init>(Labcd/Ba;)V

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Labcd/Yb;->DW(Labcd/Aa;)V

    move v2, v4

    :goto_2
    move-object/from16 v0, p8

    array-length v4, v0

    if-ge v2, v4, :cond_5

    aget-object v4, p8, v2

    invoke-virtual {v3, v4}, Labcd/Yb;->DW(Labcd/Aa;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Labcd/Ya;->dx()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{\n}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{\nreturn "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v5, p2, p3, v3}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Labcd/Sa;->tp()I

    move-result v10

    invoke-virtual {v5}, Labcd/Sa;->u7()I

    move-result v11

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v5}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->aM()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-direct {p0, v8}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p2

    invoke-interface {v2, p1, p2, v3}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, v10

    move v5, v11

    move v6, v10

    move v7, v11

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :goto_3
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v2}, Labcd/hb;->j3()V

    return-void

    :cond_6
    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v8}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->gn:Labcd/hb;

    invoke-direct {p0, v8}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p2

    invoke-interface {v2, p1, p2, v3}, Labcd/hb;->j6(Labcd/Da;II)V

    goto :goto_3
.end method

.method public j6(Labcd/Da;IIILabcd/Ya;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/gd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1d077d17c753cd8L

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->U2:Labcd/Va;

    iget-object v1, p0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v1

    invoke-interface {v1}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v1

    invoke-interface {v1, v0}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v0, p2, p3, p5}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v2, p4}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->gn()Labcd/ia;

    move-result-object v2

    invoke-interface {v2, p5}, Labcd/ia;->j6(Labcd/Ya;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    new-instance v1, Labcd/Yb;

    iget-object v2, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-direct {v1, v2}, Labcd/Yb;-><init>(Labcd/Ba;)V

    invoke-virtual {v1, p5}, Labcd/Yb;->DW(Labcd/Aa;)V

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2, v0, p2, p3, v1}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Labcd/Sa;->tp()I

    move-result v8

    invoke-virtual {v0}, Labcd/Sa;->u7()I

    move-result v9

    iget-object v1, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->aM()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v1, p2, 0x2

    invoke-interface {v0, p1, p2, v1}, Labcd/hb;->j6(Labcd/Da;II)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    move-object v1, p1

    move v2, v8

    move v3, v9

    move v4, v8

    move v5, v9

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v0}, Labcd/hb;->j3()V

    return-void

    :cond_2
    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    iget-object v0, p0, Labcd/gd;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->gn:Labcd/hb;

    add-int/lit8 v1, p2, 0x2

    invoke-interface {v0, p1, p2, v1}, Labcd/hb;->j6(Labcd/Da;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/gd;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x1d077d17c753cd8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Labcd/Da;IILabcd/Ia;)V
    .registers 21

    :try_start_0
    sget-boolean v4, Labcd/gd;->j6:Z

    if-eqz v4, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x6cb85cb2092a593L

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v10}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->aM()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/gd;->gn:Labcd/yd;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v5

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Labcd/Sa;->v5(IIII)I

    move-result v8

    const/4 v4, -0x1

    if-ne v8, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    const-string v5, "Select a place inside a class."

    invoke-interface {v4, v5}, Labcd/hb;->v5(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v5, v4}, Labcd/Sa;->QX(I)I

    move-result v6

    const/4 v4, 0x0

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-virtual {v5, v4}, Labcd/Sa;->Ws(I)I

    move-result v7

    invoke-virtual {v5, v8}, Labcd/Sa;->we(I)I

    move-result v9

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    invoke-virtual {v5, v8, v4}, Labcd/Sa;->Zo(II)I

    move-result v10

    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v11

    move/from16 v0, p2

    if-lt v11, v0, :cond_2

    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_3

    invoke-virtual {v5, v10}, Labcd/Sa;->Ws(I)I

    move-result v11

    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    :cond_2
    invoke-virtual {v5, v10}, Labcd/Sa;->QX(I)I

    move-result v6

    invoke-virtual {v5, v10}, Labcd/Sa;->Ws(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->v5:Labcd/Ba;

    invoke-virtual {v5}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Labcd/gd;->gn:Labcd/yd;

    invoke-virtual {v5, v8}, Labcd/Sa;->er(I)I

    move-result v8

    invoke-virtual {v5, v8}, Labcd/Sa;->J8(I)I

    move-result v8

    invoke-virtual {v4, v9, v10, v8}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;I)Labcd/ua;
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :try_start_2
    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v4

    invoke-interface {v4, v5}, Labcd/ga;->FH(Labcd/Sa;)V

    new-instance v15, Labcd/Yb;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->v5:Labcd/Ba;

    invoke-direct {v15, v4}, Labcd/Yb;-><init>(Labcd/Ba;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-string v8, "\n\n"

    const-string v4, ""

    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-boolean v9, v9, Labcd/va;->Hw:Z

    if-eqz v9, :cond_6

    invoke-virtual/range {p4 .. p4}, Labcd/Aa;->DW()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-lez v11, :cond_6

    const-string v4, "/**\n"

    :try_start_4
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, "\n"

    invoke-direct {v11, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " *"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*/"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v9}, Labcd/La;->Hw()Labcd/va;

    move-result-object v9

    iget-boolean v9, v9, Labcd/va;->v5:Z

    if-eqz v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    invoke-virtual {v4}, Labcd/La;->Hw()Labcd/va;

    move-result-object v4

    iget-boolean v4, v4, Labcd/va;->Zo:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Labcd/gd;->j6(Labcd/Ia;Z)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v10}, Labcd/ua;->Gj()Labcd/Ya;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    :try_start_5
    invoke-direct/range {v4 .. v10}, Labcd/gd;->j6(Labcd/Sa;IILabcd/Ya;Labcd/Ia;Labcd/ua;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v14

    :try_start_6
    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->XG()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->ca()Labcd/Ya;

    move-result-object v4

    invoke-virtual {v15, v4}, Labcd/Yb;->DW(Labcd/Aa;)V

    :cond_8
    invoke-virtual/range {p4 .. p4}, Labcd/Ia;->vJ()I

    move-result v8

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v8, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Labcd/Ia;->gn(I)Labcd/Ya;

    move-result-object v9

    invoke-virtual {v15, v9}, Labcd/Yb;->DW(Labcd/Aa;)V
    :try_end_6
    .catch Labcd/jc; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v4

    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v8, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v9, p1

    move v10, v6

    move v11, v7

    move v12, v6

    move v13, v7

    invoke-interface/range {v8 .. v14}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Labcd/gd;->j6(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v7}, Labcd/hb;->j6(Labcd/Da;II)V

    invoke-virtual {v5}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->u7()Labcd/qa;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    :try_start_8
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1, v15}, Labcd/qa;->j6(Labcd/Sa;IILabcd/Yb;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v5}, Labcd/Sa;->tp()I

    move-result v8

    invoke-virtual {v5}, Labcd/Sa;->u7()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v6, v4, Labcd/La;->gn:Labcd/hb;

    move-object/from16 v7, p1

    move v10, v8

    move v11, v9

    invoke-interface/range {v6 .. v12}, Labcd/hb;->j6(Labcd/Da;IIIILjava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->Hw:Labcd/Va;

    invoke-virtual {v4, v5}, Labcd/Va;->j6(Labcd/Sa;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/gd;->FH:Labcd/La;

    iget-object v4, v4, Labcd/La;->gn:Labcd/hb;

    invoke-interface {v4}, Labcd/hb;->EQ()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :goto_5
    sget-boolean v4, Labcd/gd;->DW:Z

    if-eqz v4, :cond_b

    const-wide v6, 0x6cb85cb2092a593L

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p4

    invoke-static/range {v5 .. v12}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    throw v5

    :catch_2
    move-exception v4

    :try_start_9
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_3
    move-exception v5

    goto :goto_5

    :cond_c
    move-object v4, v8

    goto/16 :goto_3
.end method
