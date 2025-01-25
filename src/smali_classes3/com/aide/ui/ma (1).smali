.class Lcom/aide/ui/ma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->DW(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Landroid/app/ActionBar$Tab;

.field final Hw:Ljava/lang/String;

.field final v5:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, 0xf9d08d6bc50fbc0L

    const-class v4, Lcom/aide/ui/ma;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/ma;->v5:Lcom/aide/ui/MainActivity;

    iput-object p2, p0, Lcom/aide/ui/ma;->FH:Landroid/app/ActionBar$Tab;

    iput-object p3, p0, Lcom/aide/ui/ma;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16672de96bb2f1dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ma;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x357e1e29b94d2d5dL  # 5.031116096670473E-51

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/ma;->FH:Landroid/app/ActionBar$Tab;

    if-ne v0, p1, :cond_1b

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/aide/ui/ma;->v5:Lcom/aide/ui/MainActivity;

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Qq()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ma;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x357e1e29b94d2d5dL  # 5.031116096670473E-51

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4555a3e40a8bcc14L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ma;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x243255427cf16d90L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/ma;->FH:Landroid/app/ActionBar$Tab;

    if-ne v0, p1, :cond_29

    iget-object v0, p0, Lcom/aide/ui/ma;->Hw:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/ma;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Nk;->VH(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ma;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x243255427cf16d90L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xd93c652be21921L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ma;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x239dc44efc29d26bL  # 3.999397550075068E-137

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ma;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x239dc44efc29d26bL  # 3.999397550075068E-137

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method
