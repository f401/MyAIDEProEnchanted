.class public Lcom/aide/ui/views/DialogMenu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/views/DialogMenu$a;,
        Lcom/aide/ui/views/DialogMenu$b;
    }
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xd30b42a8677e890L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/views/DialogMenu$a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0xe83f8ee10a1560bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/DialogMenu;

    const-wide v1, -0x26fd5e33ba482bb5L  # -6.014067454101762E120

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x6b00188cbc3295L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v0, 0x4b85a706f059d4fdL  # 6.636456500981053E55

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/DialogMenu$a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;I)V

    iget-object v3, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6b242f050df6d94L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v0, Lcom/aide/ui/views/DialogMenu$a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;IIII)V

    iget-object v1, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-object v0

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x6b242f050df6d94L

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

    :cond_55
    throw v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9f1d0dc30d46628L

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Lcom/aide/ui/views/DialogMenu$a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;IIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-object v0

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x9f1d0dc30d46628L

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

    :cond_4d
    throw v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    const-wide v0, 0x1e00e0178a06262fL  # 3.663071510339114E-164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/DialogMenu$a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 12

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const/4 p1, 0x7

    aput-object p8, v0, p1

    const-wide p1, -0x3499cdaa2fed1b20L  # -1.70081120414323E55

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3c
    return v1
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 7

    const-wide v0, -0x6435af48b2733f0L  # -2.538869515152123E278

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/DialogMenu$a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;I)V

    iget-object v3, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/ui/views/DialogMenu$b;

    iget-object v4, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p0, v2}, Lcom/aide/ui/views/DialogMenu$b;-><init>(Lcom/aide/ui/views/DialogMenu;Landroid/content/Context;Lcom/aide/ui/views/DialogMenu;Lcom/aide/ui/views/DialogMenu$a;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/DialogMenu$a;->j6(Landroid/view/SubMenu;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v3

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1dd8f4ca10644f77L  # -6.635010084593093E164

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v0, Lcom/aide/ui/views/DialogMenu$a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;IIII)V

    iget-object v1, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/ui/views/DialogMenu$b;

    iget-object v2, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p0, v0}, Lcom/aide/ui/views/DialogMenu$b;-><init>(Lcom/aide/ui/views/DialogMenu;Landroid/content/Context;Lcom/aide/ui/views/DialogMenu;Lcom/aide/ui/views/DialogMenu$a;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/DialogMenu$a;->j6(Landroid/view/SubMenu;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-object v1

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x1dd8f4ca10644f77L  # -6.635010084593093E164

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

    :cond_5f
    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2225b2f48e843d27L  # 3.475463156214749E-144

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Lcom/aide/ui/views/DialogMenu$a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;IIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/ui/views/DialogMenu$b;

    iget-object v2, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p0, v0}, Lcom/aide/ui/views/DialogMenu$b;-><init>(Lcom/aide/ui/views/DialogMenu;Landroid/content/Context;Lcom/aide/ui/views/DialogMenu;Lcom/aide/ui/views/DialogMenu$a;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/DialogMenu$a;->j6(Landroid/view/SubMenu;)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    return-object v1

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x2225b2f48e843d27L  # 3.475463156214749E-144

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

    :cond_57
    throw v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 7

    const-wide v0, -0x12a00c191d041384L  # -7.04960850503356E218

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/DialogMenu$a;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/views/DialogMenu$a;-><init>(Lcom/aide/ui/views/DialogMenu;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/ui/views/DialogMenu$b;

    iget-object v4, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p0, v2}, Lcom/aide/ui/views/DialogMenu$b;-><init>(Lcom/aide/ui/views/DialogMenu;Landroid/content/Context;Lcom/aide/ui/views/DialogMenu;Lcom/aide/ui/views/DialogMenu$a;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/DialogMenu$a;->j6(Landroid/view/SubMenu;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v3

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public clear()V
    .registers 5

    const-wide v0, -0xf388a29fb84e300L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public close()V
    .registers 5

    const-wide v0, -0xf412d0a48a25d67L  # -1.2250857900434792E235

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v0, -0x2486fb13dc0744L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v0, 0x7869db9b010a91fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public hasVisibleItems()Z
    .registers 5

    const-wide v0, 0x33596fab0f05d0c3L  # 2.473279460472566E-61

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x32243cacad4532f8L  # -1.1695136469523254E67

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x32243cacad4532f8L  # -1.1695136469523254E67

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public j6()Landroid/content/Context;
    .registers 5

    const-wide v0, 0x19781fd0665f720cL  # 5.544430386797165E-186

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu;->Hw:Landroid/content/Context;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public performIdentifierAction(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x4c6e856f97e50ae7L  # -2.719265691858795E-60

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x4c6e856f97e50ae7L  # -2.719265691858795E-60

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5696c5db710f581L

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1a

    :cond_18
    const/4 p1, 0x0

    return p1

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x5696c5db710f581L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public removeGroup(I)V
    .registers 6

    const-wide v0, -0x1072a0e3ff55bd73L  # -2.22655360382667E229

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public removeItem(I)V
    .registers 6

    const-wide v0, -0x150593f2696df899L  # -2.1207236313598934E207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setGroupCheckable(IZZ)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x38792826d71a3007L  # -3.79547053187339E36

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x38792826d71a3007L  # -3.79547053187339E36

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x196930f35a508a1L  # -8.513654618385998E300

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x196930f35a508a1L  # -8.513654618385998E300

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public setGroupVisible(IZ)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x21e88e5ae50ee870L  # 2.458165076414534E-145

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x21e88e5ae50ee870L  # 2.458165076414534E-145

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public setQwertyMode(Z)V
    .registers 6

    const-wide v0, 0x5b9b8ba3cef24d7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public size()I
    .registers 5

    const-wide v0, 0x152317f057eadba8L  # 7.433935446533941E-207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/DialogMenu;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
