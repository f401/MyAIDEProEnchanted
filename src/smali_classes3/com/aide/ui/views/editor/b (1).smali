.class public abstract Lcom/aide/ui/views/editor/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/o;


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
.field private FH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x2d9d9557388dad77L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/aide/ui/views/editor/p;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = -0x483eefa323810c23L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/aide/ui/views/editor/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/b;

    const-wide v1, 0x15bd706248986997L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x258c7e96a03cb54cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1aef38a642cd43d8L  # -6.799172955607722E178

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method


# virtual methods
.method public DW(IIIIZ)Ljava/io/Reader;
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x4f082a5452de4a60L  # -8.43120893763215E-73

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    new-instance v0, Lcom/aide/ui/views/editor/ua;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/views/editor/ua;-><init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_61

    const-wide v2, -0x4f082a5452de4a60L  # -8.43120893763215E-73

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method public DW(Labcd/hm;Ljava/lang/String;)Ljava/io/Reader;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3ec295e29879bbd0L  # -1927709.404392492

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;ZLjava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x3ec295e29879bbd0L  # -1927709.404392492

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method protected DW(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x24e70f79a0de67e3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xf0dfda941760075L  # -1.145221514933862E236

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aide/ui/views/editor/p;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/aide/ui/views/editor/p;->j6(Lcom/aide/ui/views/editor/o;IIII)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, -0xf0dfda941760075L  # -1.145221514933862E236

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public DW(Lcom/aide/ui/views/editor/p;)V
    .registers 6

    const-wide v0, 0x2ec22a1b4dcbc04cL  # 1.870054047500671E-83

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(Lcom/aide/ui/views/editor/r;)V
    .registers 6

    const-wide v0, -0x7afd7dd35cc2dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method protected FH(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x61e747a81b738b7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x456fa78713947c5L  # -4.762565353738577E287

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aide/ui/views/editor/p;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/aide/ui/views/editor/p;->DW(Lcom/aide/ui/views/editor/o;IIII)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x456fa78713947c5L  # -4.762565353738577E287

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method protected J0(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x387b22139ce42f55L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2374d3c7044e129L  # 5.56713781679678E-298

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/r;

    invoke-interface {v1, p0, p1, p2}, Lcom/aide/ui/views/editor/r;->j6(Lcom/aide/ui/views/editor/o;II)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x2374d3c7044e129L  # 5.56713781679678E-298

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method protected QX()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x420190212cc6f4bL
    .end annotation

    const-wide v0, 0x13c40a519ed8c7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/r;

    invoke-interface {v3, p0}, Lcom/aide/ui/views/editor/r;->DW(Lcom/aide/ui/views/editor/o;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method protected XL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x99f300ce0a602e5L
    .end annotation

    const-wide v0, 0x51e1a6f0698c5039L  # 2.7433757612190133E86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/p;

    invoke-interface {v3, p0}, Lcom/aide/ui/views/editor/p;->j6(Lcom/aide/ui/views/editor/o;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public aM()Ljava/io/Reader;
    .registers 5

    const-wide v0, 0x4cd96885e8694fb0L  # 1.6331821239221162E62

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/b;->j6(Z)Ljava/io/Reader;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(IIIIZLjava/lang/String;)Ljava/io/Reader;
    .registers 18

    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    move v4, p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    move v5, p2

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    move v6, p3

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    move v7, p4

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    move/from16 v8, p5

    invoke-direct {v1, v8}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, 0x6411cc449c131623L  # 1.1004917922547533E174

    move-object v10, p0

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_49

    :cond_42
    move-object v10, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    :goto_49
    new-instance v0, Lcom/aide/ui/views/editor/q;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/aide/ui/views/editor/q;-><init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V

    return-object v0
.end method

.method public j6(Labcd/hm;)Ljava/io/Reader;
    .registers 6

    const-wide v0, 0x2fe1e017151f66b1L  # 4.824204833663535E-78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Z)Ljava/io/Reader;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Labcd/hm;Ljava/lang/String;)Ljava/io/Reader;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x105728c62e8fe3fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/ui/views/editor/ua;

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v3

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v4

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v5

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/views/editor/ua;-><init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-object v0

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x105728c62e8fe3fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public j6(Labcd/hm;Z)Ljava/io/Reader;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1a28f6b6ca4fe064L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v2

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v3

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v4

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/editor/b;->DW(IIIIZ)Ljava/io/Reader;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x1a28f6b6ca4fe064L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public j6(Labcd/hm;ZLjava/lang/String;)Ljava/io/Reader;
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1fd5a921cf9f3419L

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Lcom/aide/ui/views/editor/q;

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v3

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v4

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v5

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/views/editor/q;-><init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-object v0

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x1fd5a921cf9f3419L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public j6(Z)Ljava/io/Reader;
    .registers 11

    const-wide v0, 0x48db22059e2cdeddL  # 9.454435152263217E42

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v3, p0

    move v8, p1

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/views/editor/o;->j6(IIIIZ)Ljava/io/Reader;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method protected j6(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2297f9734ed15efL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xae3fe55e905fe55L  # 3.32891334815883E-256

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aide/ui/views/editor/r;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/aide/ui/views/editor/r;->FH(Lcom/aide/ui/views/editor/o;IIII)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0xae3fe55e905fe55L  # 3.32891334815883E-256

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method protected j6(III[C)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x24bd5cfa8a571575L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xf8b4eca1053a6f3L  # -5.140009645267669E233

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aide/ui/views/editor/p;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/aide/ui/views/editor/p;->j6(Lcom/aide/ui/views/editor/o;III[C)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0xf8b4eca1053a6f3L  # -5.140009645267669E233

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method protected j6(Labcd/hm;Labcd/hm;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1a2ad24892af2990L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x153f3f3c320c8dc4L  # -1.680812688193312E206

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/r;

    invoke-interface {v1, p0, p1, p2}, Lcom/aide/ui/views/editor/r;->j6(Lcom/aide/ui/views/editor/o;Labcd/hm;Labcd/hm;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0x153f3f3c320c8dc4L  # -1.680812688193312E206

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v0

    :goto_37
    goto :goto_36
.end method

.method public j6(Lcom/aide/ui/views/editor/p;)V
    .registers 6

    const-wide v0, 0x1e27dcfc8c9be6bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->FH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/r;)V
    .registers 6

    const-wide v0, -0x257e6032e5289d50L  # -9.544169942989418E127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/b;->Hw:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/b;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method
