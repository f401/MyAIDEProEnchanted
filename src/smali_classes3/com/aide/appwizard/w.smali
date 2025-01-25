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
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, 0x1a60189ff5a0036bL

    const-class v4, Lcom/aide/appwizard/w;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x126aa2846b1e7a58L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ea0b69fcfb8be00L
    .end annotation

    const-wide v0, -0xb7d06a7d9c1a6e5L  # -1.738862720843669E253

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26c3534bd49d27ddL
    .end annotation

    const-wide v0, 0x427fd460e8f98740L  # 2.1873137130484531E12

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment &quot;<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/appwizard/w;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b>&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-object v0

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x29d6cd0b276b5e50L
    .end annotation

    const-wide v0, 0x11fdeba5710a7e3L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v0, Lcom/aide/ui/Ma;->icon_goto:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xa6c1fe1c77ee557L
    .end annotation

    const-wide v0, -0x367606767aa57910L  # -1.853620432326109E46

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/w;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/w;->Hw:Lcom/aide/appwizard/B;

    iget-object v3, p0, Lcom/aide/appwizard/w;->FH:Lcom/aide/appwizard/runtime/i$c;

    invoke-static {v2, v3}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/runtime/i$c;

    iget-object v2, p0, Lcom/aide/appwizard/w;->Hw:Lcom/aide/appwizard/B;

    invoke-virtual {v2}, Lcom/aide/appwizard/B;->j6()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/w;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
