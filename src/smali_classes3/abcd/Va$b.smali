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
            "Ljava/util/Stack<",
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
            "Ljava/util/Stack<",
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
    .registers 3

    const-class v0, Labcd/Va$b;

    const-wide v1, -0x13c3953ad07e8948L  # -2.3916425124865144E213

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Va;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5acb2a7da908f8e0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x29c9476d4786c759L  # -2.0844222527133058E107

    :try_start_6
    sget-boolean v3, Labcd/Va$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Va$b;->v5:Labcd/Va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Va$b;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Va;Labcd/Ua;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Va$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1dda3c126ca8b0c0L  # 7.118324153236935E-165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Va$b;-><init>(Labcd/Va;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Va$b;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x1dda3c126ca8b0c0L  # 7.118324153236935E-165

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x36f3b1c327ccb36fL
    .end annotation

    const-wide v0, -0x261b1260ca19467fL  # -1.1067774831991909E125

    :try_start_5
    sget-boolean v2, Labcd/Va$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    iget-object v4, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    iget-object v5, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    iget-object v3, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->setSize(I)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Va$b;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x227732bddd2ba0d0L
    .end annotation

    const-wide v0, -0x2a50c713bd0d1400L  # -5.5944084475629343E104

    :try_start_5
    sget-boolean v2, Labcd/Va$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Va$b;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6()Labcd/Sa;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xd2171f1170e38e3L
    .end annotation

    const-wide v0, -0x2d27b0e498b4da6bL  # -1.2379582944345757E91

    :try_start_5
    sget-boolean v2, Labcd/Va$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Labcd/Sa;

    iget-object v3, p0, Labcd/Va$b;->v5:Labcd/Va;

    invoke-static {v3}, Labcd/Va;->j6(Labcd/Va;)Labcd/La;

    move-result-object v3

    invoke-direct {v2, v3}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v3, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_25
    iget-object v2, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    iget-object v3, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-object v2

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/Va$b;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public j6(Labcd/Sa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xa8f5cac92ecaf25L
    .end annotation

    const-wide v0, 0x66a9d633db60bcbL

    :try_start_5
    sget-boolean v2, Labcd/Va$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Labcd/Va$b;->Hw:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->removeElement(Ljava/lang/Object;)Z

    iget-object v2, p0, Labcd/Va$b;->FH:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Va$b;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method
