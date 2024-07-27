.class final Lcom/aide/uidesigner/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/L;->FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/v;

    const-wide v2, -0x1dd98fa673d10c90L    # -6.460833633665477E164

    const-wide v4, 0x1672c7d41f0d478bL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/v;->Hw:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x13f468d2694bf31dL
    .end annotation

    const-wide v2, -0x6a9d332beb05af68L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6a9d332beb05af68L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x34e224313b44fbe0L
    .end annotation

    const-wide v2, -0x1c84f765f22fa771L    # -1.6323806905951264E171

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c84f765f22fa771L    # -1.6323806905951264E171

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x194d0169f37ac671L
    .end annotation

    const-wide v2, 0x5c29bade014e247cL    # 9.350762027623313E135

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5c29bade014e247cL    # 9.350762027623313E135

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Style"

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Style = <b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v1}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x22780de6f3714bc0L
    .end annotation

    const-wide v2, -0xfd516ccb0bb50afL    # -2.088985997344401E232

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfd516ccb0bb50afL    # -2.088985997344401E232

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1170cb7092107f6bL
    .end annotation

    const-wide v2, 0x257e663226f7aac8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x257e663226f7aac8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/v;->Hw:Landroid/app/Activity;

    iget-object v1, p0, Lcom/aide/uidesigner/v;->FH:Lcom/aide/uidesigner/s;

    invoke-static {v0, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
