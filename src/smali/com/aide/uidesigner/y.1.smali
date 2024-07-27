.class final Lcom/aide/uidesigner/y;
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
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/uidesigner/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/y;

    const-wide v2, -0x1dd98fa673d10c90L    # -6.460833633665477E164

    const-wide v4, 0x3019340e0a377effL    # 5.441507143972547E-77

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/y;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/uidesigner/y;->Hw:Lcom/aide/uidesigner/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1373fe3afd325330L
    .end annotation

    const-wide v2, -0x1df1dbb6f5c15308L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/y;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1df1dbb6f5c15308L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/y;->FH:Landroid/app/Activity;

    instance-of v0, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/y;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xca3f6c3a86f18b5L
    .end annotation

    const-wide v2, -0x1496d558031d752bL    # -2.5855443719432278E209

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/y;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1496d558031d752bL    # -2.5855443719432278E209

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/y;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2dc875ffc50f3508L
    .end annotation

    const-wide v2, -0x1a5a3767bbcfa8a4L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/y;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a5a3767bbcfa8a4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0d06b8

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/y;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x26fb6d01c34263a7L
    .end annotation

    const-wide v2, -0x409949b87cda62dL    # -1.365531780960945E289

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/y;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x409949b87cda62dL    # -1.365531780960945E289

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_goto:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/y;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x69e43f86a73320L
    .end annotation

    const-wide v2, -0x3d251d16f76d6880L    # -1.18247498336862E14

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/y;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d251d16f76d6880L    # -1.18247498336862E14

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/y;->FH:Landroid/app/Activity;

    instance-of v0, v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/uidesigner/y;->Hw:Lcom/aide/uidesigner/s;

    iget-object v0, p0, Lcom/aide/uidesigner/y;->FH:Landroid/app/Activity;

    check-cast v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-virtual {v1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/y;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
