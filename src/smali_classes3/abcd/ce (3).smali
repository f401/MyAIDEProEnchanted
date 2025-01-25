.class public Labcd/ce;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ra;


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
        field = -0x1dafc04bdd9c0900L
    .end annotation
.end field

.field private final Hw:Labcd/Vd;
    .annotation runtime Labcd/ru;
        field = 0xe4b8823272c4a4bL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x361bd7a30f755e18L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x30032519a4ca8d9dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ce;

    const-wide v1, -0x3145747977522587L  # -1.832070056768988E71

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Vd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x28eee7574283f197L  # -2.5696925909105603E111

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ce;->FH:Labcd/La;

    iput-object p2, p0, Labcd/ce;->Hw:Labcd/Vd;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "JavaScript"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/ce;->v5:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "JavaScriptAPI"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/ce;->Zo:I
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x28eee7574283f197L  # -2.5696925909105603E111

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method


# virtual methods
.method public DW(Labcd/Da;Labcd/Ya;Labcd/Ya;)Labcd/Ya;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x293ac3cbe8cf57e0L  # -9.974340123990559E109

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Labcd/jc;

    invoke-direct {v0}, Labcd/jc;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x293ac3cbe8cf57e0L  # -9.974340123990559E109

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public DW(Labcd/Da;)Labcd/ua;
    .registers 6

    const-wide v0, 0x203f0b3c7ed8597L

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/jc;

    invoke-direct {v2}, Labcd/jc;-><init>()V

    throw v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW()Z
    .registers 5

    const-wide v0, 0x41d08e99e1588d0L

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, -0x29757da19e13d683L  # -7.782263589514456E108

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(Labcd/Da;Labcd/Ya;Labcd/Ya;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xbeee74678e1c9abL  # 3.37209778941931E-251

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    :cond_10
    const/4 p1, 0x0

    return p1

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, 0xbeee74678e1c9abL  # 3.37209778941931E-251

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, 0x664e1cbd45c3d731L  # 6.397506786351465E184

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(I)I
    .registers 6

    const-wide v0, -0x57390674d75d0419L

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Labcd/Na;I)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2b0394ec1d75794L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :catchall_13
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x2b0394ec1d75794L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public j6(Labcd/Da;ILabcd/Ya;Labcd/Ya;)Labcd/Ya;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_15

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x600f71ecf5648c81L  # -7.717041693044723E-155

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    new-instance v0, Labcd/jc;

    invoke-direct {v0}, Labcd/jc;-><init>()V

    throw v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x600f71ecf5648c81L  # -7.717041693044723E-155

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6(Labcd/Da;Labcd/Ya;)Labcd/Ya;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x292749ab6eef35bdL  # 1.936687469326383E-110

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-object p2

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x292749ab6eef35bdL  # 1.936687469326383E-110

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Labcd/Da;Labcd/sa;)Labcd/Yb;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Labcd/sa;",
            ")",
            "LYb<",
            "Labcd/Ya;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xad4ae96baff0ea8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_1f

    const-wide v2, 0xad4ae96baff0ea8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v0
.end method

.method public j6(Labcd/Da;)Labcd/ua;
    .registers 6

    const-wide v0, 0xdaad132e5c62c7dL

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/jc;

    invoke-direct {v2}, Labcd/jc;-><init>()V

    throw v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x17ed09f940cb4dL

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Labcd/Da;Labcd/Ya;Labcd/Ya;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/ce;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xe7c9cec41d068a4L  # 6.865727190020354E-239

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    :cond_10
    const/4 p1, 0x0

    return p1

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/ce;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, 0xe7c9cec41d068a4L  # 6.865727190020354E-239

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public v5()Labcd/Na;
    .registers 5

    const-wide v0, 0x5c22f513465d1218L  # 6.889459090718283E135

    :try_start_5
    sget-boolean v2, Labcd/ce;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ce;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->a8:Labcd/Ba;

    invoke-virtual {v2}, Labcd/Ba;->FH()Labcd/Na;

    move-result-object v2

    iget v3, p0, Labcd/ce;->v5:I

    invoke-virtual {v2, v3}, Labcd/Na;->j6(I)Labcd/Na;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/ce;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
