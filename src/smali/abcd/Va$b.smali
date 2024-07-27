.class Labcd/Va$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field private FH:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = -0xbede22a4e5d8c94L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = 0x2e3e5149064a3f51L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation
.end field

.field final v5:Labcd/Va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x13c3953ad07e8948L    # -2.3916425124865144E213

    const-class v0, Labcd/Va$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Va;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x5acb2a7da908f8e0L
    .end annotation

    const-wide v4, -0x29c9476d4786c759L    # -2.0844222527133058E107

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29c9476d4786c759L    # -2.0844222527133058E107

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Va$b;->v5:Labcd/Va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Va;Labcd/Ua;)V
    .registers 10

    const-wide v2, 0x1dda3c126ca8b0c0L    # 7.118324153236935E-165

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1dda3c126ca8b0c0L    # 7.118324153236935E-165

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Va$b;-><init>(Labcd/Va;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x36f3b1c327ccb36fL
    .end annotation

    const-wide v4, -0x261b1260ca19467fL    # -1.1067774831991909E125

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Va$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x261b1260ca19467fL    # -1.1067774831991909E125

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    iget-object v2, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x227732bddd2ba0d0L
    .end annotation

    const-wide v2, -0x2a50c713bd0d1400L    # -5.5944084475629343E104

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a50c713bd0d1400L    # -5.5944084475629343E104

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Labcd/Sa;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xd2171f1170e38e3L
    .end annotation

    const-wide v2, -0x2d27b0e498b4da6bL    # -1.2379582944345757E91

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d27b0e498b4da6bL    # -1.2379582944345757E91

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/Sa;

    iget-object v1, p0, Labcd/Va$b;->v5:Labcd/Va;

    invoke-static {v1}, Labcd/Va;->j6(Labcd/Va;)Labcd/La;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v1, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    iget-object v1, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Sa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xa8f5cac92ecaf25L
    .end annotation

    const-wide v2, 0x66a9d633db60bcbL

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x66a9d633db60bcbL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
