.class Labcd/uf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/vf;->run()V
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
.field final FH:Labcd/vf;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1298307f917b3980L  # 4.282812849239566E-219

    const-wide v2, 0xcf9c4264a0bdd0cL

    const-class v4, Labcd/uf;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/vf;)V
    .registers 2

    iput-object p1, p0, Labcd/uf;->FH:Labcd/vf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xb12e902239bc6adL
    .end annotation

    const-wide v0, -0x37438d157558c8fdL  # -2.478247955197775E42

    :try_start_5
    sget-boolean v2, Labcd/uf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2e

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/uf;->FH:Labcd/vf;

    iget-object v2, v2, Labcd/vf;->FH:Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/uf;->FH:Labcd/vf;

    iget-object v3, v3, Labcd/vf;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    new-instance v3, Labcd/sf;

    invoke-direct {v3, p0, v2}, Labcd/sf;-><init>(Labcd/uf;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_24
    .catchall {:try_start_c .. :try_end_23} :catchall_2e

    goto :goto_2d

    :catch_24
    move-exception v2

    :try_start_25
    new-instance v3, Labcd/tf;

    invoke-direct {v3, p0, v2}, Labcd/tf;-><init>(Labcd/uf;Ljava/io/IOException;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2e

    :goto_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/uf;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method
