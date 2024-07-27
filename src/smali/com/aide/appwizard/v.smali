.class Lcom/aide/appwizard/v;
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

    const-class v0, Lcom/aide/appwizard/v;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, 0x1a5ff2b86f9911c0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/v;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/v;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x197b84806b1e238cL
    .end annotation

    const-wide v2, 0x4a6a2704139d0abL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a6a2704139d0abL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x640752155702307L
    .end annotation

    const-wide v2, 0x3800bdabb1722548L    # 6.14963582708137E-39

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3800bdabb1722548L    # 6.14963582708137E-39

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2eb7183c30f40640L
    .end annotation

    const-wide v4, 0x21d2dac2e26c1fffL    # 9.437087048836253E-146

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21d2dac2e26c1fffL    # 9.437087048836253E-146

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/v;->Hw:Lcom/aide/appwizard/B;

    const-string v1, "Layout"

    iget-object v2, p0, Lcom/aide/appwizard/v;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$c;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1548a6e458a7a811L
    .end annotation

    const-wide v2, 0x625bfc1b6ea698c8L    # 6.446140102974622E165

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x625bfc1b6ea698c8L    # 6.446140102974622E165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_manage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd692a10aaa6fa58L
    .end annotation

    const-wide v2, -0xd88be4a023f4e93L    # -2.4812143894869998E243

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/v;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd88be4a023f4e93L    # -2.4812143894869998E243

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/v;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
