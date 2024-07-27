.class Lcom/aide/appwizard/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$c;)Ljava/util/List;
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
.field final FH:Lcom/aide/appwizard/runtime/i$c;

.field final Hw:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/appwizard/t;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, 0x1a5fa6e964452f24L    # 1.191855947135892E-181

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/t;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/t;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xb8e0c06f897fb04L
    .end annotation

    const-wide v2, 0x49fc2360f045df8L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/t;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x49fc2360f045df8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/t;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1f9b1481745d71a1L
    .end annotation

    const-wide v2, 0x37f4f0dd0be8b0a3L    # 3.84623090591201E-39

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/t;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37f4f0dd0be8b0a3L    # 3.84623090591201E-39

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/t;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x11dc61767d6666e0L
    .end annotation

    const-wide v2, 0x21ca38d4563de370L    # 6.562325363556057E-146

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/t;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21ca38d4563de370L    # 6.562325363556057E-146

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "Delete"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/t;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xf491d1a079719b9L
    .end annotation

    const-wide v2, 0x624e757c7d07e5d7L    # 3.5080218600537456E165

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/t;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x624e757c7d07e5d7L    # 3.5080218600537456E165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_delete:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/t;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1970eb8c6a7fa0a8L
    .end annotation

    const-wide v2, -0xd8c13f583ac8ec0L    # -2.125446670415447E243

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/t;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd8c13f583ac8ec0L    # -2.125446670415447E243

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/t;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$c;->j6()V

    iget-object v0, p0, Lcom/aide/appwizard/t;->Hw:Lcom/aide/appwizard/B;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/runtime/i$c;

    iget-object v0, p0, Lcom/aide/appwizard/t;->Hw:Lcom/aide/appwizard/B;

    invoke-virtual {v0}, Lcom/aide/appwizard/B;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/t;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
