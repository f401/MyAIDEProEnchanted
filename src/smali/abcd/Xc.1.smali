.class public Labcd/Xc;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/na;


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
        field = -0x3f25fcb6a997580L
    .end annotation
.end field

.field private Hw:Labcd/ad;
    .annotation runtime Labcd/ru;
        field = -0x5857be2179bfb4cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2b8f5ae8ea9bd5f0L

    const-class v0, Labcd/Xc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, 0x5bdc05fb1839ad4L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5bdc05fb1839ad4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Xc;->FH:Labcd/La;

    new-instance v0, Labcd/ad;

    invoke-direct {v0}, Labcd/ad;-><init>()V

    iput-object v0, p0, Labcd/Xc;->Hw:Labcd/ad;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x13bd0d4128ec4fa8L

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13bd0d4128ec4fa8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v2, -0xc3665127d927e0cL    # -5.728941242621862E249

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc3665127d927e0cL    # -5.728941242621862E249

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v2, -0x1bc564f9c81bdcc0L    # -6.580364735041985E174

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bc564f9c81bdcc0L    # -6.580364735041985E174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v2, -0x175413fe996aea5L    # -3.582203087244736E301

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x175413fe996aea5L    # -3.582203087244736E301

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Labcd/ha;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x84ccb3bbb5e7147L    # 1.09006921289587E-268

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x84ccb3bbb5e7147L    # 1.09006921289587E-268

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v2, -0x1656ec74a5672288L    # -9.59735067257249E200

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1656ec74a5672288L    # -9.59735067257249E200

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x22c4aa738d1b04a3L    # -1.3020388654288039E141

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22c4aa738d1b04a3L    # -1.3020388654288039E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "DTD"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(C)Z
    .registers 8

    const-wide v4, 0x18287e3dfd149b80L

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x18287e3dfd149b80L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v2, 0x396a41b6149200L    # 1.4137599282799916E-307

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x396a41b6149200L    # 1.4137599282799916E-307

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Labcd/ad;
    .registers 5

    const-wide v2, -0x71e50348dd40408L

    :try_start_0
    sget-boolean v0, Labcd/Xc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x71e50348dd40408L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Xc;->Hw:Labcd/ad;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic v5()Labcd/pa;
    .registers 2

    invoke-virtual {p0}, Labcd/Xc;->v5()Labcd/ad;

    move-result-object v0

    return-object v0
.end method
