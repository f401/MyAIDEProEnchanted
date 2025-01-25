.class Lcom/aide/ui/views/DialogMenu$b;
.super Lcom/aide/ui/views/DialogMenu;

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/DialogMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private VH:Lcom/aide/ui/views/DialogMenu$a;
    .annotation runtime Labcd/ru;
        field = 0x25af48e317b0e3a0L
    .end annotation
.end field

.field final gn:Lcom/aide/ui/views/DialogMenu;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/DialogMenu$b;

    const-wide v1, -0x41c5208c09ed5810L  # -6.25682603051618E-9

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/DialogMenu;Landroid/content/Context;Lcom/aide/ui/views/DialogMenu;Lcom/aide/ui/views/DialogMenu$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3ede009d9399cbf9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x6f25e10a84cf279L  # -1.282434540189868E275

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$b;->gn:Lcom/aide/ui/views/DialogMenu;

    invoke-direct {p0, p2}, Lcom/aide/ui/views/DialogMenu;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/aide/ui/views/DialogMenu$b;->VH:Lcom/aide/ui/views/DialogMenu$a;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x6f25e10a84cf279L  # -1.282434540189868E275

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method


# virtual methods
.method public clearHeader()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1cbb123e38cc6200L
    .end annotation

    const-wide v0, -0x355d1203dbac9c99L  # -3.541207454316722E51

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1be54bf0fbf4a463L
    .end annotation

    const-wide v0, 0xa988ad9be81ffacL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$b;->VH:Lcom/aide/ui/views/DialogMenu$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x265d648baafd3099L
    .end annotation

    const-wide v0, -0x29619b3881e33ae4L  # -1.7845206482647936E109

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3430ef5093e1a888L
    .end annotation

    const-wide v0, -0x365116ca66f11d43L  # -8.823523289505791E46

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a0afcccf69f5e80L
    .end annotation

    const-wide v0, -0xe142bbd424590efL  # -5.798910305342438E240

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xbf5e42452e1cbf0L
    .end annotation

    const-wide v0, -0x2a376d53c6a51c65L  # -1.7611876521188544E105

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x37ebd7994956f53L
    .end annotation

    const-wide v0, -0xd5eedaddcb8f5a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x63047aac82f9ec8L
    .end annotation

    const-wide v0, 0x9b9e723aed38c89L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2f379aae41a78efL
    .end annotation

    const-wide v0, 0x6d388c27f48aa80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/DialogMenu$b;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/DialogMenu$b;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
