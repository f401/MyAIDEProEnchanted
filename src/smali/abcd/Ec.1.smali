.class public Labcd/Ec;
.super Labcd/Ed;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static QX:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Ws:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private Mr:Labcd/_b;
    .annotation runtime Labcd/ru;
        field = -0x271ca80080f89d1bL
    .end annotation
.end field

.field private U2:Labcd/Cb;
    .annotation runtime Labcd/ru;
        field = 0x22b08330c964d377L
    .end annotation
.end field

.field private final XL:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x226ba339af7edf60L
    .end annotation
.end field

.field private final aM:Labcd/Hd;
    .annotation runtime Labcd/ru;
        field = -0x2ae26ea403bcef0L
    .end annotation
.end field

.field private final j3:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = -0x20d9586e5bc769e9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x7214941b53537a0L

    const-class v0, Labcd/Ec;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Bc;)V
    .registers 10

    const-wide v2, 0x263f1ad8bccf377L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ec;->Ws:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x263f1ad8bccf377L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Labcd/Ed;-><init>(Labcd/La;Labcd/yd;)V

    iput-object p1, p0, Labcd/Ec;->XL:Labcd/La;

    iput-object p2, p0, Labcd/Ec;->j3:Labcd/yd;

    invoke-virtual {p2}, Labcd/yd;->FH()Labcd/Hd;

    move-result-object v0

    iput-object v0, p0, Labcd/Ec;->aM:Labcd/Hd;

    new-instance v0, Labcd/_b;

    iget-object v1, p1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v0, v1}, Labcd/_b;-><init>(Labcd/Ea;)V

    iput-object v0, p0, Labcd/Ec;->Mr:Labcd/_b;

    new-instance v0, Labcd/Cb;

    invoke-direct {v0}, Labcd/Cb;-><init>()V

    iput-object v0, p0, Labcd/Ec;->U2:Labcd/Cb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ec;->QX:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW(Labcd/Sa;)J
    .registers 6

    const-wide v2, 0x507139a745e54ecfL    # 3.1912686324257036E79

    :try_start_0
    sget-boolean v0, Labcd/Ec;->Ws:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x507139a745e54ecfL    # 3.1912686324257036E79

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ec;->QX:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x1db92f2f452fff1dL    # -2.627732475189139E165

    :try_start_0
    sget-boolean v0, Labcd/Ec;->Ws:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1db92f2f452fff1dL    # -2.627732475189139E165

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ec;->QX:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Da;)V
    .registers 12

    const-wide v8, -0x3c03fd0a8afc94f0L    # -3.2295127454923686E19

    :try_start_0
    sget-boolean v0, Labcd/Ec;->Ws:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3c03fd0a8afc94f0L    # -3.2295127454923686E19

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->er()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->Ws()Labcd/Da;

    move-result-object v1

    iget-object v2, p0, Labcd/Ec;->U2:Labcd/Cb;

    invoke-virtual {v2}, Labcd/Cb;->j6()V

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Labcd/Ec;->U2:Labcd/Cb;

    invoke-virtual {v0}, Labcd/Da;->u7()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Cb;->j6(I)V

    invoke-virtual {v0}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Ec;->aM:Labcd/Hd;

    invoke-virtual {v0}, Labcd/Hd;->u7()Labcd/Na;

    move-result-object v3

    iget-object v0, p0, Labcd/Ec;->U2:Labcd/Cb;

    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Labcd/Ec;->U2:Labcd/Cb;

    invoke-virtual {v1, v0}, Labcd/Cb;->DW(I)I

    move-result v1

    invoke-virtual {v3, v1}, Labcd/Na;->j6(I)Labcd/Na;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/Ec;->XL:Labcd/La;

    iget-object v0, v0, Labcd/La;->a8:Labcd/Ba;

    iget-object v2, p0, Labcd/Ec;->j3:Labcd/yd;

    invoke-virtual {p1}, Labcd/Da;->J8()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;Labcd/Na;IZI)V

    :goto_2
    return-void

    :cond_3
    invoke-super {p0, p1}, Labcd/Ed;->Hw(Labcd/Da;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ec;->QX:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public v5(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x16409ef493a7cbf0L    # -2.401913344254679E201

    :try_start_0
    sget-boolean v0, Labcd/Ec;->Ws:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16409ef493a7cbf0L    # -2.401913344254679E201

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ec;->QX:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
