.class Lcom/aide/appwizard/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ua$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$b;)Ljava/util/List;
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

    const-class v0, Lcom/aide/appwizard/w;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, 0x1a60189ff5a0036bL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/w;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/w;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x101c896395064191L
    .end annotation

    const-wide v2, 0x126aa2846b1e7a58L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x126aa2846b1e7a58L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ea0b69fcfb8be00L
    .end annotation

    const-wide v2, -0xb7d06a7d9c1a6e5L    # -1.738862720843669E253

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb7d06a7d9c1a6e5L    # -1.738862720843669E253

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26c3534bd49d27ddL
    .end annotation

    const-wide v2, 0x427fd460e8f98740L    # 2.1873137130484531E12

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x427fd460e8f98740L    # 2.1873137130484531E12

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment &quot;<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/appwizard/w;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v1}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x29d6cd0b276b5e50L
    .end annotation

    const-wide v2, 0x11fdeba5710a7e3L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11fdeba5710a7e3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/aide/ui/Ma;->icon_goto:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xa6c1fe1c77ee557L
    .end annotation

    const-wide v2, -0x367606767aa57910L    # -1.853620432326109E46

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x367606767aa57910L    # -1.853620432326109E46

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/w;->Hw:Lcom/aide/appwizard/B;

    iget-object v1, p0, Lcom/aide/appwizard/w;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-static {v0, v1}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/runtime/i$c;

    iget-object v0, p0, Lcom/aide/appwizard/w;->Hw:Lcom/aide/appwizard/B;

    invoke-virtual {v0}, Lcom/aide/appwizard/B;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
